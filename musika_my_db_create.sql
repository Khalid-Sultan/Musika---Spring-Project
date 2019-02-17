
    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)

    create table artist (
       artist_id bigint not null auto_increment,
        artist_email varchar(255),
        artist_full_name varchar(255),
        artist_photo longblob,
        primary key (artist_id)
    ) engine=InnoDB

    create table rating (
       rating_id bigint not null auto_increment,
        user_id bigint,
        primary key (rating_id)
    ) engine=InnoDB

    create table role (
       id bigint not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table songs (
       song_id bigint not null auto_increment,
        album_title varchar(255),
        song_cover longblob,
        song_file longblob,
        song_likes integer not null,
        song_title varchar(255),
        type varchar(255),
        primary key (song_id)
    ) engine=InnoDB

    create table user (
       id bigint not null auto_increment,
        enabled integer,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table playlist (
       playlist_id bigint not null auto_increment,
        playlist_name varchar(255) not null,
        user_id bigint,
        primary key (playlist_id)
    ) engine=InnoDB

    create table playlist_songs (
       playlist_playlist_id bigint not null,
        songs_song_id bigint not null,
        primary key (playlist_playlist_id, songs_song_id)
    ) engine=InnoDB

    create table rating_songs (
       rating_rating_id bigint not null,
        songs_song_id bigint not null,
        primary key (rating_rating_id, songs_song_id)
    ) engine=InnoDB

    create table songs_song_artists (
       song_song_id bigint not null,
        song_artists_artist_id bigint not null,
        primary key (song_song_id, song_artists_artist_id)
    ) engine=InnoDB

    create table user_role (
       user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    ) engine=InnoDB

    alter table rating 
       add constraint FKpn05vbx6usw0c65tcyuce4dw5 
       foreign key (user_id) 
       references user (id)

    alter table playlist 
       add constraint FKlbi6wsq41356go2ki0yirfixo 
       foreign key (user_id) 
       references user (id)

    alter table playlist_songs 
       add constraint FKmhkgf01i70xvi27kfii4qegbj 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table playlist_songs 
       add constraint FK8318cakf6hjujs4mqw1219jkg 
       foreign key (playlist_playlist_id) 
       references playlist (playlist_id)

    alter table rating_songs 
       add constraint FKldndek7unp2c4fmqklcsuerp1 
       foreign key (songs_song_id) 
       references songs (song_id)

    alter table rating_songs 
       add constraint FKdxtxlc4yq54s38d6s7cpjagym 
       foreign key (rating_rating_id) 
       references rating (rating_id)

    alter table songs_song_artists 
       add constraint FKgiowl0wf0yubuqs4fda9yr9q9 
       foreign key (song_artists_artist_id) 
       references artist (artist_id)

    alter table songs_song_artists 
       add constraint FKknqm59n9s951xwt0b7xb9ktw0 
       foreign key (song_song_id) 
       references songs (song_id)

    alter table user_role 
       add constraint FKa68196081fvovjhkek5m97n3y 
       foreign key (role_id) 
       references role (id)

    alter table user_role 
       add constraint FK859n2jvi8ivhui0rl0esws6o 
       foreign key (user_id) 
       references user (id)
