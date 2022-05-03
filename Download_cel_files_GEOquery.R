#Download GEO files

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install()

BiocManager::install(c("GEOquery", "affy"))

library(GEOquery)

#Select the directory to download de files
setwd("C:/Users/lupit/OneDrive/Microarray_skin_cells/")

#With GEOquery packages download the files
getGEOSuppFiles("GSE10433")

#Create a new directory Data
untar("GSE10433/GSE10433_RAW.tar", exdir="Data")

#Change working directory to Data
setwd("C:/Users/lupit/OneDrive/Microarray_skin_cells/Data")

#unzip the files and give them appropiate names, we can know this with GSE metadata
gunzip("GSM263921.CEL.gz", destname="control_1.CEL")
gunzip("GSM263923.CEL.gz", destname="control_2.CEL")
gunzip("GSM263925.CEL.gz", destname="control_3.CEL")
gunzip("GSM263927.CEL.gz", destname="control_4.CEL")
gunzip("GSM263929.CEL.gz", destname="control_5.CEL")
gunzip("GSM263931.CEL.gz", destname="control_6.CEL")
gunzip("GSM263922.CEL.gz", destname="trat_1.CEL")
gunzip("GSM263924.CEL.gz", destname="trat_2.CEL")
gunzip("GSM263926.CEL.gz", destname="trat_3.CEL")
gunzip("GSM263928.CEL.gz", destname="trat_4.CEL")
gunzip("GSM263930.CEL.gz", destname="trat_5.CEL")
gunzip("GSM263932.CEL.gz", destname="trat_6.CEL")

