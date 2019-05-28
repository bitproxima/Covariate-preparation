### Prepare covariates
##
#################################
##User to set the following parameters

#Directory where covariates will be saved too.
cd <- "M://Projects/PMap/Modelling/Scripts/COOBSTesting"
 
#File name of "modelling area shapefile", without the file extension. Add this file to above directory.
boundfn <- "TestBox"

#Name of stage or modelling area
area <- "TestArea"

#TERN and other covariates on the shared drive drive //SDD00707//tern_cov (ensure computer is turned on)
#User please adjust list below by adding or removing # tags and make sure there is not comma after the last entry

climate_list <- c(#"Clim_etaaann.tif",
                #"Clim_etaajan.tif",
                #"Clim_etapann.tif",                
                #"Clim_etapapr.tif",
                #"Clim_etapaug.tif",
                #"Clim_etapdec.tif",
                #"Clim_etapfeb.tif",
                #"Clim_etapjan.tif",
                #"Clim_etapjul.tif",
                #"Clim_etapjun.tif",
                #"Clim_etapmar.tif",
                #"Clim_etapmay.tif",
                #"Clim_etapnov.tif",
                #"Clim_etapoct.tif",
                #"Clim_etapsep.tif",
                #"Clim_evapann.tif",
                #"Clim_frostann.tif",
                #"Clim_kpnall.tif",
                #"Clim_maxann.tif",
                #"Clim_maxsum.tif",
                #"Clim_maxwin.tif",
                #"Clim_meanann.tif",
                #"Clim_minann.tif",
                #"Clim_minsum.tif",
                "Clim_minwin.tif",
                #"Clim_percjanmar.tif",
                "clim_prescott.tif",
                #"Clim_Prescott_LindaGregory.tif",
                #"Clim_rain1mman.tif",
                #"Clim_rainan.tif",
                #"Clim_rainjan.tif",
                #"Clim_rainjun.tif",
                #"Clim_rainmaysep.tif",
                #"Clim_rainoct.tif",
                #"Clim_rainoctapr.tif",
                #"Clim_rainspr.tif",
                #"Clim_rainsum.tif",
                "Clim_rainwin.tif"
                #"clim_rh09ann.tif",
                #"clim_sum_wint_ratio.tif",
                #"Clim_sunann.tif",
                #"Clim_tdayann.tif",
                #"Clim_varan.tif"
                )

organisms_list <- c(#"Veg_FPAR_Max.tif",
                    "Veg_FPAR_Mean.tif",
                    #"Veg_FPAR_Median.tif",
                    #"Veg_FPAR_Min.tif",
                    #"Veg_FPAR_StdDev.tif",
                    #"Veg_FractCover_Max_BS.tif",
                    #"Veg_FractCover_Max_NPV.tif",
                    #"Veg_FractCover_Max_PV.tif",
                    #"Veg_FractCover_Mean_BS.tif",
                    #"Veg_FractCover_Mean_NPV.tif",
                    #"Veg_FractCover_Mean_PV.tif",
                    #"Veg_FractCover_Min_BS.tif",
                    #"Veg_FractCover_Min_NPV.tif",
                    #"Veg_FractCover_Min_PV.tif",
                    #"Veg_FractCover_Std_BS.tif",
                    #"Veg_FractCover_Std_NPV.tif",
                    #"Veg_FractCover_Std_PV.tif",
                    #"veg_IBRA_regions.tif",
                    #"Veg_LandCoverTrend_evi_class.tif",
                    #"Veg_LandCoverTrend_evi_max.tif",
                    #"Veg_LandCoverTrend_evi_mean.tif",
                    #"Veg_LandCoverTrend_evi_min.tif",
                    #"Veg_mvs31e_aus1.tif",
                    "Veg_Persistant_green_Veg.tif"
                    #"Veg_preEuropeanVeg.tif"
                    )
relief_list <- c( #"relief_apsect.tif",
                  "relief_dems_3s_mosaic1.tif",
                  "relief_elev_focalrange1000m_3s.tif",
                  #"relief_elev_focalrange300m_3s.tif",
                  "relief_mrvbf_3s_mosaic.tif",
                  #"relief_plan_curvature_3s.tif",
                  #"relief_profile_curvature_3.tif",
                  #"relief_roughness.tif",
                  #"relief_slope_perc.tif",
                  #"relief_slope_relief_class_3s.tif",
                  #"relief_slopepct_focalmedian300m_3s.tif",
                  #"relief_tpi_3s.tif",
                  "relief_twi_3s.tif"
                  )

