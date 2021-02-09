//====================================================================//
//===== Soc 384 example Project                    
//===== Dataset: SIPP2014                                          
//===== Purpose: This code append all waves of SIPP2014 original data into a long form dataset. 
//               It keeps only observations in the reference month (4,8 and 12).  
//=====================================================================//

** Import first wave. 
use "$interim/wave${first_wave}_extract", clear 

** Keep only observations in reference months. 

keep if MONTHCODE==$refmon1|MONTHCODE==$refmon2|MONTHCODE==$refmon3

** Append the first wave with waves from the second to last, also keep only observations from the reference month. 
forvalues wave = $second_wave/$final_wave {
    append using "$interim/wave`wave'_extract"
    keep if MONTHCODE==$refmon1|MONTHCODE==$refmon2|MONTHCODE==$refmon3 
}

** allwaves.dta is a long-form datasets include all the waves from SIPP2001, month 4 data. 
save "$interim/allwaves", $replace
