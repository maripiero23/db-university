-- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`name`,
       `students`.`surname`,
       `degrees`.`name` AS `course_degree`
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`. `id`
WHERE `degrees`.`name` = "Corso di Laurea in Economia";

-- Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT `degrees`.`name` AS `course_degree`,
       `departments`.`name` AS `department_name`,
       `degrees`.*
FROM `degrees`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`name` = "Dipartimento di Neuroscienze"
AND `degrees`.`level` = "magistrale";


-- Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `teachers`.`name`,
       `teachers`.`surname`,
       `courses`.`name` AS `course_name`
FROM `teachers`
INNER JOIN `course_teacher`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
INNER JOIN `courses`
ON `courses`.`id` = `course_teacher`.`course_id`
WHERE `teachers`.`name` = "Fulvio"
  AND `teachers`.`surname` = "Amato";


-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il
-- relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.`name`,
       `students`.`surname`,
       `degrees`.`name`,
       `departments`.`name`
FROM `students`
JOIN `degrees`
  ON `students`.`degree_id`=`degrees`.`id`
JOIN `departments`
  ON `degrees`.`department_id`=`departments`.`id`
ORDER BY `students`.`name`,
       `students`.`surname`;

-- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
-- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT `degrees`.`name`AS `degrees_name`,
       `courses`.`name` AS `course_name`,
       `teachers`.`name` AS `teachers_name`,
       `teachers`.`surname` AS `teachers_surname`
FROM `teachers`
JOIN `course_teacher`
  ON `teachers`.`id`= `course_teacher`.`teacher_id`
JOIN `courses`
  ON `courses`.`id`= `course_teacher`.`course_id`
JOIN `degrees`
  ON `courses`.`degree_id`= `degrees`.`id`;

-- Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
SELECT DISTINCT `teachers`.`name` AS `teacher_name`,
       `teachers`.`surname`AS `teacher_surname`,
       `departments`.`name` AS `departments_name`
FROM `teachers`
JOIN `course_teacher`
  ON `teachers`.`id`=`course_teacher`.`teacher_id`
JOIN `courses`
  ON `courses`.`id`=`course_teacher`.`course_id`
JOIN `degrees`
  ON `courses`.`degree_id`=`degrees`.`id`
JOIN `departments`
  ON `degrees`.`department_id`=`departments`.`id`
WHERE `departments`.`name`= "Dipartimento di Matematica";

-- BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per
-- superare ciascuno dei suoi esami
















