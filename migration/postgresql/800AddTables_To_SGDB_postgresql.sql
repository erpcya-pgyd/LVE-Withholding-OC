-- Aug 28, 2013 11:21:56 AM VET
-- LVE Withholding
CREATE TABLE LVE_CashTax (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_Cash_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, C_Tax_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsTaxIncluded CHAR(1) CHECK (IsTaxIncluded IN ('Y','N')) NOT NULL, Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL, TaxAmt NUMERIC NOT NULL, TaxBaseAmt NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LVE_CashTax_Key PRIMARY KEY (C_Cash_ID, C_Tax_ID))
;

-- Aug 28, 2013 11:23:14 AM VET
-- LVE Withholding
CREATE TABLE LVE_PersonType (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_PersonType_ID NUMERIC(10) NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(60) DEFAULT NULL , CONSTRAINT LVE_PersonType_Key PRIMARY KEY (LVE_PersonType_ID))
;

-- Aug 28, 2013 11:23:24 AM VET
-- LVE Withholding
CREATE TABLE LVE_TaxUnit (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_TaxUnit_ID NUMERIC(10) NOT NULL, Name VARCHAR(60) NOT NULL, Processing CHAR(1) DEFAULT NULL , TaxAmt NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, ValidFrom TIMESTAMP NOT NULL, CONSTRAINT LVE_TaxUnit_Key PRIMARY KEY (LVE_TaxUnit_ID))
;

-- Aug 28, 2013 11:23:33 AM VET
-- LVE Withholding
CREATE TABLE LVE_WC_ProductCharge (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_Charge_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_WC_ProductCharge_ID NUMERIC(10) NOT NULL, LVE_WH_Concept_ID NUMERIC(10) NOT NULL, M_Product_ID NUMERIC(10) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LVE_WC_ProductCharge_Key PRIMARY KEY (LVE_WC_ProductCharge_ID))
;

-- Aug 28, 2013 11:23:43 AM VET
-- LVE Withholding
CREATE TABLE LVE_WH_Combination (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Aliquot NUMERIC NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsManual CHAR(1) DEFAULT NULL CHECK (IsManual IN ('Y','N')), LVE_PersonType_ID NUMERIC(10) DEFAULT NULL , LVE_WH_Combination_ID NUMERIC(10) NOT NULL, LVE_WH_Concept_ID NUMERIC(10) NOT NULL, Processing CHAR(1) DEFAULT NULL , TaxBaseRate NUMERIC DEFAULT 100, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(60) DEFAULT NULL , CONSTRAINT LVE_WH_Combination_Key PRIMARY KEY (LVE_WH_Combination_ID))
;

-- Aug 28, 2013 11:23:50 AM VET
-- LVE Withholding
CREATE TABLE LVE_WH_Concept (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_WH_ConceptGroup_ID NUMERIC(10) DEFAULT NULL , LVE_WH_Concept_ID NUMERIC(10) NOT NULL, Name VARCHAR(255) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LVE_WH_Concept_Key PRIMARY KEY (LVE_WH_Concept_ID))
;

-- Aug 28, 2013 11:23:57 AM VET
-- LVE Withholding
CREATE TABLE LVE_WH_ConceptGroup (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, CopyFrom CHAR(1) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_WH_ConceptGroup_ID NUMERIC(10) NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(60) NOT NULL, CONSTRAINT LVE_WH_ConceptGroup_Key PRIMARY KEY (LVE_WH_ConceptGroup_ID))
;

-- Aug 28, 2013 11:24:04 AM VET
-- LVE Withholding
CREATE TABLE LVE_WH_Config (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, AD_Rule_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_TaxUnit_ID NUMERIC(10) NOT NULL, LVE_WH_Combination_ID NUMERIC(10) NOT NULL, LVE_WH_Config_ID NUMERIC(10) NOT NULL, LVE_Withholding_ID NUMERIC(10) NOT NULL, MaxValue NUMERIC NOT NULL, MinValue NUMERIC NOT NULL, Subtrahend NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LVE_WH_Config_Key PRIMARY KEY (LVE_WH_Config_ID))
;

-- Aug 28, 2013 11:24:11 AM VET
-- LVE Withholding
CREATE TABLE LVE_WH_Relation (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_BPartner_ID NUMERIC(10) DEFAULT NULL , C_BP_Group_ID NUMERIC(10) DEFAULT NULL , C_DocType_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_WH_Relation_ID NUMERIC(10) NOT NULL, LVE_Withholding_ID NUMERIC(10) NOT NULL, ReferenceNo VARCHAR(60) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LVE_WH_Relation_Key PRIMARY KEY (LVE_WH_Relation_ID))
;

-- Aug 28, 2013 11:24:18 AM VET
-- LVE Withholding
CREATE TABLE LVE_WH_Type (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, AuthorizedOfficer_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_WH_Type_ID NUMERIC(10) NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(60) DEFAULT NULL , CONSTRAINT LVE_WH_Type_Key PRIMARY KEY (LVE_WH_Type_ID))
;

-- Aug 28, 2013 11:24:26 AM VET
-- LVE Withholding
CREATE TABLE LVE_Withholding (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, AD_ReportView_ID NUMERIC(10) DEFAULT NULL , AD_Rule_ID NUMERIC(10) DEFAULT NULL , AD_Table_ID NUMERIC(10) NOT NULL, Beneficiary_ID NUMERIC(10) NOT NULL, C_Charge_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DeclarationDocType_ID NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsSOTrx CHAR(1) DEFAULT 'N' CHECK (IsSOTrx IN ('Y','N')), LVE_WH_ConceptGroup_ID NUMERIC(10) NOT NULL, LVE_WH_Type_ID NUMERIC(10) NOT NULL, LVE_Withholding_ID NUMERIC(10) NOT NULL, Name VARCHAR(60) NOT NULL, Processing CHAR(1) DEFAULT NULL , SeqNo NUMERIC(10) NOT NULL, TaxUnitRate NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, WithholdingDocType_ID NUMERIC(10) NOT NULL, CONSTRAINT LVE_Withholding_Key PRIMARY KEY (LVE_Withholding_ID))
;
