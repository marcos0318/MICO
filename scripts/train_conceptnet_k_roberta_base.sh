
# dropout for roberta-base
# droupot is optional for roberta-base and bert-base

CUDA_VISIBLE_DEVICES=0 python main.py \
    --temp 0.07 \
    --save_folder ./ckpts_conceptnet/k2/roberta_base \
    --batch_size 196 \
    --max_seq_length 32 \
    --learning_rate 0.000005 \
    --epochs 10 \
    --save_freq 3 \
    --model roberta-base \
    --tokenizer_name roberta-base \
    --trainfile ../preprocess/CN82k-Ind-train.txt \
    --valfile ../preprocess/CN82k-Ind-valid.txt \
    --dropout \
    --k 2

