create table artist (artist_id bigint not null auto_increment, artist_email varchar(255), artist_full_name varchar(255), artist_photo longblob, primary key (artist_id)) engine=InnoDB
create table songs (song_id bigint not null auto_increment, album_title varchar(255), song_cover longblob, song_file longblob, song_likes integer not null, song_title varchar(255), type varchar(255), primary key (song_id)) engine=InnoDB
create table users (user_email varchar(255) not null, privelage varchar(255), user_first_name varchar(255), user_last_name varchar(255), user_password varchar(255), primary key (user_email)) engine=InnoDB
create table playlist (playlist_id bigint not null auto_increment, playlist_name varchar(255) not null, primary key (playlist_id)) engine=InnoDB
create table playlist_songs (playlist_playlist_id bigint not null, songs_song_id bigint not null, primary key (playlist_playlist_id, songs_song_id)) engine=InnoDB
create table songs_song_artists (song_song_id bigint not null, song_artists_artist_id bigint not null, primary key (song_song_id, song_artists_artist_id)) engine=InnoDB
alter table playlist_songs add constraint FKmhkgf01i70xvi27kfii4qegbj foreign key (songs_song_id) references songs (song_id)
alter table playlist_songs add constraint FK8318cakf6hjujs4mqw1219jkg foreign key (playlist_playlist_id) references playlist (playlist_id)
alter table songs_song_artists add constraint FKgiowl0wf0yubuqs4fda9yr9q9 foreign key (song_artists_artist_id) references artist (artist_id)
alter table songs_song_artists add constraint FKknqm59n9s951xwt0b7xb9ktw0 foreign key (song_song_id) references songs (song_id)
