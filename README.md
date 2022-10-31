# A fork of the official implementation of the paper "RASAT: Integrating Relational Structures into Pretrained Seq2Seq Model for Text-to-SQL"(EMNLP 2022)

This is a fork of the official implementation of the following paper:

Jiexing Qi and Jingyao Tang and Ziwei He and Xiangpeng Wan and Chenghu Zhou and Xinbing Wang and Quanshi Zhang and Zhouhan Lin. RASAT: Integrating Relational Structures into Pretrained Seq2Seq Model for Text-to-SQL. Proceedings of the 2022 Conference on Empirical Methods in Natural Language Processing (EMNLP).

If you use this code, please cite:

```
@article{Qi2022RASATIR,
  title={RASAT: Integrating Relational Structures into Pretrained Seq2Seq Model for Text-to-SQL},
  author={Jiexing Qi and Jingyao Tang and Ziwei He and Xiangpeng Wan and Yu Cheng and Chenghu Zhou and Xinbing Wang and Quanshi Zhang and Zhouhan Lin},
  journal={ArXiv},
  year={2022},
  volume={abs/2205.06983}
}
```


# Quick start

## Code downloading
This repository uses git submodules. Clone it like this:

```
git clone --recurse-submodules https://github.com/Torrin-MSci-Project/rasat.git
```
## Download the dataset

Ensure pip, make and unzip are installed, e.g. on Ubuntu run:
```
sudo apt install unzip
sudo apt install make
sudo apt install python3-pip
. ~/.profile
```

Download the dataset files by running:
```
cd rasat
./download_datasets.sh
```

### Use docker
The best performance is achieved by exploiting PICARD[1], and if you want to reproduce it, we recommend you use Docker.

To install Docker on Ubuntu, run:
```
./install_docker.sh
```

You can simply use 
```
make eval
```
to start a new docker container for an interaction terminal that supports PICARD. 

Since the docker environment doesn't have stanza, so you should run these commands before training or evaluting:
```
pip install stanza
python3 seq2seq/stanza_downloader.py
CUDA_VISIBLE_DEVICES="0"
wandb login
```

Then to run training/evaluation, run:
```
python3 seq2seq/eval_run_seq2seq.py configs/spider/eval_spider_rasat_4160.json
```
The second argument can be changed to the config file you want to use for training/evaluation.

For long runs, run the training/evaluation in the background with:
```
nohup python3 seq2seq/eval_run_seq2seq.py configs/spider/eval_spider_rasat_4160.json &
```
This logs output to nohup.out. You can exit the Docker container and close the terminal if you use nohup.

To re-enter the last exited Docker container run:

```
docker start `docker ps -q -l` && docker attach `docker ps -q -l`i
```

**Note:We only use PICARD for seperately evaluation.**

### Do not use Docker
If Docker is not available to you, you could also run it in a python 3.9.7 environment 

```bash
conda create -n rasat python=3.9.7
conda activate rasat
pip3 install torch==1.8.2 torchvision==0.9.2 torchaudio==0.8.2 --extra-index-url https://download.pytorch.org/whl/lts/1.8/cu111
pip install -r requirements.txt
```

However, you could not use PICARD in that way.




## Training

You can simply run these code like this:

- Single-GPU
```
CUDA_VISIBLE_DEVICES="0" python3 seq2seq/run_seq2seq.py configs/sparc/train_sparc_rasat_small.json
```

- Multi-GPU 
```
CUDA_VISIBLE_DEVICES="2,3" python3 -m torch.distributed.launch --nnodes=1 --nproc_per_node=2 seq2seq/run_seq2seq.py configs/sparc/train_sparc_rasat_small.json
```

and you should set --nproc_per_node=#gpus to make full use of all GPUs. A recommend total_batch_size = #gpus * gradient_accumulation_steps * per_device_train_batch_size is 2048.


## Evalutaion

You can simply run these codes:

```
CUDA_VISIBLE_DEVICES="2" python3 seq2seq/eval_run_seq2seq.py configs/cosql/eval_cosql_rasat_576.json
```

Notice：If you use Docker for evaluation, you may need to change the filemode for these dictionary before starting a new docker container:

```
chmod -R 777 seq2seq/
chmod -R 777 dataset_files/
```


# Result and checkpoint

The models shown below use database content, and the corresponding column like "edge_type", and "use_coref" are parameters set in config.json. All these model checkpoints are available in Huggingface. 

## CoSQL
| model                                              | edge_type | use_dependency | use_coref | QEM/IEM(Dev) | QEX/IEX(Dev) | QEM/IEM(Test) | QEX/IEX(Test) |
|---------------------------------------------------:|-----------|----------------|-----------|--------------|--------------|---------------|---------------|
| Jiexing/cosql_add_coref_t5_3b_order_0519_ckpt-576  | Default   | FALSE          | TRUE      | 56.1/25.9    | 63.2/34.1    | -             | -             |
| + PICARD                                           | Default   | FALSE          | TRUE      | 58.6/27.0    | 67.0/39.6    | 53.6/24.1     | 64.9/34.3     |
| Jiexing/cosql_add_coref_t5_3b_order_0519_ckpt-2624 | Default   | FALSE          | TRUE      | 56.4/25.6    | 63.1/34.8    | -             | -             |
| + PICARD                                           | Default   | FALSE          | TRUE      | 57.9/26.3    | 66.1/38.6    | **55.7/26.5**     | **66.3/37.4**     |




## SParC
| model                                              | edge_type | use_dependency | use_coref | QEM/IEM(Dev) | QEX/IEX(Dev) | QEM/IEM(Test) | QEX/IEX(Test) |
|---------------------------------------------------:|-----------|----------------|-----------|--------------|--------------|---------------|---------------|
| Jiexing/sparc_add_coref_t5_3b_order_0514_ckpt-4224 | Default   | FALSE          | TRUE      | 65.0/45.5    | 72.4/53.1    | -             | -             |
| + PICARD                                           | Default   | FALSE          | TRUE      | 67.5/46.9    | 73.2/53.8    | 67.7/44.9     | 74.0/52.6     |
| Jiexing/sparc_add_coref_t5_3b_order_0514_ckpt-5696 | Default   | FALSE          | TRUE      | 63.7/47.4    | 68.1/50.2    | -             | -             |
| + PICARD                                           | Default   | FALSE          | TRUE      | 67.1/49.3    | 72.5/53.6    | 67.3/45.2     | 73.6/52.6     |



## Spider

| model                              | edge_type | use_dependency | use_coref | EM(Dev) | EX(Dev) | EM(Test) | EX(Test) |
|-----------------------------------:|-----------|----------------|-----------|---------|---------|----------|----------|
| Jiexing/spider_relation_t5_3b-2624 | Default   | FALSE          | FALSE     | 72      | 76.6    | -        | -        |
|                           + PICARD | Default   | FALSE          | FALSE     | 74.7    | **80.5**    | 70.6     | **75.5**     |
| Jiexing/spider_relation_t5_3b-4160 | Default   | FALSE          | FALSE     | 72.6    | 76.6    | -        | -        |
|                           + PICARD | Default   | FALSE          | FALSE     | **75.3**    | 78.3    | **70.9**     | 74.5     |


# Acknowledgements
We would like to thank Tao Yu, Hongjin Su, and Yusen Zhang for running evaluations on our submitted models. We would also like to thank Lyuwen Wu for her comments on the Readme file of our code repository.
