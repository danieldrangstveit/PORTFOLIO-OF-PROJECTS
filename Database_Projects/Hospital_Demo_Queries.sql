-- Author: Daniel Drangstveit

-- Query 1
SELECT name, age, room_number
FROM patient_information_tbl
WHERE admit_date BETWEEN '2015-10-01 00:00:00.000' AND '2015-10-05 00:00:00.000'
ORDER BY name ASC;

-- Query 2
SELECT DISTINCT pinfo.name, pvital.resultname
FROM patient_information_tbl pinfo INNER JOIN patient_vitals_tbl pvital
ON pinfo.hospital_number = pvital.hospital_number;

-- Query 3
SELECT DISTINCT pinfo.name, pvital.resultname
FROM patient_information_tbl pinfo LEFT OUTER JOIN patient_vitals_tbl pvital
ON pinfo.hospital_number = pvital.hospital_number;

-- Query 4
SELECT name, age, DATEDIFF(year, dob, GETDATE()) actual_age
FROM patient_information_tbl;

-- Query 5
SELECT pcu, COUNT(*) total_patients
FROM patient_information_tbl
GROUP BY pcu
ORDER BY total_patients DESC;

-- Query 6
SELECT pinfo.hospital_number, pinfo.name, pinfo.sex, pinfo.pcu
FROM patient_information_tbl pinfo LEFT OUTER JOIN patient_therapy_tbl pther
ON pinfo.hospital_number = pther.hospital_number
WHERE pther.hospital_number IS NULL;

-- Query 7
SELECT pinfo.name, pmed.item_descr, pmed.start_date
FROM patient_information_tbl pinfo INNER JOIN patient_medication_tbl pmed
ON pinfo.hospital_number = pmed.hospital_number
WHERE pmed.item_descr LIKE '%INSULIN%' AND pmed.active = 'Y';

-- Query 8
SELECT genericname, COUNT(*) total_count
FROM formulary_clinical
WHERE fallrisk = 1
GROUP BY genericname
HAVING COUNT(*) > 1;

-- Query 9
SELECT TOP 10 pinfo.name, SUM(CONVERT(DECIMAL(18,2),fc.charge * pther.dose)) total_charge
FROM patient_information_tbl pinfo 
INNER JOIN patient_therapy_tbl pther ON pinfo.hospital_number = pther.hospital_number
INNER JOIN formulary_clinical fc ON pther.itemid = fc.itemid
GROUP BY pinfo.name
ORDER BY total_charge DESC;

-- Query 10
SELECT pinfo.name, CONVERT(DECIMAL(18,4),pinfo.height * 0.0328) height_ft, CONVERT(DECIMAL(18,2),pinfo.weight * 2.2) weight_lbs, '21-12' RefCode
FROM patient_information_tbl pinfo
INNER JOIN patient_medication_tbl pmed ON pinfo.hospital_number = pmed.hospital_number
INNER JOIN formulary_clinical fc ON pmed.itemid = fc.itemid
WHERE fc.narrowtherwindow = 1
GROUP BY pinfo.name, pinfo.height, pinfo.weight;