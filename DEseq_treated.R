directory <- ("~/Genomanalysis")
library("DESeq2")
library("dplyr")

sampleFiles <- grep("treated",list.files(directory),value=TRUE)

sampleCondition <- sub("(.*treated).*","\\1",sampleFiles)

sampleTable <- data.frame(sampleName = sampleFiles,
                          fileName = sampleFiles,
                          condition = sampleCondition)

sampleTable$condition <- factor(sampleTable$condition)


ddsHTSeq <- DESeqDataSetFromHTSeqCount(sampleTable = sampleTable,
                                       directory = directory,
                                       design= ~ condition)
ddsHTSeq

dds <- DESeq(ddsHTSeq)
res <- results(dds)
res

res <- results(dds, name="condition_untreated_vs_treated")
res
plotMA(res, ylim=c(-2,2))
summary(res)
res1 = as.data.frame(res)
res1 = mutate(res1, sig=ifelse(res1$padj<0.1, "FDR<0.1","not sig")) #false dicovery rate

res1[which(abs(res1$log2FoldChange)<1.0),"sig"] = "not sig"

library(ggplot2)
ggplot(res1, aes(log2FoldChange, -log(padj))) + geom_point(aes(col=sig)) + scale_color_manual(values=c("red", "black"))


res = res[order(abs(res$log2FoldChange), decreasing = TRUE),]
topgene = rownames(res)[1]
#plotCounts(dds, gene = topgene, intgroup = c("53", "treatment"))
