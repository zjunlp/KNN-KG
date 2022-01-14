checkpoint_path="the model stored in training"
python main.py --gpus "0," --max_epochs=8  --num_workers=32 \
   --model_name_or_path  bert-base-uncased \
   --accumulate_grad_batches 1 \
   --model_class BertKGC \
   --batch_size 128 \
   --checkpoint ${checkpoint_path} \
   --litmodel_class GetEntityEmbeddingLitModel \
   --pretrain 0 \
   --bce 0 \
   --check_val_every_n_epoch 1 \
   --data_dir dataset/wn18rr \
   --eval_batch_size 256 \
   --max_seq_length 64 \
   --lr 3e-5
