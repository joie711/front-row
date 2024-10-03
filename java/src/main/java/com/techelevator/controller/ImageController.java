package com.techelevator.controller;

import com.techelevator.dao.ImageDao;
import com.techelevator.model.Image;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.parameters.P;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

@RestController
@CrossOrigin
public class ImageController {

    @Autowired
    private ImageDao imageDao;

    @PreAuthorize("isAuthenticated")
    @GetMapping("/{bandName}/gallery")
    public List<Image> getImagesForGallery(@PathVariable String bandName) {
        return imageDao.getGallery(bandName);
    }

    @ResponseStatus(HttpStatus.ACCEPTED)
    @PostMapping("/band/gallery-upload")
    public void uploadImageToGallery(@RequestBody String url, Principal principal){
        imageDao.uploadImage(url, principal);
    }
}