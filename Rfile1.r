library(mixOmics)

data(nutrimouse)

View(nutrimouse)

# Save the 'gene' component to a CSV file
write.csv(nutrimouse$gene, file = "nutrimouse_gene.csv", row.names = FALSE)

# Save the 'lipid' component to a CSV file
write.csv(nutrimouse$lipid, file = "nutrimouse_lipid.csv", row.names = FALSE)

# Save the 'diet' component to a CSV file
write.csv(nutrimouse$diet, file = "nutrimouse_diet.csv", row.names = FALSE)

# Save the 'genotype' component to a CSV file
write.csv(nutrimouse$genotype, file = "nutrimouse_genotype.csv", row.names = FALSE)
