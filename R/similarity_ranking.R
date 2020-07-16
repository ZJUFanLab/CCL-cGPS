# load ccle and tcga data
ccle<- readRDS(file = 'ccle.rds')
tcga<- readRDS(file = 'tcga.rds')

# the selected gene signatures (100/200/300) include up-regulated and down-regulated genes
# m_genenumber represent the number (50/100/150) of up-regulated and down-regulated genes, half of the number (100/200/300) of selected gene signatures 

m_genenumber<- 50
ranking_res<- list()

for (i in 1:2) {
  m_sample<- colnames(tcga)[i+1]
  res<- as.data.frame(matrix(0,nrow = 720,ncol = 1))
  rownames(res)<- colnames(ccle)[-1]
  colnames(res)<- m_sample
  m_sampledata<- tcga[,c(1,i+1)]
  m_sampledata[,2]<- as.numeric(m_sampledata[,2])
  m_sampledata<- m_sampledata[!is.na(m_sampledata[,2]),]
  m_sampledata<- m_sampledata[order(-m_sampledata[,2]),]
  rownames(m_sampledata)<- 1:nrow(m_sampledata)
  m_up<- m_sampledata[c(1:m_genenumber),]
  rownames(m_up)<- 1:m_genenumber
  m_up$order<- 1:m_genenumber
  m_down<- m_sampledata[(c(nrow(m_sampledata))-m_genenumber+1):c(nrow(m_sampledata)),]
  rownames(m_down)<- 1:m_genenumber
  m_down$order<- 1:m_genenumber
  a<- numeric()
  b<- numeric()
  for(k in 1:720){
    m_ref<- ccle[,c(1,k+1)]
    m_ref[,2]<- as.numeric(m_ref[,2])
    m_ref<- m_ref[!is.na(m_ref[,2]),]
    m_ref<- m_ref[order(-m_ref[,2]),]
    rownames(m_ref)<- 1:nrow(m_ref)
    m_ref$order<- 1:nrow(m_ref)
    for(n in 1:m_genenumber){
      if(nrow(m_up[m_up$Gene %in% m_ref$Gene,])==m_genenumber){
        m_up<- m_up[m_up$Gene %in% m_ref$Gene,]
        m_up$order<- 1:m_genenumber
        break
      }
      m_up<- m_sampledata[c(1:(m_genenumber+n)),]
    }
    for(m in 1:m_genenumber){
      m_gene<- m_up[m,1]
      m_gene<- m_ref[m_ref$Gene %in% m_gene,]
      m_gene<- m_gene[1,3]
      a[m]<- (m/m_genenumber)-m_gene/nrow(m_ref)
      b[m]<- m_gene/nrow(m_ref)-(m-1)/m_genenumber
    }
    a<- max(a)
    b<- max(b)
    ks1<- ifelse(a>b,a,-b)
    for(n in 1:m_genenumber){
      if(nrow(m_down[m_down$Gene %in% m_ref$Gene,])==m_genenumber){
        m_down<- m_down[m_down$Gene %in% m_ref$Gene,]
        m_down$order<- 1:m_genenumber
        break
      }
      m_down<- m_sampledata[(c(nrow(m_sampledata))-m_genenumber+1-n):c(nrow(m_sampledata)),]
    }
    
    for(m in 1:m_genenumber){
      m_gene<- m_down[m,1]
      m_gene<- m_ref[m_ref$Gene %in% m_gene,]
      m_gene<- m_gene[1,3]
      a[m]<- (m/m_genenumber)-m_gene/nrow(m_ref)
      b[m]<- m_gene/nrow(m_ref)-(m-1)/m_genenumber
    }
    a<- max(a)
    b<- max(b)
    ks2<- ifelse(a>b,a,-b)
    
    res[k,1]<- ks1-ks2
  }
  res[res[,1]>0,1]<- res[res[,1]>0,1]/max(res[,1])
  res[res[,1]<0,1]<- res[res[,1]<0,1]/(-min(res[,1]))
  res$order<- rank(-res[,1])
  res[,1]<- res[,2]

  ranking_res[[i]]<- res
  names(ranking_res)[i]<- colnames(res)[1]
}

# clean results
res<- ranking_res[[1]]
for (i in 2:length(ranking_res)) {
  res1<- ranking_res[[i]]
  res<- cbind(res,res1[,1])
}
res<- res[,-2]
colnames(res)<- names(ranking_res)

# select top 1/3/5 (m_cellnumber) candidate cell lines for each patient
# calculate the ranking score for each cell line towards each tumor subtype

m_cellnumber<- 5
res_gps<- list()

# load ccle and tcga cln data
ccle_cln<- readRDS(file = '/ccle_cln.rds')
tcga_cln<- readRDS(file = '/tcga_cln.rds')

