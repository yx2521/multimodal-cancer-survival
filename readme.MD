# MMP Framework Reproduction and Extension

This repository contains code and report for reproducing and extending the Multimodal Prototyping (MMP) framework for cancer survival prediction.


## Author
- Yilan Xu

## Project Structure

```
.
├── src/             # All code and notebooks
├── report/          # Final report & summary in PDF format
├── env.yaml         # Conda environment definition
├── readme.MD        # Project overview and usage instructions
```

## Installation

To install required Python packages:

To set up the environment, create a conda environment from `env.yaml`:

```bash
conda env create -f env.yaml
conda activate mmp-env
```




## How to Use the codes

### Step 1
To perform K-means to find histology prototypes:

```bash
cd src
./scripts/prototype/1024/brca_1024.sh 0
./scripts/prototype/1024/luad_1024.sh 0
./scripts/prototype/1024/stad_1024.sh 0
./scripts/prototype/1024/kirc_1024.sh 0
```
Alternatively, can use patch size = 2048 as:
```bash
./scripts/prototype/2048/brca_2048.sh 0
```

### Step 2
To find genomic prototypes, run the notebooks in src/pathway_prototypes_preprocessing.


### Step 3 Multimodal Fusion

Run downstream tasks as follows:
```bash
cd src
./scripts/survival/Trans/brca_surv.sh 0 mmp_brca
./scripts/survival/Trans/luad_surv.sh 0 mmp_luad
./scripts/survival/Trans/stad_surv.sh 0 mmp_stad
./scripts/survival/Trans/kirc_surv.sh 0 mmp_kirc
```
To use different models, use different scripts in src/scripts/survival.
Available Options: 
```bash
cd src
./scripts/survival/OT/brca_surv_ot.sh 0 ot_brca
./scripts/survival/SurvPath/brca_run.sh 0 survpath_brca
./scripts/survival/gene/brca_surv_gene.sh 0 gene_brca
```
To integrate mutation data, run:
```bash
cd src
./scripts/extension/mutation/brca_surv.sh 0 mmp_brca
./scripts/extension/mutation/luad_surv.sh 0 mmp_luad
./scripts/extension/mutation/stad_surv.sh 0 mmp_stad
./scripts/extension/mutation/kirc_surv.sh 0 mmp_kirc
```



## Data Analysis

Please refer to src/stats_tests and src/visualisation.



## Additional Notes

All other relevant implementation details and analysis are included in the final report.

## Declaration

During the development of this project, I made use of GitHub Copilot’s autocompletion feature to assist with coding and generating docstrings.  
Additionally, ChatGPT was used for debugging support and for generating LaTeX code and polishing written content in the final report.
