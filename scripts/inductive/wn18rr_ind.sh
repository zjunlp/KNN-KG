python main.py --gpus "0," --max_epochs=12  --num_workers=32 \
   --model_name_or_path  bert-base-uncased \
   --accumulate_grad_batches 1 \
   --bce 0 \
   --model_class BertKGC \
   --checkpoint ${yourcheckpoint} \
   --batch_size 64 \
   --pretrain 0 \
   --check_val_every_n_epoch 1 \
   --data_dir dataset/WN18RR_ind \
   --overwrite_cache \
   --eval_batch_size 256 \
   --precision 16 \
   --wandb \
   --max_seq_length 32 \
   --lr 5e-5