tumor_sub1<- unique(tcga_cln[tcga_cln$subtype_hist != 'NA',c("tumor","subtype_hist")])
tumor_sub2<- unique(tcga_cln[tcga_cln$subtype_mol1 != 'NA',c("tumor","subtype_mol1")])
tumor_sub3<- unique(tcga_cln[tcga_cln$subtype_mol2 != 'NA',c("tumor","subtype_mol2")])
colnames(tumor_sub1)[2]<- 'subtype'
colnames(tumor_sub2)[2]<- 'subtype'
colnames(tumor_sub3)[2]<- 'subtype'
tumor_sub<- rbind(tumor_sub1,tumor_sub2,tumor_sub3)
rownames(tumor_sub)<- 1:nrow(tumor_sub)

for (i in 1:44) {
  if (i %in% c(1:39)) {
    tcga_cln1<- tcga_cln[tcga_cln$tumor == tumor_sub$tumor[i] & tcga_cln$subtype_hist == tumor_sub$subtype[i],]  
    ccle_cln1<- ccle_cln[ccle_cln$TUMOR_TYPE == tumor_sub$tumor[i],]
    res1<- res[ccle_cln1$ID,tcga_cln1$patient_id]
      
    candidate_cells<- NULL
    for (j in 1:ncol(res1)) {
      res1<- res1[order(res1[,j]),]
      candidate_cells1<- rownames(res1)[1:m_cellnumber]
      candidate_cells<- c(candidate_cells,candidate_cells1)
    }
    candidate_cells<- as.data.frame(table(candidate_cells),stringsAsFactors = F)
    candidate_cells$Freq<- candidate_cells$Freq/max(candidate_cells$Freq)
    candidate_cells$rank<- rank(-candidate_cells$Freq)
    candidate_cells$tumor<- tumor_sub$tumor[i]
    candidate_cells$subtype<- tumor_sub$subtype[i]
    colnames(candidate_cells)[2]<- 'gps_score'
    candidate_cells<- candidate_cells[,c(4,5,1,2,3)]
    res_gps[[i]]<- candidate_cells
    names(res_gps)[i]<- paste(tumor_sub$tumor[i],tumor_sub$subtype[i],sep = '_')
  }
  if (i %in% c(40:43)) {
    tcga_cln1<- tcga_cln[tcga_cln$tumor == tumor_sub$tumor[i] & tcga_cln$subtype_mol1 == tumor_sub$subtype[i],]  
    ccle_cln1<- ccle_cln[ccle_cln$TUMOR_TYPE == tumor_sub$tumor[i],]
    res1<- res[ccle_cln1$ID,tcga_cln1$patient_id]
    
    candidate_cells<- NULL
    for (j in 1:ncol(res1)) {
      res1<- res1[order(res1[,j]),]
      candidate_cells1<- rownames(res1)[1:m_cellnumber]
      candidate_cells<- c(candidate_cells,candidate_cells1)
    }
    candidate_cells<- as.data.frame(table(candidate_cells),stringsAsFactors = F)
    candidate_cells$Freq<- candidate_cells$Freq/max(candidate_cells$Freq)
    candidate_cells$rank<- rank(-candidate_cells$Freq)
    candidate_cells$tumor<- tumor_sub$tumor[i]
    candidate_cells$subtype<- tumor_sub$subtype[i]
    colnames(candidate_cells)[2]<- 'gps_score'
    candidate_cells<- candidate_cells[,c(4,5,1,2,3)]
    res_gps[[i]]<- candidate_cells
    names(res_gps)[i]<- paste(tumor_sub$tumor[i],tumor_sub$subtype[i],sep = '_')
  }
  if (i == 44) {
    tcga_cln1<- tcga_cln[tcga_cln$tumor == tumor_sub$tumor[i] & tcga_cln$subtype_mol2 == tumor_sub$subtype[i],]  
    ccle_cln1<- ccle_cln[ccle_cln$TUMOR_TYPE == tumor_sub$tumor[i],]
    res1<- res[ccle_cln1$ID,tcga_cln1$patient_id]
    
    candidate_cells<- NULL
    for (j in 1:ncol(res1)) {
      res1<- res1[order(res1[,j]),]
      candidate_cells1<- rownames(res1)[1:m_cellnumber]
      candidate_cells<- c(candidate_cells,candidate_cells1)
    }
    candidate_cells<- as.data.frame(table(candidate_cells),stringsAsFactors = F)
    candidate_cells$Freq<- candidate_cells$Freq/max(candidate_cells$Freq)
    candidate_cells$rank<- rank(-candidate_cells$Freq)
    candidate_cells$tumor<- tumor_sub$tumor[i]
    candidate_cells$subtype<- tumor_sub$subtype[i]
    colnames(candidate_cells)[2]<- 'gps_score'
    candidate_cells<- candidate_cells[,c(4,5,1,2,3)]
    res_gps[[i]]<- candidate_cells
    names(res_gps)[i]<- paste(tumor_sub$tumor[i],tumor_sub$subtype[i],sep = '_')
  }
}













