if object_id('PATIENT_MEDICATION_TBL') is not null
	drop table PATIENT_MEDICATION_TBL
go
if object_id('PATIENT_MPAS_TBL') is not null
	drop table PATIENT_MPAS_TBL
go
if object_id('PATIENT_THERAPY_TBL') is not null
	drop table PATIENT_THERAPY_TBL
go
if object_id('FORMULARY_CLINICAL') is not null
	drop table FORMULARY_CLINICAL
go
if object_id('PATIENT_VITALS_TBL') is not null
	drop table PATIENT_VITALS_TBL
go
if object_id('PATIENT_INFORMATION_TBL') is not null
	drop table PATIENT_INFORMATION_TBL
go

CREATE TABLE [dbo].[PATIENT_INFORMATION_TBL] ( 
    [HOSPITAL_NUMBER]      	nvarchar(20) NOT NULL,
    [NAME]                 	nvarchar(100) NULL,
    [AGE]                  	int NULL,
    [HEIGHT]               	real NULL,
    [WEIGHT]               	real NULL,
    [PCU]                  	nvarchar(10) NULL,
    [ROOM_NUMBER]          	nvarchar(10) NULL,
    [CRCL]                 	nvarchar(20) NULL,
    [ALLERGY]              	nvarchar(800) NULL,
    [VISIT_NUMBER]         	nvarchar(10) NULL,
    [master_patient_id]    	nvarchar(25) NULL,
    [PREVIOUS_VISIT_NUMBER]	nvarchar(10) NULL,
    [PHARMACIST]           	nvarchar(5) NULL,
    [DISCHARGED]           	bit NULL,
    [ADMIT_DATE]           	datetime NULL,
    [DISCHARGE_DATE]       	datetime NULL,
    [DOB]                  	datetime NULL,
    [PHYSICIAN]            	nvarchar(50) NULL,
    [SEX]                   nvarchar(2) NULL,
    [IDEAL_BODY_WEIGHT]    	decimal(15,5) NULL,
    [MEDICAL_RECORD_NUMBER]	nvarchar(20) NULL,
    [LAST_ROOM]            	nvarchar(10) NULL
constraint patientinfo_pk primary key (HOSPITAL_NUMBER)
    )
GO

CREATE TABLE [dbo].[FORMULARY_CLINICAL] ( 
    [PRIMARYAHFS]         	nvarchar(16) NULL,
    [GENERICNAME]         	nvarchar(50) NULL,
    [GENERICNAMEDESCR]    	nvarchar(100) NULL,
    [ITEMID]              	nvarchar(20) NOT NULL,
    [FALLRISK]            	bit NULL,
    [CHEMO]               	bit NULL,
    [ANTICOAG]            	bit NULL,
    [VASOPRESSOR]         	bit NULL,
    [ANTIBIOTIC]          	bit NULL,
    [NARROWTHERWINDOW]    	bit NULL,
    [CDIFF]               	bit NULL,
    [HYPERGLYCEMIA]       	bit NULL,
    [DECREASED_RENAL]     	bit NULL,
    [BRIDGING_THERAPY]    	bit NULL,
    [WARFARIN_INTERACTION]	bit NULL,
    [IVPO]                	bit NULL,
    [STRENGTH]            	nvarchar(100) NULL,
    [FORM]                	nvarchar(25) NULL,
    [COST]                	decimal(15,5) NULL,
    [CHARGE]              	decimal(15,5) NULL,
    CONSTRAINT [formularyclinical_pk] PRIMARY KEY([ITEMID])
)
GO

CREATE TABLE [dbo].[PATIENT_THERAPY_TBL] ( 
    [HOSPITAL_NUMBER]              	nvarchar(20),
    [THERAPY_DATE]            	datetime,
    [THERAPY_TYPE]            	nvarchar(20),
    [ITEMID]               	nvarchar(20),
    [DOSE]             	nvarchar(25),
constraint therapy_pk primary key (HOSPITAL_NUMBER, THERAPY_DATE, ITEMID),
constraint therapy_fk foreign key (HOSPITAL_NUMBER) references PATIENT_INFORMATION_TBL (HOSPITAL_NUMBER),
constraint therapy_fk2 foreign key (ITEMID) references FORMULARY_CLINICAL (ITEMID))
GO

