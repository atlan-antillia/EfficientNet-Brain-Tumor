python ../../EfficientNetV2ModelTrainer.py ^
  --model_dir=./models ^
  --model_name=efficientnetv2-m  ^
  --dataset_cfg=imagenetFt ^
  --ckpt_dir=../../efficientnetv2-m/model ^
  --num_classes=4 ^
  --image_size=384 ^
  --data_dir=./Training ^
  --model_dir=./models ^
  --data_augmentation=True ^
  --fine_tuning=True ^
  --monitor=val_loss ^
  --learning_rate=0.005 ^
  --trainable_layers_ratio=0.2 ^
  --num_epochs=20 ^
  --batch_size=4 ^
  --patience=10 ^
  --debug=True  


