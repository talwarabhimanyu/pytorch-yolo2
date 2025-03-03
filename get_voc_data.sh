
# Scrip to download and process Pascal VOC data
# Source: https://github.com/marvis/pytorch-yolo2
wget -q https://pjreddie.com/media/files/VOCtrainval_11-May-2012.tar
wget -q https://pjreddie.com/media/files/VOCtrainval_06-Nov-2007.tar
wget -q https://pjreddie.com/media/files/VOCtest_06-Nov-2007.tar
tar -xf VOCtrainval_11-May-2012.tar
tar -xf VOCtrainval_06-Nov-2007.tar
tar -xf VOCtest_06-Nov-2007.tar

python voc_label.py
cat 2007_train.txt 2007_val.txt 2012_*.txt > voc_train.txt
