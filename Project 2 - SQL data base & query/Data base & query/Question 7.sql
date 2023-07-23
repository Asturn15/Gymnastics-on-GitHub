### 7. What was the average score obtained on each apparatus during the competition in Krakow?  ###
### WARNING: In table with result we have, a lot null/0 values! ###

SELECT FORMAT(AVG(NULLIF(FX_Total_score,0)),3) as Fx_avg_score,
FORMAT(AVG(NULLIF(PH_Total_score,0)),3) as Ph_avg_score,
FORMAT(AVG(NULLIF(SR_Total_score,0)),3) as Sr_avg_score,
FORMAT(AVG(NULLIF(VT_Total_score,0)),3) as Vt_avg_score,
FORMAT(AVG(NULLIF(PB_Total_score,0)),3) as Pb_avg_score,
FORMAT(AVG(NULLIF(HB_Total_score,0)),3) as Hb_avg_score
FROM krakow_2022;

### ANSWER:  FX_AVG PH_AVG  SR_AVG  VT_AVG  PB_AVG  HB_AVG ###
###          11.738	10.210	10.742	12.131	11.425	10.865 ###