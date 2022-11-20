# MICO
This is the code repo for EMNLP2022 MICO: a multi-alternative contrastive learning framework for commonsense knowledge representation

## Data Preparation

### Training Data
   Download [ATOMIC19 and CN-82k](https://github.com/BinWang28/InductivE) and put the `dataset_only` folder under `./preprocess`
   Prepare the training data

   ```
   cd ./preprocess
   python mapping_train_name.py
   ```    

### Evaluation Data
   ```
   cd ./CSQA_eval
   ```
   [COPA](https://people.ict.usc.edu/~gordon/copa.html)
   Transform the original data into the form sastifying the format of MICO.
   ```
   cd ./datasets/copa/
   python transform.py
   ```
   [CommmonsenseQA (CSQA)](https://allenai.org/data/commonsenseqa) and 
   [SocialIQA (SIQA)](https://leaderboard.allenai.org/socialiqa/submissions/get-started)
     

## Training

   ```
   cd ./scripts

   ./train_atomic_k.sh
   ./train_conceptnet_k.sh
   ```


## Evaluation for Zero-shot Commonsense Question Answering

   Use pre-trained LMs to evaluate the CSQA tasks.
   ```
   cd ./LM_baseline
   sh eval_baseline.sh 
   ```
   It will report the accuracy score on the three tasks and generate the prediction file.


   Use MICO to evaluate the CSQA tasks. For example, use checkpoint trained on ATOMIC to test SIQA
   ```
   cd ../CSQA_eval

   ./eval_atomic_copa.sh
   ./eval_atomic_copa_test.sh
   ./eval_atomic_csqa.sh
   ./eval_atomic_siqa.sh
   ./eval_cn_copa.sh
   ./eval_cn_copa_test.sh
   ./eval_cn_csqa.sh
   ./eval_cn_siqa.sh

   ```


## Evaluation for Inductive CSKG Completion

   Use trained models to generate feature first and then retrieve, calculate the MRR and rank top10 score.

   First extract feature of training dataset and test dataset. This step will generate pickle files for CSKG completion
   ```
   cd ./scripts
   ./eval_tail_atomic.sh
   ./eval_tail_cn.sh
   ```

   Then for ATOMIC19
   ```
   python eval_mrr_atomic.py
   ```
   and for ConceptNet
   ```
   python eval_mrr_cn.py
   ```

