#!/bin/bash
pip install gdown
mkdir -p dataset_files/ori_dataset
cd dataset_files
gdown 1_AckYkinAnhqmRQtGsQgUKAnTHxxX5J0
gdown 1yQ_mTwF4VzBB1_v5MB48odyXEGao2LrH
gdown 13Abvu5SUMSP3SJM-ZIj66mOkeyAquR73
gdown 14x6lsWqlu6gR-aYxa6cemslDN3qT3zxP
cd ..
unzip dataset_files/spider.zip -d dataset_files/ori_dataset/
unzip dataset_files/spider-dk.zip -d dataset_files/ori_dataset/
mv dataset_files/ori_dataset/spider-dk dataset_files/ori_dataset/spider_dk
unzip dataset_files/cosql_dataset.zip -d dataset_files/ori_dataset/
unzip dataset_files/sparc.zip -d dataset_files/ori_dataset/
unzip preprocessed_dataset.zip -d ./dataset_files/
python -c "from format_gold import format_gold; format_gold('dataset_files/ori_dataset/spider_dk/spider-DK.json')"
chmod -R 777 seq2seq/
chmod -R 777 dataset_files/
