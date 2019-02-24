package com.teammusika.musika.controllers;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.teammusika.musika.domains.Artist;

@Component
public class AddArtistValidator implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
		return Artist.class.isAssignableFrom(clazz);
	}
	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"artistFullName","validationError.artistFullName","Artist name cannot be empty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"artistEmail","validationError.artistEmail","Artist email cannot be empty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"artistPhoto","validationError.artistPhoto","Artist photo cannot be empty");
	}
}
