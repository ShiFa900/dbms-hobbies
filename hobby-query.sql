# SOAL 1
SELECT p.id   AS 'Person ID',
       p.name AS 'Name',
       h.id   AS 'Hobby ID',
       h.name AS Hobby


FROM persons p

         JOIN person_hobbies ph on p.id = ph.person_id
         JOIN hobbies h on h.id = ph.hobby_id
;

# SOAL 2
SELECT p.id   AS 'Person ID',
       p.name AS 'Name',
       h.id   AS 'Hobby ID',
       h.name AS Hobby


FROM persons p

# jika ID person tidak ditemukan di tabel person_Hobbies maka tampilkan null

         LEFT JOIN person_hobbies ph on p.id = ph.person_id
         LEFT JOIN hobbies h on h.id = ph.hobby_id
;

# SOAL 3
SELECT p.id   AS 'Person ID',
       p.name AS 'Name',
       h.id   AS 'Hobby ID',
       h.name AS Hobby


FROM persons p

# jika ID Hobbies tidak ditemukan di tabel person_Hobbies maka tampilkan null

         RIGHT JOIN person_hobbies ph on p.id = ph.person_id
         RIGHT JOIN hobbies h on h.id = ph.hobby_id
;

# SOAL 4
SELECT p.id   AS 'Person ID',
       p.name AS Name,
       h.id   AS 'Hobby ID',
       h.name AS Hobby

FROM persons p
         LEFT JOIN person_hobbies ph on p.id = ph.person_id
         LEFT JOIN hobbies h on h.id = ph.hobby_id
UNION ALL
SELECT p.id   AS 'Person ID',
       p.name AS Name,
       h.id   AS 'Hobby ID',
       h.name AS Hobby
FROM persons p
         RIGHT JOIN person_hobbies ph on p.id = ph.person_id
         RIGHT JOIN hobbies h on h.id = ph.hobby_id
WHERE p.id is null
;

# SOAL 5
SELECT IFNULL(p.id, "-")   AS 'Person ID',
       IFNULL(p.name, "-") AS Name,
       IFNULL(GROUP_CONCAT(h.name), "-") AS Hobby


FROM persons p
         LEFT JOIN person_hobbies ph on p.id = ph.person_id
         LEFT JOIN hobbies h on h.id = ph.hobby_id
GROUP BY p.id
UNION ALL
SELECT IFNULL(p.id, "-")   AS 'Person ID',
       IFNULL(p.name, "-") AS Name,
       IFNULL(GROUP_CONCAT(h.name), "-") AS Hobby

FROM persons p
         RIGHT JOIN person_hobbies ph on p.id = ph.person_id
         RIGHT JOIN hobbies h on h.id = ph.hobby_id
WHERE p.id is null

GROUP BY p.id
ORDER BY `Person ID`

;




