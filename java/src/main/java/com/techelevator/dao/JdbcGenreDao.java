package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import com.techelevator.model.Genre;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcGenreDao implements GenreDao {

    private JdbcTemplate template;

    public JdbcGenreDao(DataSource ds) {
        template = new JdbcTemplate(ds);
    }

    @Override
    public List<Genre> getAllGenres() {

        List<Genre> genres = new ArrayList<>();
        String sql = "SELECT * FROM genres";

        try {
            SqlRowSet results = template.queryForRowSet(sql);
            while (results.next()) {
                genres.add(mapRowToGenre(results));
            }
        } catch (CannotGetJdbcConnectionException e) {
            System.out.println("Problem connecting");
        } catch (DataIntegrityViolationException e) {
            System.out.println("Data problems");
        }

        return genres;
    }

    @Override
    public Genre getGenreByName(String genreName) {

        Genre genre = new Genre();
        String sql = "SELECT * FROM genres WHERE genre_name = ?;";

        try {
            SqlRowSet results = template.queryForRowSet(sql, genreName);
            if (results.next()) {
                genre = mapRowToGenre(results);
            } else {
                throw new DaoException("Could not find genre.");
            }

        } catch (CannotGetJdbcConnectionException e) {
            System.out.println("Problem connecting");
        } catch (DataIntegrityViolationException e) {
            System.out.println("Data problems");
        }


        return genre;
    }

    private Genre mapRowToGenre(SqlRowSet rowSet) {
        Genre genre = new Genre();
        genre.setGenreId(rowSet.getLong("genre_id"));
        genre.setGenreName(rowSet.getString("genre_name"));
        return genre;
    }

}