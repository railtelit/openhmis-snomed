****************************************************************************
	         How to use SNOMED CT service (CSNOServ)
****************************************************************************

CSNOServ Directory Structure:

CSNOServ provides following directory structure:
- csnoserv.war: Deployable web service
- Copyrightnotice.txt: A Copyright notice for CSNOtk
- README.txt: A readme (or read me) file contains information about other files in the directory and also how to configure and use CSNOServ

****************************************************************************
	         Pre-Requisite Software requirements
****************************************************************************

1. OPEN JDK 8 should be installed on the machine for CSNOtk application.
	
2. Append the path value for JAVA in the PATH environment variable.
	e.g. :  C:\Program Files\openjdk\jdk8u202\bin

3. Set the environment variables for Java.
	e.g. :  JAVA_HOME - C:\Program Files\openjdk\jdk8u202 (System Environment Variable in case of Windows)
		JAVA_HOME - export JAVA_HOME=/usr/java/jdk8u202 (modify '/etc/profile' - in case of LINUX)
		   
4. To host the application for different plug-in (JAVA, Dot Net, PHP) different hosting web servers are required.
	
5. Set the environment variables for web server if required.
	e.g. : export TOMCAT_HOME=/usr/java/apache-tomcat-7.0.70 (modify '/etc/profile' - in case of LINUX)

6. To open .jar and .war files use WINRAR archiver.


***************************************************************************
		Configure and deploy SNOMED CT service
***************************************************************************
	
1. Deploy csnoserv.war to webapps folder of the application server directory. (Current version tested with Tomcat 7.0).

2. Configure application server to use 1024M java maximum memory pool size.

3. Start the application server and once deployed, test it at the url:'http://localhost:8080/csnoserv/'.

4. Provide configuration details
		Note: The property file for database configuration will be saved.

5. In configuration detail page, provide the SNOMED CT International Release file path. SNOMED CT codes can be obtained from SNOMED International website or the National Release Center (NRC) of your country. After providing the path and other details, submit the form.

6. Home page will be displayed after successful submission or else try again with proper inputs. Please note that it might take few minutes to save configuration page and create database and index files. Also, log file can be checked by the user for more details.

7. If any database configuration to be reset, change config.flag value to true in system.properties file in server directory. And restart the service.		

8. If required, for creating/reinstalling any additional component database like: extension, refset etc, Configuration is available to the user on CSNOServ page and can be configured by providing the valid file path for them.

9. APIs are available to use.
	
