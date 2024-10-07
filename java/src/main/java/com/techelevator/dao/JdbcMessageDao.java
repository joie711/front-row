package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import com.techelevator.model.BandGenreDto;
import com.techelevator.model.Message;
import com.techelevator.model.MessageBandDto;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.security.Principal;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcMessageDao implements MessageDao {

    private JdbcTemplate template;

    public JdbcMessageDao(DataSource ds) {
        template = new JdbcTemplate(ds);
    }

    @Override
    public List<MessageBandDto> getInboxMessages(Principal principal) {
        List<MessageBandDto> messages = new ArrayList<>();
        String sql = "SELECT m.message_id, message_content, message_time_sent, message_time_expiration, message_sender, mu.is_read " +
                "FROM messages m " +
                "JOIN user_band ub ON ub.band_id = m.message_sender " +
                "JOIN message_user mu ON m.message_id = mu.message_id " +
                "WHERE ub.user_id = ? " +
                "ORDER BY message_time_sent DESC;";

        long principalId = getUserIdByUsername(principal.getName());

        try {
            SqlRowSet results = template.queryForRowSet(sql, principalId);
            while (results.next()) {
                MessageBandDto messageBandDto = mapRowToMessageBandDto(results);
                messageBandDto.setBandName(getBandNameByMessageSender(messageBandDto.getMessage().getMessageSender()));
                messageBandDto.setIsRead(results.getBoolean("is_read"));
                messages.add(messageBandDto);
            }

        } catch (CannotGetJdbcConnectionException e) {
            System.out.println("Problem connecting");
        } catch (DataIntegrityViolationException e) {
            System.out.println("Data problems");
        }
        return messages;
    }

    @Override
    public Message sendMessage(Message message) {
        return null;
    }

    public void markMessageAsRead(long messageId, Principal principal) {
        String sql = "UPDATE message_user " +
                "SET is_read = TRUE " +
                "WHERE user_id = ? AND message_id = ?";

        long principalId = getUserIdByUsername(principal.getName());

        try {
            int rowsAffected = template.update(sql, principalId, messageId);
            if (rowsAffected == 0) {
                throw new DaoException("No messages affected.");
            }
        } catch (CannotGetJdbcConnectionException e) {
            System.out.println("Problem connecting");
        } catch (DataIntegrityViolationException e) {
            System.out.println("Data problems");
        }

    }

    public boolean getIsReadByMessageIdAndUserId(Principal principal, long messageId) {
        String sql = "SELECT is_read FROM message_user " +
                "WHERE user_id = ? AND message_id = ?";

        long principalId = getUserIdByUsername(principal.getName());

        boolean isRead = false;

        try {
            isRead = template.queryForObject(sql, new Object[]{principalId, messageId}, Boolean.class);
        } catch (CannotGetJdbcConnectionException e) {
            System.out.println("Problem connecting");
        } catch (DataIntegrityViolationException e) {
            System.out.println("Data problems");
        }

        return isRead;

    }

    // Private methods
    private long getUserIdByUsername(String username) {
        String sql = "SELECT user_id FROM users WHERE username = ?;";
        long userId = -1;

        try {
            userId = template.queryForObject(sql, new Object[]{username}, Long.class);
        } catch (CannotGetJdbcConnectionException e) {
            System.out.println("Problem connecting");
        } catch (DataIntegrityViolationException e) {
            System.out.println("Data problems");
        }

        return userId;
    }
    private Message mapRowToMessage(SqlRowSet rowSet) {
        Message message = new Message();
        message.setMessageId(rowSet.getLong("message_id"));
        message.setMessageContent(rowSet.getString("message_content"));

        Timestamp timeSent = rowSet.getTimestamp("message_time_sent");
        if (timeSent != null) {
            message.setMessageTimeSent(timeSent.toLocalDateTime());
        }

        Timestamp timeExpiration = rowSet.getTimestamp("message_time_expiration");
        if (timeExpiration != null) {
            message.setMessageTimeExpiration(timeExpiration.toLocalDateTime());
        }

        message.setMessageSender(rowSet.getLong("message_sender"));
        return message;
    }

    private MessageBandDto mapRowToMessageBandDto(SqlRowSet rowSet) {
        MessageBandDto messageBandDto = new MessageBandDto();

        messageBandDto.setMessage(mapRowToMessage(rowSet));

        return messageBandDto;

    }

    private String getBandNameByMessageSender(long messageSender) {
        String sql = "SELECT band_name FROM bands WHERE band_id = ?;";

        String bandName = template.queryForObject(sql, new Object[]{messageSender}, String.class);

        return bandName;

    }

}
