python main.py --gpus "2," --max_epochs=8  --num_workers=32 \
   --model_name_or_path  bert-base-uncased \
   --accumulate_grad_batches 1 \
   --model_class BertKGC \
   --batch_size 64 \
   --checkpoint ${yourcheckpoint} \
   --litmodel_class UseEntityEmbeddingLitModel \
   --pretrain 0 \
   --bce 0 \
   --overwrite_cache \
   --check_val_every_n_epoch 1 \
   --data_dir dataset/FB15k-237_ind \
   --eval_batch_size 1024 \
   --wandb \
   --max_seq_length 64 \
   --lr 3e-5
