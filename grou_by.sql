-- Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(`enrolment_date`) AS `anni`, 
COUNT(*) AS `numero_iscritti`
FROM `students`
GROUP BY YEAR(`enrolment_date`);


-- Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT  `office_address`,
COUNT(*) AS `same_add`
FROM `teachers`
GROUP BY `office_address`;


-- Calcolare la media dei voti di ogni appello d'esame
SELECT `exam_id`,
       AVG(`vote`) AS `average_vote`
FROM `exam_student`
GROUP BY `exam_id`;


-- Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `department_id`,
       COUNT(*) AS `courses`
FROM `degrees`
GROUP BY `department_id`;