package com.teammusika.musika;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AccessLevel;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@NoArgsConstructor(access=AccessLevel.PRIVATE,force=true)
@Data
@Entity
@Table(name="songs" ,schema="musika_my")
public class Song {
final String title;
final String album;
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private  final Long id;

}
