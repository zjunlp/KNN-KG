python main.py --gpus "0," --max_epochs=20  --num_workers=32 \
   --model_name_or_path  bert-base-uncased \
   --accumulate_grad_batches 1 \
   --model_class BertKGC \
   --checkpoint ${yourcheckpoint} \
   --batch_size 64 \
   --pretrain 0 \
   --bce 0 \
   --check_val_every_n_epoch 1 \
   --data_dir dataset/FB15k-237_ind \
   --eval_batch_size 256 \
   --wandb \
   --max_seq_length 64 \
   --lr 5e-5

