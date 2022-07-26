import os
import sys
import glob
import numpy as np
import random
import shutil
import traceback

def create_test_dataset(test_dir, target_dir, num=20):
  classes = ["glioma_tumor", "meningioma_tumor", 
             "no_tumor", "pituitary_tumor"]

  for cls in classes:
   
    dir = test_dir + "/" + cls
    pattern = dir + "/*.jpg"
    files = glob.glob(pattern)
    samples = random.sample(files, num)
    for i, sample in enumerate(samples):
       basename = os.path.basename(sample)
       nameonly = basename.split(".")[0]
       target_file = target_dir + "/" + cls + "___" + nameonly + "_" + str(i+101) + ".jpg"
       print("--- copied {} to {}".format(sample, target_file))
       shutil.copy2(sample, target_file)

    
if __name__ == "__main__":
  test_dir = "./Testing"
  dest_dir = "./test"
  try:
    if not os.path.exists(test_dir):
      raise Exception("Not found {}".format(test_dir))

    if not os.path.exists(dest_dir):
      os.makedirs(dest_dir)

    create_test_dataset(test_dir, dest_dir, num=10)

  except:
    traceback.print_exc()
