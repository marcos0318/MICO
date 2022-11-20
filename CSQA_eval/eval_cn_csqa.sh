
CUDA_VISIBLE_DEVICES=3 python evaluate_commonsenseqa.py --save_folder ../scripts/ckpts_conceptnet/k2/roberta_large \
    --max_seq_length 64 \
    --temp 0.07 \
    --model roberta-large \
    --tokenizer_name roberta-large \
    --testfile ./dataset/CSQA/dev_rand_split.jsonl
