# CCL-cGPS
<img src='https://img.shields.io/badge/7%2C101-tumor%20patients-brightgreen'> <img src='https://img.shields.io/badge/44-tumor%20subtypes-blue'> <img src='https://img.shields.io/badge/720-cancer%20cell%20lines-yellowgreen'>
### A clinical genomics-guided prioritizing strategy enables accurately selecting proper cancer cell lines for biomedical research

Selecting appropriate cell lines to represent a disease is crucial for the success of biomedical research, since the usage of less relevant cell lines could bring misleading results. However, no systematic guidance is available yet for the cell lines selection. __Here we developed a clinical Genomics-guided Prioritizing Strategy for Cancer Cell Lines (CCL-cGPS) to sort cell lines.__ Statistical analyses revealed CCL-cGPS selected cell lines were among the most appropriate models. Moreover, we observed a linear correlation between the drug response and CCL-cGPS score of cell lines for breast and thyroid cancers. Using CCL-cGPS selected RT4 cells, we identified mebendazole and digitoxin as candidate drugs against bladder cancer, and validate their promising anticancer effect through in vitro and in vivo experiments. Additionally, a [web tool](http:/tcm.zju.edu.cn/cgps) was developed. __CCL-cGPS bridges the gap between tumors and cell lines, presenting a helpful guide to select the most suitable cell line models.__

<img src='https://github.com/ZJUFanLab/CCL-cGPS/blob/master/img/tumor.png' width = "600" height = "600"> 

# Detail
For each tumor subtype, CCL-cGPS suggests several cancer cell lines that mimic clinical tumor patients.

- __Bladder cancer__ ([BLCA](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA)))
  - Non-papillary: `SCaBER`, `HT-1197`, `UM-UC-3`, `SW-1710`, `VM-CUB1`
  - Papillary: [`RT4` (commonly-used)](https://github.com/ZJUFanLab/CCL-cGPS/wiki/Commonly-used-cancer-cell-line), `VM-CUB1`, `RT112_84`, `SW_780`

- __Breast cancer__ ([BRCA](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA)))
  - Infiltrating ductal: `HCC2218`, `HCC1428`, `HCC2157`, `HCC1599`, `ZR-75-30`
  - Infiltrating lobular: `UACC-812`, `CAL-148`, `YMB-1`, `ZR-75-1`, `ZR-75-30`
  - ER+: `HCC2218`, `HCC1428`, `ZR-75-30`, `MDA-MB-134-VI`, `CAL-148`
  - HER2+: [`SK-BR-3` (commonly-used)](https://github.com/ZJUFanLab/CCL-cGPS/wiki/Commonly-used-cancer-cell-line), `HCC202`
  - Triple negative: `HCC1599`, `HCC2157`, `HCC1569`, `CAL-85-1`, `HCC1143`

- __Bile duct cancer__ ([CHOL](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA)))
  - Intrahepatic: `SNU-245`

- __Colorectal cancer__ ([COADREAD](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA)))
  - Colon adenocarcinoma ([COAD](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA))): `NCI-H747`, `LS123`, `SW1417`, `RCM-1`, `C2BBe1`
  - Colon mucinous adenocarcinoma: `CL-11`, `Hs_675_T`, `MDST8`
  - Rectal adenocarcinoma ([READ](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA)): `NCI-H747`, `SW1417`, `COLO-678`, `SW1463`, [`RCM-1` (commonly-used)](https://github.com/ZJUFanLab/CCL-cGPS/wiki/Commonly-used-cancer-cell-line)
  - KRAS mutated: `HCC-56`, `LS123`, `SW1463`, `SW948`, `COLO-678`

- __Esophagus cancer__ ([ESCA](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA)))
  - Esophagus adenocarcinoma: `OE19`, `KYSE-270`, [`OE33` (commonly-used)](https://github.com/ZJUFanLab/CCL-cGPS/wiki/Commonly-used-cancer-cell-line), `TE-1`
  - Esophagus squamous cell carcinoma: `COLO-680N`, `KYSE-140`, `TE-9`, `T_T`

- __Glioma__
  - Glioblastoma multiforme ([GBM](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA))): `KNS-81`, `GOS-3`, `SNU-626`, `LN-229`, `SNU-738`
  - Astrocytoma ([LGG](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA))): `KNS-81`, `DK-MG`, `SNU-626`, `SNU-738`, `SNU-466`
  - Oligoastrocytoma ([LGG](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA))): `GOS-3`, `SNU-466`, `A172`, `DK-MG`, `KNS-81`
  - Oligodendroglioma ([LGG](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA))): `GOS-3`, `SNU-626`, `DK-MG`, `A172`, `SNU-466`

- __Head and neck squamous cell carcinoma__ ([HNSC](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA)))
  - HNSC: `BICR_31`, `SCC-4`, `PE_CA-PJ34_clone_C12`, `BICR_18`, `PE_CA-PJ41_clone_D2`