10. (i) Parameter Description:
	(A)term- Term/text or Concept ID to be searched in SNOMED CT repository.

	(B)id- SNOMED CT Concept Identifier.

	(C)state- State of a component.
		Possible values : active, inactive, both.
		    active - It will return only active Components.
		    inactive - It will return only inactive Components.
		    both - It will return both active and inactive Components.
					
	(D)semantictag-	Semantic Tag in which SNOMED CT term/text or concept id will be searched.
		Possible values : all, procedure, disorder, finding, observable entity, body structure, organism, substance, specimen, special concept, 
				linkage concept, physical force, event, environment, geographic location, social concept, situation, staging scale, physical object, 
				qualifier value, record artifact, person, link assertion, namespace concept, attribute, assessment scale, racial group, tumor staging, 
				occupation, morphologic abnormality, cell, cell structure, ethnic group, product, inactive concept, navigational concept, life style, 
				regime/therapy, religion/philosophy, disposition, medicinal product, medicinal product form, clinical drug, unit of presentation, number,
				administration method, basic dose form, dose form, intended site, release characteristic, state of matter, transformation. 
				all- It will search SNOMED CT term in all semantictag.
					
	(E)acceptability- Represents the type of description i.e. whether the search results contains preferred terms or preferred terms other than FSN, only acceptable terms or synonyms.
		Possible values : preferred, preferredexcludingfsn, synonyms, acceptable, all.
		If acceptability is,
		    preferred - refers to all preferred description for a concept (including FSN).
		    preferredexcludingfsn - refers to SNOMEDCT description for preferred terms excluding FSN.
		    synonyms - refers to all description for a concept (excluding FSN).
		    acceptable- refers to all description for a concept excluding preferred.
		    all - refers to all description for a concept (both preferred and acceptable).

	(F)returnlimit-	Maximum number of matching terms to be fetched. For all results returnlimit is -1.  

	(G)langrefset- Specifies language reference set for US, UK, HI and etc. 
				   Possible values : us, uk, hi and etc.

	(H)relation- Type of relationship need to find for a concept.
				   Possible values : is a, finding site, causative agent, has intent, procedure site, specimen substance, associated finding, associated with, associated morphology, has active ingredient, has disposition 

	(I)direction- Direction in which relationship need to find for a concept.
				  Possible values : source, destination 
				  
	(J)groupByConcept- Boolean value, if true, then method will return set of CompositeDescription which will contain one description from one concept.
		The default value is false, which will return all matching descriptions. Any value other than 'true' and 'false' will internally considered as 'false'.
		 	
	(K)refsetid- Identifier of Refset, if search is to be done in specific Refset or null if search is to be done through whole SNOMED CT terminology.
	
	(L)parentid- Concept Identifier, if search is to be done in specific sub-hierarchy (through all descendants of a specific Concept parentid) or null if search is to be done through whole SNOMED CT terminology.
	(M)attribute-Direction in which relationship need to find for a concept.
				Possible values :  finding site, causative agent, has intent, procedure site, specimen substance, associated finding, associated with, associated morphology, has active ingredient, 
					           procedure site direct, specimen source topography, has focus, has measured component, component, procedure site indirect, using, direct device, using device, 
					           specimen source morphology, direct morphology, indirect morphology, part of, due to, recipient category, subject relationship context, direct substance, 
					           using substance, interprets, specimen procedure, has definitional manifestation, associated etiologic finding, has interpretation, after, method, temporally follows, 
					           associated procedure, associated function, procedure device, revision status, measurement method, occurrence, measures, procedure morphology, finding method, 
					           indirect device, route of administration, using access device, temporal context, approach, surgical approach, severity, course, clinical course, laterality, 
					           specimen source identity, access instrument, stage, using energy, onset, instrumentation, priority, extent, scale type, subject of information, finding context, 
					           has specimen, access, property, time aspect, episodicity,location, pathological process, communication with wound, procedure context, finding informer, has disposition, 
					           has manufactured dose form, has basis of strength substance, has presentation strength numerator value, has presentation strength numerator unit, 
					           has presentation strength denominator value, has presentation strength denominator unit, has basic dose form, has concentration strength denominator unit, 
					           has concentration strength denominator value, has concentration strength numerator unit, has concentration strength numerator value, has dose form administration method, 
					           has dose form intended site, has dose form release characteristic, has dose form transformation, has state of matter, has ingredient, has precise active ingredient, 
					           is modification of, count of active ingredient, count of base and modification pair, count of base of active ingredient, has unit of presentation, plays role. 

	(N)destinationid- SNOMED CT Concept Identifier.
	
  (ii) 
	1]	Parameter Description for SNOMED CT to ICD-10 mapping service:
			(A)id- SNOMED CT Concept Identifier that need to be mapped to ICD-10 code.
		
			(B)gender- Gender of the patient.
					Possible values for gender parameter are as follows-
					MALE or M (case insensitive)
					FEMALE or F (case insensitive)
					blank - otherwise or unknown.
										
			(C)birthdate- Date of birth of the patient. It need to be provided in MM-DD-YYYY format to API.

			(D)diagnosisdate- Date of the diagnosis i.e. date on which patient was diagnosed. It need to be provided in MM-DD-YYYY format to API.

			(E)secondary- Secondary diagnosis concept id(s). It can hold multiple SNOMED CT concept id assumed to be separated by a plus + sign or by space.

	2] 	Parameter Description for SNOMED CT Simple mapping service:
			(A)id- SNOMED CT Concept Identifier that need to be mapped to other code system.
		

  (iii) Parameter Description for DISB(Drug Infomation Service Bundle):
	(A)id- SNOMED CT Concept Identifier for Substance, CD i.e Generic and RCD i.e Real Clinical Driug.
***************************************************************************
				FINISH
***************************************************************************
