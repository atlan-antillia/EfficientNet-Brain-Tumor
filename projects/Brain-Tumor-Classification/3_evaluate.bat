rem 3_evaluate.bat
python ../../EfficientNetV2Evaluator.py ^
  --model_name=efficientnetv2-m  ^
  --model_dir=./models ^
  --data_dir=./Testing ^
  --evaluation_dir=./evaluation ^
  --fine_tuning=True ^
  --trainable_layers_ratio=0.3 ^
  --eval_image_size=480 ^
  --num_classes=4 ^
  --label_map=./label_map.txt ^
  --mixed_precision=True ^
  --debug=False 
 