Moovie SQL commands

1.
DROP genre
(remove and replace with lookup table)

2.
DROP TABLE public.dir_studio_link;
(bad linking combo)

3.
COMMENT ON TABLE public.director IS 'lookup'
(reference)

4.
CREATE UNIQUE INDEX year_year_uindex ON public.year (year);
(index)

5.
ALTER TABLE public.moovies ALTER COLUMN director TYPE VARCHAR(12) USING director::VARCHAR(12)
(foreign key adjustment)

6.
ALTER TABLE public.moovies ADD directorid INT NULL
ADD CONSTRAINT moov_dir_fk
(foreign key adjustment)

7.
ALTER TABLE public.director RENAME COLUMN genre TO genreId;
ALTER TABLE public.director ALTER COLUMN genreId TYPE VARCHAR(12) USING genreId::VARCHAR(12);

8.
INSERT INTO "public"."moovie" ("moovie_pk", "title", "genreid", "Release year", "studio", "directorid") VALUES (?, ?, ?, ?, ?, ?)

9.
INSERT INTO "public"."dir_genre_link" ("dir_genre_pk", "dir_fk", "genre_fk") VALUES (DEFAULT, ?, ?)
data insert

10.
UPDATE "public"."studio" SET "studio name" = ? WHERE "studio_pk" = ?

11.
SELECT director.director_pk, dir_genre_link.dir_fk
FROM director
  INNER JOIN dir_genre_link
    ON director.director_pk = dir_genre_link.dir_fk
ORDER BY director.director_pk;

-- 12.
SELECT t.* FROM public.movie t ORDER BY director DESC LIMIT 501;
--(trying to alter columns with 'ghost' index)

13.
ALTER TABLE public.movie
ADD CONSTRAINT movie_studio_fk
FOREIGN KEY (studioid) REFERENCES studio (studio_pk)
button down details

14.
DELETE INDEX public_movie_move_pk_uindex RESTRICT
blocked editing of tables/columns

15.
SELECT director.director_pk, dir_genre_link.dir_fk
FROM director
INNER JOIN dir_genre_link
ON director.director_pk = dir_genre_link.dir_fk
ORDER BY director.director_pk;

manual join


