-- SELECT id, name
-- FROM students
-- WHERE cohort_id = 1
-- ORDER BY name


-- SELECT count(*)
-- FROM students
-- WHERE cohort_id IN (1,2,3)

-- SELECT name, id, cohort_id
-- FROM students
-- WHERE email IS NULL or phone IS NULL;

-- SELECT name, email, id, cohort_id
-- FROM students
-- WHERE phone is NULL AND
-- email NOT LIKE '%@gmail.com'

-- SELECT name,id,cohort_id
-- FROM students
-- WHERE end_date IS null
-- ORDER BY cohort_id

-- SELECT name,email, phone
-- FROM students
-- WHERE github is NULL
-- AND end_date IS NOT NULL;