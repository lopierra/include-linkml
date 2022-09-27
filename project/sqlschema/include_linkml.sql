

CREATE TABLE "Assay" (
	uses_biospecimen TEXT, 
	has_output TEXT, 
	PRIMARY KEY (uses_biospecimen, has_output)
);

CREATE TABLE "Biospecimen" (
	age_at_biospecimen_collection TEXT, 
	biospecimen_storage TEXT, 
	collection_id TEXT, 
	collection_sample_type TEXT, 
	container_id TEXT, 
	has_datafile TEXT, 
	has_participant TEXT, 
	has_study TEXT, 
	laboratory_procedure TEXT, 
	parent_sample_id TEXT, 
	parent_sample_type TEXT, 
	sample_availability VARCHAR(11), 
	sample_id TEXT NOT NULL, 
	sample_type TEXT NOT NULL, 
	volume TEXT, 
	volume_unit TEXT, 
	has_aliquot TEXT, 
	PRIMARY KEY (age_at_biospecimen_collection, biospecimen_storage, collection_id, collection_sample_type, container_id, has_datafile, has_participant, has_study, laboratory_procedure, parent_sample_id, parent_sample_type, sample_availability, sample_id, sample_type, volume, volume_unit, has_aliquot)
);

CREATE TABLE "DataFile" (
	access_url TEXT, 
	collection_id TEXT, 
	data_access VARCHAR(10), 
	data_category TEXT NOT NULL, 
	data_type TEXT, 
	experimental_strategy TEXT, 
	file_id TEXT, 
	file_name TEXT NOT NULL, 
	format TEXT NOT NULL, 
	has_biospecimen TEXT, 
	has_participant TEXT, 
	has_study TEXT, 
	participant_id TEXT NOT NULL, 
	size TEXT, 
	original_file_name TEXT NOT NULL, 
	PRIMARY KEY (access_url, collection_id, data_access, data_category, data_type, experimental_strategy, file_id, file_name, format, has_biospecimen, has_participant, has_study, participant_id, size, original_file_name)
);

CREATE TABLE "FamilyGroup" (
	has_participant TEXT, 
	PRIMARY KEY (has_participant)
);

CREATE TABLE "Participant" (
	age_at_diagnosis TEXT, 
	age_at_phenotype_assignment TEXT, 
	age_at_the_last_vital_status TEXT, 
	diagnosis_icd TEXT, 
	diagnosis_mondo TEXT, 
	diagnosis_ncit TEXT, 
	diagnosis_source_text TEXT, 
	diagnosis_type TEXT, 
	down_syndrome_status VARCHAR(3) NOT NULL, 
	ethnicity VARCHAR(22) NOT NULL, 
	external_id TEXT NOT NULL, 
	family_id TEXT, 
	family_relationship TEXT, 
	family_type VARCHAR(12) NOT NULL, 
	father_id TEXT, 
	has_datafile TEXT, 
	has_study TEXT, 
	mother_id TEXT, 
	outcomes_vital_status TEXT, 
	participant_id TEXT NOT NULL, 
	phenotype_hpo TEXT, 
	phenotype_source_text TEXT, 
	phenotype_interpretation VARCHAR(12), 
	race VARCHAR(41) NOT NULL, 
	sex VARCHAR(7) NOT NULL, 
	PRIMARY KEY (age_at_diagnosis, age_at_phenotype_assignment, age_at_the_last_vital_status, diagnosis_icd, diagnosis_mondo, diagnosis_ncit, diagnosis_source_text, diagnosis_type, down_syndrome_status, ethnicity, external_id, family_id, family_relationship, family_type, father_id, has_datafile, has_study, mother_id, outcomes_vital_status, participant_id, phenotype_hpo, phenotype_source_text, phenotype_interpretation, race, sex)
);

CREATE TABLE "Study" (
	dbgap TEXT, 
	program VARCHAR(7) NOT NULL, 
	study_code VARCHAR(10) NOT NULL, 
	study_name TEXT NOT NULL, 
	PRIMARY KEY (dbgap, program, study_code, study_name)
);
