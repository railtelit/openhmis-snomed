
C-DAC's Toolkit For SNOMED CT (CSNOtk) is specially designed toolkit for easy access and integration of SNOMED CT in healthcare applications. CSNOtk has following components:

1. CSNOLib: Provides Java API library for adding SNOMED CT support in any Java based application. It automates database and lucene index creation from SNOMED CT standard release files.

2. CSNOServ: Ready to call Representational State Transfer (REST) Web Service which exposes the build in Service API to outside world. CSNOServ can be deployed over web/application server.

3. CSNOCtrl: CSNOCtrl package is a readily available utility which can be used as a plugin to add SCNOMED CT support.It provides the user with search and suggest facility. It can further be used to map entered SNOMED CT code to ICD-10 code. It can be used to get more information from DISB respective to entered Substance, Clinical Drug i.e. Generic and Real Clinical Drug i.e. Medicine. CSNOCtrl uses REST web services of CSNOServ to provide search and suggest facilities.

4. CSNOFinder: Provides full text and language assisted search for SNOMED CT codes.It features in the categorization results of the SNOMED CT codes. CSNOFinder can be readily deployed along with application or centrally by the user for one of more products/deployments.

Note: To know more about Licensing please go through the the link : https://www.cdac.in/index.aspx?id=hi_hs_medinfo_csno_license 
	  To know about Copyright please see the Copyrightnotice.txt provided with each component.
	  To know more about each component please follow the README.txt provided with each component.

Directory listing of required SNOMED CT International Release Files:

SnomedCT_InternationalRF2_PRODUCTION_YYYYMMDDTHHMMSS
	Snapshot
	   Terminology
			sct2_Concept_Snapshot_INT_YYYYMMDD.txt
	      	sct2_Description_Snapshot-en_INT_YYYYMMDD.txt
	      	sct2_Identifier_Snapshot_INT_YYYYMMDD.txt
	        sct2_Relationship_Snapshot_INT_YYYYMMDD.txt
	        sct2_RelationshipConcreteValues_Snapshot_INT_YYYYMMDD.txt
	        sct2_sRefset_OWLExpressionSnapshot_INT_YYYYMMDD.txt
	        sct2_StatedRelationship_Snapshot_INT_YYYYMMDD.txt
			sct2_TextDefinition_Snapshot-en_INT_YYYYMMDD.txt
	   Refset
			Language
            			der2_cRefset_LanguageSnapshot-en_INT_YYYYMMDD.txt
			Map
				der2_iisssccRefset_ExtendedMapSnapshot_INT_YYYYMMDD.txt
				der2_sRefset_SimpleMapSnapshot_INT_YYYYMMDD.txt

			Content
				  	der2_cRefset_AssociationSnapshot_INT_YYYYMMDD.txt
				  	der2_cRefset_AttributeValueSnapshot_INT_YYYYMMDD.txt
				  	der2_Refset_SimpleSnapshot_INT_YYYYMMDD.txt
