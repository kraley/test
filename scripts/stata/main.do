//====================================================================//
//===== SOC 384 example project                   
//===== Dataset: SIPP2014 
//  Kelly Raley 
*-------------------------------------------------------------------------------
* This is the main do file that runs all of the scripts. This scripts expects 
* that you are in its directory when you execute it. 

// setup macros for project. This will also execute your personal setup file.
// Before running this code, you'll need to edit setup_example to create
// your personal setup file or you'll get an error. The project setup folder
// can also check to see that you have all of the necessary packages installed.
do setup_project.do

// extract data from original SIPP 2014 file and save in interim directory.
do extract_and_format.do

// merge all waves of the SIPP 2014 panel together.
do merge_waves.do

