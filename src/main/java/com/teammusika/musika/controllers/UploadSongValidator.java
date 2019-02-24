package com.teammusika.musika.controllers;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.teammusika.musika.domains.Song;

@Component
public class UploadSongValidator implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
		return Song.class.isAssignableFrom(clazz);
	}
	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"songTitle","validationError.songTitle","Song name cannot be empty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"songArtists","validationError.songArtists","Artists cannot be empty");
	}
}
