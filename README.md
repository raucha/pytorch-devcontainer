# Pytorch Devcontainer

## Setup

- Run below in pytorch workspace

```
$ git clone https://github.com/raucha/pytorch-devcontainer .devcontainer

```

## Launch
- Then open command-palete(`ctrl + shift + P`) and select below
  - -> `Remote-Containers: Reopen in Container`
  - -> `Remote-Containers: Open Folder in Container...`


## Test

```
$ python -c 'import torch; print(torch.cuda.is_available())'
```