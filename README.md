# CCL-cGPS
### A clinical genomics-guided prioritizing strategy enables accurately selecting proper cancer cell lines for biomedical research

<img src='https://img.shields.io/badge/ligand--receptor-database-brightgreen'> <img src='https://img.shields.io/badge/human-3%2C398-orange'> <img src='https://img.shields.io/badge/mouse-2%2C033-blue'> 

Selecting appropriate cell lines to represent a disease is crucial for the success of biomedical research, since the usage of less relevant cell lines could bring misleading results. However, no systematic guidance is available yet for the cell lines selection. __Here we developed a clinical Genomics-guided Prioritizing Strategy for Cancer Cell Lines (CCL-cGPS) to sort cell lines.__ Statistical analyses revealed CCL-cGPS selected cell lines were among the most appropriate models. Moreover, we observed a linear correlation between the drug response and CCL-cGPS score of cell lines for breast and thyroid cancers. Using CCL-cGPS selected RT4 cells, we identified mebendazole and digitoxin as candidate drugs against bladder cancer, and validate their promising anticancer effect through in vitro and in vivo experiments. Additionally, a [web tool](http:/tcm.zju.edu.cn/cgps) was developed. __CCL-cGPS bridges the gap between tumors and cell lines, presenting a helpful guide to select the most suitable cell line models.__

<img src='https://github.com/ZJUFanLab/CCL-cGPS/blob/master/img/tumor.png' width = "600" height = "600"> 

# Detail
For each tumor subtype, we suggest several cancer cell lines that mimic clinical tumor patients.

- __Bladder cancer__
- - Non-papillary: `SCaBER`, `HT-1197`, `UM-UC-3`, `SW-1710`, `VM-CUB1`
- - Papillary: `RT4`, `VM-CUB1`, `RT112_84`, `SW_780`

- __Breast cancer__
- -