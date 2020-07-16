# CCL-cGPS
### A clinical genomics-guided prioritizing strategy enables accurately selecting proper cancer cell lines for biomedical research

<img src='https://img.shields.io/badge/ligand--receptor-database-brightgreen'> <img src='https://img.shields.io/badge/human-3%2C398-orange'> <img src='https://img.shields.io/badge/mouse-2%2C033-blue'> 

Selecting appropriate cell lines to represent a disease is crucial for the success of biomedical research, since the usage of less relevant cell lines could bring misleading results. However, no systematic guidance is available yet for the cell lines selection. __Here we developed a clinical Genomics-guided Prioritizing Strategy for Cancer Cell Lines (CCL-cGPS) to sort cell lines.__ Statistical analyses revealed CCL-cGPS selected cell lines were among the most appropriate models. Moreover, we observed a linear correlation between the drug response and CCL-cGPS score of cell lines for breast and thyroid cancers. Using CCL-cGPS selected RT4 cells, we identified mebendazole and digitoxin as candidate drugs against bladder cancer, and validate their promising anticancer effect through in vitro and in vivo experiments. Additionally, a [web tool](http:/tcm.zju.edu.cn/cgps) was developed. __CCL-cGPS bridges the gap between tumors and cell lines, presenting a helpful guide to select the most suitable cell line models.__

<img src='https://github.com/ZJUFanLab/CCL-cGPS/blob/master/img/tumor.png' width = "600" height = "600"> 

# Detail
For each tumor subtype, we suggest several cancer cell lines that mimic clinical tumor patients.

- __Bladder cancer__
  - Non-papillary: `SCaBER`, `HT-1197`, `UM-UC-3`, `SW-1710`, `VM-CUB1`
  - Papillary: `RT4`, `VM-CUB1`, `RT112_84`, `SW_780`

- __Breast cancer__
  - Infiltrating ductal: `HCC2218`, `HCC1428`, `HCC2157`, `HCC1599`, `ZR-75-30`
  - Infiltrating lobular: `UACC-812`, `CAL-148`, `YMB-1`, `ZR-75-1`, `ZR-75-30`
  - ER+: `HCC2218`, `HCC1428`, `ZR-75-30`, `MDA-MB-134-VI`, `CAL-148`
  - HER2+: `SK-BR-3`, `HCC202`
  - Triple negative: `HCC1599`, `HCC2157`, `HCC1569`, `CAL-85-1`, `HCC1143`

- __Bile duct cancer__
- - Intrahepatic: `SNU-245`

- __Colorectal cancer__
  - Colon adenocarcinoma: `NCI-H747`, `LS123`, `SW1417`, `RCM-1`, `C2BBe1`
  - Colon mucinous adenocarcinoma: `CL-11`, `Hs_675_T`, `MDST8`
  - Rectal adenocarcinoma: `NCI-H747`, `SW1417`, `COLO-678`, `SW1463`, `RCM-1`
  - KRAS mutated: `HCC-56`, `LS123`, `SW1463`, `SW948`, `COLO-678`

- __Esophagus cancer__
- - Esophagus adenocarcinoma: `OE19`, `KYSE-270`, `OE33`, `TE-1`































