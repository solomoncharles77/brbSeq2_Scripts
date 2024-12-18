library(stringr)

tg <- read.table("/lustre/alice3/scratch/vasccell/cs806/brbSeq/brbSeq2/brbSeq2_Scripts/target.txt")
tg
tg$group <- as.factor(ifelse(str_detect(tg$label, "untr"), "UNTR", "TNFa")) # edit as required.


write.table(tg[, c(1:3)], "/lustre/alice3/scratch/vasccell/cs806/brbSeq/brbSeq2/brbSeq2_Scripts/target.txt", quote = F, sep="\t")

targetFile <- "/lustre/alice3/scratch/vasccell/cs806/brbSeq/brbSeq2/brbSeq2_Scripts/target.txt"
target <- read.table(targetFile, header=TRUE, sep="\t", na.strings="")
