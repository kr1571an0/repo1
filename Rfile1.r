
library(MultiAssayExperiment)
library(S4Vectors)
library(UpSetR)
library(ggplot2)
library(ggplotify)



data(miniACC)
str(miniACC)

experiments(miniACC)
sampleMap(miniACC)


a <- upsetSamples(miniACC)
a
ggsave('/workspaces/repo1/plots/file.pdf', ggplotify::as.ggplot(a))

