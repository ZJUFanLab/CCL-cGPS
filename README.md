# CCL-cGPS
### A clinical genomics-guided prioritizing strategy enables accurately selecting proper cancer cell lines for biomedical research

<img src='https://img.shields.io/badge/ligand--receptor-database-brightgreen'> <img src='https://img.shields.io/badge/human-3%2C398-orange'> <img src='https://img.shields.io/badge/mouse-2%2C033-blue'> 

Selecting appropriate cell lines to represent a disease is crucial for the success of biomedical research, since the usage of less relevant cell lines could bring misleading results. However, no systematic guidance is available yet for the cell lines selection. __Here we developed a clinical Genomics-guided Prioritizing Strategy for Cancer Cell Lines (CCL-cGPS) to sort cell lines.__ Statistical analyses revealed CCL-cGPS selected cell lines were among the most appropriate models. Moreover, we observed a linear correlation between the drug response and CCL-cGPS score of cell lines for breast and thyroid cancers. Using CCL-cGPS selected RT4 cells, we identified mebendazole and digitoxin as candidate drugs against bladder cancer, and validate their promising anticancer effect through in vitro and in vivo experiments. Additionally, a [web tool](http:/tcm.zju.edu.cn/cgps) was developed. __CCL-cGPS bridges the gap between tumors and cell lines, presenting a helpful guide to select the most suitable cell line models.__

<img src='https://github.com/ZJUFanLab/CCL-cGPS/blob/master/img/tumor.png' width = "600" height = "600"> 

# Detail
For each tumor subtype, we suggest several cancer cell lines that mimic clinical tumor patients.

- __Bladder cancer__ ([BLCA]())
  - Non-papillary: `SCaBER`, `HT-1197`, `UM-UC-3`, `SW-1710`, `VM-CUB1`
  - Papillary: [`RT4`(commonly-used)](), `VM-CUB1`, `RT112_84`, `SW_780`

- __Breast cancer__ ([BRCA]())
  - Infiltrating ductal: `HCC2218`, `HCC1428`, `HCC2157`, `HCC1599`, `ZR-75-30`
  - Infiltrating lobular: `UACC-812`, `CAL-148`, `YMB-1`, `ZR-75-1`, `ZR-75-30`
  - ER+: `HCC2218`, `HCC1428`, `ZR-75-30`, `MDA-MB-134-VI`, `CAL-148`
  - HER2+: `SK-BR-3`, `HCC202`
  - Triple negative: `HCC1599`, `HCC2157`, `HCC1569`, `CAL-85-1`, `HCC1143`

- __Bile duct cancer__ ([CHOL]())
  - Intrahepatic: `SNU-245`

- __Colorectal cancer__ ([COADREAD]())
  - Colon adenocarcinoma ([COAD]()): `NCI-H747`, `LS123`, `SW1417`, `RCM-1`, `C2BBe1`
  - Colon mucinous adenocarcinoma: `CL-11`, `Hs_675_T`, `MDST8`
  - Rectal adenocarcinoma ([READ](): `NCI-H747`, `SW1417`, `COLO-678`, `SW1463`, `RCM-1`
  - KRAS mutated: `HCC-56`, `LS123`, `SW1463`, `SW948`, `COLO-678`

- __Esophagus cancer__ ([ESCA]())
  - Esophagus adenocarcinoma: `OE19`, `KYSE-270`, `OE33`, `TE-1`
  - Esophagus squamous cell carcinoma: `COLO-680N`, `KYSE-140`, `TE-9`, `T_T`

- __Glioma__
  - Glioblastoma multiforme ([GBM]()): `KNS-81`, `GOS-3`, `SNU-626`, `LN-229`, `SNU-738`
  - Astrocytoma ([LGG]()): `KNS-81`, `DK-MG`, `SNU-626`, `SNU-738`, `SNU-466`
  - Oligoastrocytoma ([LGG]()): `GOS-3`, `SNU-466`, `A172`, `DK-MG`, `KNS-81`
  - Oligodendroglioma ([LGG]()): `GOS-3`, `SNU-626`, `DK-MG`, `A172`, `SNU-466`

- __Head and neck squamous cell carcinoma__ ([HNSC]())
  - HNSC: `BICR_31`, `SCC-4`, `PE_CA-PJ34_clone_C12`, `BICR_18`, `PE_CA-PJ41_clone_D2`

- __Kidney cancer__
  - Kidney chromophobe ([KICH]()): `KMRC-3`, `SNU-349`, `VMRC-RCW`, `ACHN`
  - Kidney renal clear cell carcinoma ([KIRC]()): `A-704`, `KMRC-3`, `SNU-349`, `OSRC2`, `TUHR4TKB`
  - Kidney renal papillary cell carcinoma ([KIRP]()): `A-704`, `Caki-1`, `VMRC-RCW`, `ACHN`, `OSRC2`

- __Liver cancer__
  - Liver hepatocellular carcinoma (LIHC): `SNU-449`, `SNU-878`, `Alexander_cells`, `SK-HEP-1`, `JHH-1`

- __Lung cancer__
  - Lung adenocarcinoma ([LUAD]()): `NCI-H1869`, `Sq-1`, `NCI-H2444`, `KNS-62`, `NCI-H1944`
  - LUAD KRAS mutated: `LCLC-103H`, `NCI-H1781`, `NCI-H20`
  - LUAD ALK translocated: `NCI-H2110`
  - Lung squamous cell carcinoma ([LUSC]()): `HCC-95`, `LC-1_sq-SF`, `LC1F`, `RERF-LC-Sq1`, `NCI-H2196`

- __Mesothelioma__ ([MESO]())
  - Epithelioid: `JL-1`, `IST-MES1`
  - Biphasic: `NCI-H2052`















