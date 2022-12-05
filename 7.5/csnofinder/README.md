# csnofinder
SNOMED CT browser

*******************************************************************************************
	How to configure and deploy SNOMED CT browser (CSNOFinder)
*******************************************************************************************
*******************************************************************************************
	     Pre-Requisite Software requirements
*******************************************************************************************
1. To host the application hosting web server is required.
2. CSNOServ must be deployed.
	To configure CSNOServ service, download CSNOServ component.
	Follow steps in README.txt of CSNOServ package.
	As default settings, CSNOFinder uses CSNOServ available at "http://localhost:8080/csnoserv".
3. To open ".jar" and ".war" files use WINRAR archiver.

*********************************************************************************************
	     Configure and deploy on application server
*********************************************************************************************
1. To host the CSNOFinder, Copy the csnofinder.war to webapps folder of the application serverdirectory. (Current version tested with Tomcat 7.0 and 8.5)
	Note: If csnoserv.war is deployed in same location as csnofinder.war then skip below steps and go to step 7. 
2. After deployment, A folder named csnofinder will be created.
3. Open index.html from csnofinder folder.
4. Search for serverUrl under options variable and put new url of csnoserv.
6. Save the file and close it.
7. Configure application server to use 1024M java maximum memory pool size.
8. Start the application server and once deployed, test it at the url:'http://localhost:8080/csnofinder/'. 

********************************************************************************
				FINISH
********************************************************************************
