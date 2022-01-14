python main.py --gpus "1," --max_epochs=16  --num_workers=32 \
   --model_name_or_path  bert-base-uncased \
   --accumulate_grad_batches 1 \
   --model_class BertKGC \
   --batch_size 128 \
   --pretrain 1 \
   --bce 0 \
   --check_val_every_n_epoch 1 \
   --overwrite_cache \
   --data_dir dataset/FB15k-237 \
   --eval_batch_size 256 \
   --wandb \
   --max_seq_length 64 \
   --lr 1e-4