library(TCGAbiolinks)
library(dplyr)

# Query TCGA data
query <- GDCquery(project = "TCGA-BRCA",
                  data.category = "Transcriptome Profiling",
                  data.type = "Gene Expression Quantification",
                  workflow.type = "STAR - Counts")

# Download data
GDCdownload(query)

# Prepare data
data <- GDCprepare(query)

# Example: Fetch clinical data
clinical_query <- GDCquery(project = "TCGA-BRCA",
                           data.category = "Clinical",
                           data.format = "XML")

                           

GDCdownload(clinical_query)
clinical_data <- GDCprepare_clinic(clinical_query, clinical.info = "patient")

# Integrate data
integrated_data <- inner_join(data, clinical_data, by = "patient_id")
head(integrated_data)
