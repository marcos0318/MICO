CUDA_VISIBLE_DEVICES=0 python evaluate_socialiqa.py --save_folder ../scripts/ckpts_atomic/k2/roberta_large \
    --max_seq_length 64 \
    --temp 0.07 \
    --model roberta-large \
    --tokenizer_name roberta-large \
    --testfile ./dataset/SIQA/dev.jsonl \
    --testlabel ./dataset/SIQA/dev-labels.lst



CUDA_VISIBLE_DEVICES=0 python evaluate_commonsenseqa.py --save_folder ../scripts/ckpts_atomic/k2/roberta_large \
    --max_seq_length 64 \
    --temp 0.07 \
    --model roberta-large \
    --tokenizer_name roberta-large \
    --testfile ./dataset/CSQA/dev_rand_split.jsonl



CUDA_VISIBLE_DEVICES=0 python evaluate_copa.py --save_folder ../scripts/ckpts_atomic/k2/roberta_large \
    --max_seq_length 64 \
    --temp 0.07 \
    --model roberta-large \
    --tokenizer_name roberta-large \
    --testfile ./dataset/COPA/copa-dev-new.jsonl