CREATE TABLE [dbo].[PATIENT_MEDICATION_TBL] ( 
    [HOSPITAL_NUMBER]  	nvarchar(20) NOT NULL,
    [RX_NUMBER]        	nvarchar(10) NOT NULL,
    [ITEMID]           	nvarchar(20) NOT NULL,
    [ITEM_DESCR]       	nvarchar(100) NULL,
    [START_DATE]       	datetime NULL,
    [STRENGTH]         	nvarchar(100) NULL,
    [FORMULATION]      	nvarchar(10) NULL,
    [ROUTE]            	nvarchar(15) NULL,
    [FREQUENCY]        	nvarchar(10) NULL,
    [PRN_STATUS]       	nvarchar(1) NULL,
    [ACTIVE]           	nvarchar(2) NOT NULL,
    [STOP_DATE]        	nvarchar(25) NULL,
    [PROFILE]          	nvarchar(10) NULL,
    [VISIT_NUMBER]     	nvarchar(10) NULL,
    [MASTER_PATIENT_ID]	nvarchar(20) NULL,
    [FACILITY_CODE]    	nvarchar(3) NULL,
    [MD]               	nvarchar(70) NULL,
    [BRAND]            	nvarchar(50) NULL,
    [TYPE]             	nvarchar(25) NULL,
    [MAIN_DESCRIPTION] 	nvarchar(50) NULL,
    [LASTHOLDADMINTIME]	datetime NULL,
    [HOLD]             	nvarchar(10) NULL,
    [RATE]             	nvarchar(20) NULL,
    [COMMENTSTEXT]     	nvarchar(200) NULL,
    [DOSE]             	nvarchar(500) NULL,
constraint patientmed_pk primary key (HOSPITAL_NUMBER, RX_NUMBER),
constraint patientmed_fk foreign key (HOSPITAL_NUMBER) references PATIENT_INFORMATION_TBL (HOSPITAL_NUMBER),
constraint patientmed_fk2 foreign key (ITEMID) references FORMULARY_CLINICAL (ITEMID))
GO


CREATE TABLE [dbo].[PATIENT_MPAS_TBL] ( 
    [HOSPITAL_NUMBER]        	nvarchar(20) NOT NULL,
    [FALL_RISK_SCORE]        	numeric(18,0) NULL,
    [CHEMO_SCORE]            	numeric(18,0) NULL,
    [VASOPRESSOR_SCORE]      	numeric(18,0) NULL,
    [ANTICOAG_SCORE]         	numeric(18,0) NULL,
    [NARROWTHERWINDOW_SCORE] 	numeric(18,0) NULL,
    [ANTIBIOTICS_SCORE]      	numeric(18,0) NULL,
    [POLYPHARMACY_SCORE]     	numeric(18,0) NULL,
    [CDIFF_SCORE]            	numeric(18,0) NULL,
    [CRCL_SCORE]             	numeric(18,0) NULL,
    [MPAS_SCORE]             	numeric(15,5) NULL,
    [UPDATED_MPAS]           	nvarchar(1) NULL,
    [UPDATED_MPAS_SCORE]     	bigint NULL,
    [ACUITY_SCORE]           	int NULL,
    [TOTAL_SCORE]            	int NULL,
    [HYPERGLYCEMIA_SCORE]    	numeric(18,5) NULL,
    [UPDATED_ANTICOAG]       	bit NULL,
    [UPDATED_ANTIMICROBIAL]  	bit NULL,
    [UPDATED_CHEMO]          	bit NULL,
    [UPDATED_PRESSORS]       	bit NULL,
    [UPDATED_DECREASED_RENAL]	bit NULL,
    [UPDATED_HYPERGLYCEMIA]  	bit NULL,
    [UPDATED_FALLRISK]       	bit NULL,
    [UPDATED_POLYPHARMACY]   	bit NULL,
    [UPDATED_NARROWTX]       	bit NULL,
    [DELIRIUM_RISK]          	numeric(15,5) NULL,
    [UPDATED_DELIRIUM_RISK]  	bit NULL,
    [HF_SCORE]               	numeric(15,5) NULL,
    [UPDATED_HF]             	bit NULL,
    [HIGH_RISK_SCORE]        	numeric(15,5) NULL,
    [UPDATED_HIGH_RISK]      	bit NULL,
    [WEEKEND]                	bit NULL,
constraint patientmpas_pk primary key (HOSPITAL_NUMBER),
constraint patientmpas_fk foreign key (HOSPITAL_NUMBER) references PATIENT_INFORMATION_TBL (HOSPITAL_NUMBER))
GO

CREATE TABLE [dbo].[PATIENT_VITALS_TBL] ( 
	[HOSPITAL_NUMBER]	nvarchar(20),
	[ResultName]     	nvarchar(25),
	[ResultValue]    	nvarchar(25) NULL,
	[PerformedDate]  	datetime,
constraint vitals_pk primary key (HOSPITAL_NUMBER, ResultName, PerformedDate),
constraint vitals_fk foreign key (HOSPITAL_NUMBER) references PATIENT_INFORMATION_TBL (HOSPITAL_NUMBER))
GO
