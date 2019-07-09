#Phylogenetic Analysis and Tree Plotting 
#Installing the required pkg
install.packages("ape")
library(ape)
#Define the seq of interest as a set in term of IDs
myset <- c("U15717", "U15718", "U15719", "U15720", "U15721",
           "U15722", "U15723", "U15724")
myseqs <- read.GenBank(myset)
# compute the distance matrix with dist.dna function 
mydist <- dist.dna(myseqs)

mydist
#Using trainMtd to get the phylo object
myphylo <- triangMtd(mydist)
#different kinds of phylogenetic trees for analysis
plot(myphylo, type="phylogram", edge.color="red", cex=1, edge, width=1,main="(A) Phylogram")
plot(myphylo, type="cladogram", edge.color="red", cex=1, edge.width,main="(B) Cladogram")
plot(myphylo, type="fan", edge.color="red", cex=1, edge.width=1,main="(C) Fan")
plot(myphylo, type="unrooted", edge.color="red", cex=1, edge.width=1, main="(D) Unrooted")