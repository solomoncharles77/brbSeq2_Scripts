
qc <- read.delim("/lustre/alice3/scratch/vasccell/cs806/brbSeq/brbSeq2/fastqcResults/multiqc_data/multiqc_fastqc.txt")
qc <- qc[,  c("Sample", "Filename", "avg_sequence_length", "Total.Sequences", "basic_statistics")]
colnames(qc) <- c("sampleID", "filename", "avg_read_length", "total_reads", "basic_statistics")
write.csv(qc, "/lustre/alice3/scratch/vasccell/cs806/brbSeq/brbSeq2/fastqcResults/qcSummary.csv", row.names = F)

map <- read.delim("/lustre/alice3/scratch/vasccell/cs806/brbSeq/brbSeq2/mappedReads/multiqc_data/multiqc_star.txt")
# map <- map[, c("Sample", "total_reads", "uniquely_mapped", "uniquely_mapped_percent", "unmapped_tooshort", "unmapped_tooshort_percent")]
# colnames(map) <- c("Sample", "total_reads", "mapped", "percent_mapped", "unmapped", "percent_unmapped")
map <- map[, c("Sample", "total_reads", "uniquely_mapped", "uniquely_mapped_percent")]
colnames(map) <- c("Sample", "total_reads", "mapped", "percent_mapped")
map <- map[!grepl("_STARpass1", map$Sample), ]
write.csv(map, "/lustre/alice3/scratch/vasccell/cs806/brbSeq/brbSeq2/mappedReads/mapSummary.csv", row.names = F)

salm <- read.delim("/lustre/alice3/scratch/vasccell/cs806/brbSeq/brbSeq2/salmonQuant/multiqc_data/multiqc_salmon.txt")
salm <- salm[, c("Sample", "num_processed", "num_mapped", "percent_mapped")]
colnames(salm) <- c("Sample", "total_reads", "mapped", "percent_mapped")
write.csv(salm, "/lustre/alice3/scratch/vasccell/cs806/brbSeq/brbSeq2/salmonQuant/quantSummary.csv", row.names = F)
