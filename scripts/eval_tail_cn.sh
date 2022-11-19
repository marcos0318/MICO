# train/dev/test

CUDA_VISIBLE_DEVICES=1 python evaluate_tail.py --save_folder ./ckpts_conceptnet/k2/roberta_large \
    --max_seq_length 32 \
    --temp 0.07 \
    --testfile ../preprocess/CN82k-Ind-train.txt \
    --model roberta-large \
    --tokenizer_name roberta-large \
    --dropout \
    --batch_size 512

CUDA_VISIBLE_DEVICES=1 python evaluate_tail.py --save_folder ./ckpts_conceptnet/k2/roberta_large \
    --max_seq_length 32 \
    --temp 0.07 \
    --testfile ../preprocess/CN82k-Ind-valid.txt \
    --model roberta-large \
    --tokenizer_name roberta-large \
    --dropout \
    --batch_size 512


CUDA_VISIBLE_DEVICES=1 python evaluate_tail.py --save_folder ./ckpts_conceptnet/k2/roberta_large \
    --max_seq_length 32 \
    --temp 0.07 \
    --testfile ../preprocess/CN82k-Ind-test.txt \
    --model roberta-large \
    --tokenizer_name roberta-large \
    --dropout \
    --batch_size 512

