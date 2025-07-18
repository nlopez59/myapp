### DBB/VS Code Quick start notes (July 2025)
Goal: To configure VS Code and DBB for cloning, editing and push new branches to you git Server for Pipeline builds.

Normally the Z DevOps Admin coordinates the steps outlined here.  They would include Git and Artofy Admin as well as Z SysProgs, Security and Network teams as needed.

The first phase is to configure the varaious tools for Developers.  Once all components are verified, a **small select** group of Developers can be included for further verification, learning and customization.

## PreReqs: 
- After installing DBB v3 or better:  
-   Obtain the install paths for: 
        - DBB its normally in ```/usr/lpp/IBM/dbb```    
        - Git for Z (check you SMPE install note)
    - Ensure VS Code Users have an OMVS RACF segment with a persoanl USS Home dir.  
    - Define DBB and Git env vars either in /etc/profile or a user's home /.profile.  As a first test, use the Z DevOps Admin's home directory. Afterwards, the env vars can be merged into /etc/profile for access by all users.  
    - Choose a Zowe connection point to Z. Options are zOSMF or RSEAPI

- Define the USS directory for DBB and other Pipeline configuration files and helper scripts:
    - This sample repo could be use as a starter.   It contains both application source and DBB Admin files to test Developer and Pipeline builds.   
    - Once the convertioan is stablized, Application Repos can be buiolt seperate with just hte applicaito nlevel configuration.  Not the DBB Admin files.  
    

## Phase1 - Z DevOps Configuration

In the DBB install path there are sample build yaml files. These files are managed by the Z DevOps Admin and used across all application builds.  These samples can build a simple cobol batch programs.  



VS Code Setup: 
- Clone this repo 
- Create a branch 
- Update 
    - zapp.yaml
    - zowe.config.json 
 
- Test a User Build 
    - change the sample cobol pgm
    - run the "IBM User Build with Full Upload" as a one time init. Afterwards a simple user build can be run unsless dbb-app.yaml changes need to be refreshed. 
- review the local logs dir afte the build to review the Complier and linkedit sysprint logs

