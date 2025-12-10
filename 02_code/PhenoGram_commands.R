library(karyoploteR)
library(GenomicRanges)
library(readr)


mut_data <- file.choose()
mut_data <- read.csv(mut_data)
# ---------------------------------------------------
# 2. Fancy color palette
# ---------------------------------------------------
mutation_colors <- c(
  "Missense"      = "#E41A1C",
  "Nonsense"      = "#377EB8",
  "Synonymous"    = "#4DAF4A",
  "Frameshift"    = "#FF7F00",
  "Amplification" = "#984EA3",
  "Deletion"      = "#FFFF33"
)

mut_data$color <- mutation_colors[mut_data$mutation_type]

# GRanges format
mut_data$start <- mut_data$position
mut_data$end   <- mut_data$position

gr <- makeGRangesFromDataFrame(mut_data, keep.extra.columns = TRUE)

# ---------------------------------------------------
# 3. karyoplot
# ---------------------------------------------------
kp <- plotKaryotype(
  genome = "hg38",
  plot.type = 2,
  main = "Genome-wide Mutation Map ( Karyoplot)",
  cex.main = 1.6,
  margins = c(0.1, 0.1, 2, 1.5)
)
#########


# Chromosome names bold
kpAddChromosomeNames(kp, cex = 0.9, font = 2)

# Mutation density track
kpPlotDensity(
  kp,
  data = gr,
  window.size = 1e6,
  col = "#A6CEE3",
  border = "#1F78B4",
  r0 = 0.35, r1 = 0.55
)

# Mutation points
kpPoints(
  kp,
  data = gr,
  y = 0.25,
  col = adjustcolor(gr$color, alpha.f = 0.9),
  cex = 2.2,
  pch = 19
)

# Gene labels
kpText(
  kp,
  data = gr,
  labels = gr$gene,
  y = 0.29,
  cex = 0.6,
  col = "black",
  pos = 3
)

# Legend
legend(
  "bottomright",
  legend = names(mutation_colors),
  col = mutation_colors,
  pch = 19,
  title = "Mutation Types",
  cex = 0.9,
  pt.cex = 1.3,
  box.lwd = 0
)