pm_list <- c(#"PM_Aster_ferrousIron.tif",
            #"PM_Aster_regolithRatios_b_1.tif",
            #"PM_Aster_regolithRatios_b_2.tif",
            #"PM_Aster_regolithRatios_b_3.tif",
            #"PM_Gravity.tif",
            #"PM_Lithology_Map_Symbol.tif",
            #"PM_Lithology_Min_Geol_Age.tif",
            #"PM_Lithology_Unit_Type.tif",
            #"PM_Magnetics.tif",
            #"PM_Silica.tif",
            "PM_Weathering_Index.tif"
            )

pm_radiometrics_list <- c(#"radmap_v3_2015_filtered_ppmu.tif",
                          "radmap_v3_2015_filtered_dose.ers"
                          #radmap_v3_2015_filtered_pctk.ers,
                          #radmap_v3_2015_filtered_ppmth.ers,
                          #radmap_v3_2015_ratio_tk.ers,
                          #radmap_v3_2015_ratio_u2t.ers,
                          #radmap_v3_2015_ratio_uk.ers,
                          #radmap_v3_2015_ratio_ut.ers,
                          #radmap_v3_2015_unfiltered_dose.ers,
                          #radmap_v3_2015_unfiltered_pctk.ers,
                          #radmap_v3_2015_unfiltered_ppmth.ers,
                          #radmap_v3_2015_unfiltered_ppmu.ers
                          )

#################################
##Processing starts here
setwd(cd)
library(sp)
library(rgdal)
library(raster)
library(gdalUtils)

#Load modelling area box
modarea <- readOGR(dsn = cd, layer = boundfn)

#modelling area extent data
extent <- modarea@bbox
ulx <- extent[1,1]
uly <- extent[2,2]
lrx <- extent[1,2]
lry <- extent[2,1]

#Climate covariate cropping and copying
print("Cropping climate covariates")
for (i in seq_along(climate_list)){
  gdal_translate(src_dataset = paste("//SDD00707//TERN_COV//CoVariates//Climate//", climate_list[i], sep = ""), 
                 dst_dataset = paste(cd, "/", area, "_", climate_list[i], sep = ""),
                 projwin = c(ulx,uly,lrx,lry))
}

#Organisms covariate cropping and copying
print("Cropping organisms covariates")
for (i in seq_along(organisms_list)){
  gdal_translate(src_dataset = paste("//SDD00707//TERN_COV//CoVariates//Organisms//", organisms_list[i], sep = ""), 
                 dst_dataset = paste(cd, "/", area, "_", organisms_list[i], sep = ""),
                 projwin = c(ulx,uly,lrx,lry))
}

#Parent material cropping and copying
print("Cropping parent material covariates")
for (i in seq_along(pm_list)){
  gdal_translate(src_dataset = paste("//SDD00707//TERN_COV//CoVariates//Parent_Material//", pm_list[i], sep = ""), 
               dst_dataset = paste(cd, "/", area, "_", pm_list[i], sep = ""),
               projwin = c(ulx,uly,lrx,lry))
  }

#Relief covariate cropping and copying
print("Cropping relief covariates")
for (i in seq_along(relief_list)){
  gdal_translate(src_dataset = paste("//SDD00707//TERN_COV//CoVariates//Relief//", relief_list[i], sep = ""), 
                 dst_dataset = paste(cd, "/", area, "_", relief_list[i], sep = ""),
                 projwin = c(ulx,uly,lrx,lry))
}

#Radiometric covariate cropping and copying
print("Cropping radiometric covariates")
for (i in seq_along(pm_radiometrics_list)){
  gdal_translate(src_dataset = paste("//SDD00707//TERN_COV//CoVariates//Radmap_v3_2015//", pm_radiometrics_list[i], sep = ""), 
                 dst_dataset = paste(cd, "/", area, "_", sub(".ers", "", pm_radiometrics_list[i]), ".tif", sep = ""),
                 projwin = c(ulx,uly,lrx,lry))
}
#End of script
print("Script has finished processing")