- __Kidney cancer__
  - Kidney chromophobe ([KICH](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA))): `KMRC-3`, `SNU-349`, `VMRC-RCW`, `ACHN`
  - Kidney renal clear cell carcinoma ([KIRC](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA))): `A-704`, `KMRC-3`, `SNU-349`, `OSRC2`, `TUHR4TKB`
  - Kidney renal papillary cell carcinoma ([KIRP](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA))): `A-704`, `Caki-1`, `VMRC-RCW`, [`ACHN` (commonly-used)](https://github.com/ZJUFanLab/CCL-cGPS/wiki/Commonly-used-cancer-cell-line), `OSRC2`

- __Liver cancer__
  - Liver hepatocellular carcinoma ([LIHC](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA))): `SNU-449`, `SNU-878`, `Alexander_cells`, `SK-HEP-1`, `JHH-1`

- __Lung cancer__
  - Lung adenocarcinoma ([LUAD](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA))): `NCI-H1869`, `Sq-1`, `NCI-H2444`, `KNS-62`, `NCI-H1944`
  - LUAD KRAS mutated: `LCLC-103H`, `NCI-H1781`, `NCI-H20`
  - LUAD ALK translocated: `NCI-H2110`
  - Lung squamous cell carcinoma ([LUSC](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA))): `HCC-95`, `LC-1_sq-SF`, `LC1F`, `RERF-LC-Sq1`, `NCI-H2196`

- __Mesothelioma__ ([MESO](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA)))
  - Epithelioid: `JL-1`, `IST-MES1`
  - Biphasic: `NCI-H2052`

- __Ovarian cancer__ ([OV](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA)))
  - OV: `OVSAHO`, `JHOS-2`, `COV362`, `KURAMOCHI`, `OAW28`

- __Pancreatic cancer__ ([PAAD](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA)))
  - PAAD: `QGP-1`, [`PANC-1` (commonly-used)](https://github.com/ZJUFanLab/CCL-cGPS/wiki/Commonly-used-cancer-cell-line), `SW_1990`, `KCI-MOH1`

- __Prostatic cancer__ ([PRAD](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA)))
  - PRAD: `VCaP`, [`PC-3` (commonly-used)](https://github.com/ZJUFanLab/CCL-cGPS/wiki/Commonly-used-cancer-cell-line), `NCI-H660`, `22Rv1`

- __Melanoma__ ([SKCM](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA))
  - SKCM: `COLO_792`, `RVH-421`, `MEL-HO`, `Hs_839_T`, `Malme-3M`

- __Stomach cancer__ ([STAD](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA)))
  - Diffuse: `GCIY`, `NUGC-3`, `NUGC-4`
  - Mucinous: `ECC10`, `HuG1-N`, `KE-39`, `MKN1`, `RERF-GC-1B`
  - Tubular: `NCI-N87`, `NUGC-4`, `SH-10-TC`, `ECC10`

- __Thyroid cancer__ ([THCA](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA)))
  - Classical/usual: `TT`, `FTC238`, `ML-1`, `FTC-133`
  - Follicular: `TT`, [`FTC-133` (commonly-used))](https://github.com/ZJUFanLab/CCL-cGPS/wiki/Commonly-used-cancer-cell-line), `FTC238`
  - Tall cell: `CGTH-W-1`

- __Endometrium cancer__
  - Endometrioid ([UCEC](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA))): `MFE-280`, `EFE-184`, `KLE`, `MFE-319`
  - Serous ([UCEC](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA))): `MFE-280`, `EFE-184`, `SNU-1077`, `KLE`
  - Mixed ([UCEC](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA))): `HEC-265`
  - Uterine carcinosarcoma ([UCS](https://github.com/ZJUFanLab/CCL-cGPS/wiki/The-Cancer-Genome-Atlas-(TCGA))): `EFE-184`, `KLE`, `MFE-280`

# Download
- Basic information of cancer cell lines in ([CCLE](https://portals.broadinstitute.org/ccle)) and tumor patients in ([TCGA](https://portal.gdc.cancer.gov/)) can be downloaded in[`data/`](https://github.com/ZJUFanLab/CCL-cGPS/tree/master/data) 
- Gene expression profiles of cancer cell lines and tumor patients can be downloaded in the [release](https://github.com/ZJUFanLab/CCL-cGPS/releases) page.
- Similarity ranking of cell lines for each tumor subtype based on Kolmogorov-Smirnov statistic can be downloaded in in[`R/`](https://github.com/ZJUFanLab/CCL-cGPS/tree/master/R)



# About

CCL-cGPS manuscript is under review. For more information, please visit our website [tcm.zju.edu.cn/cgps](http://tcm.zju.edu.cn/cgps/). Should you have any questions, please contact Xin Shao at xin_shao@zju.edu.cn




