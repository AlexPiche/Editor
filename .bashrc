export PS1_OLD=$PS1
export PS1="\[\033[1;91m\]\w \[\033[1;91m\]\$\[\033[0m\] "

alias eclimd='/Applications/eclipse/eclimd'
alias emacs='open -a /Applications/Emacs.app $1'
export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH
export PATH="/Applications/Julia-0.3.8.app/Contents/Resources/julia/bin:$PATH" 

export MLPYTHON_DATASET_REPO=/usr/local/lib/ml_datasets/
set -o vi


export PATH=/Users/alexpiche/torch/install/bin:$PATH  # Added automatically by torch-dist
export LD_LIBRARY_PATH=/Users/alexpiche/torch/install/lib:$LD_LIBRARY_PATH  # Added automatically by torch-dist
export DYLD_LIBRARY_PATH=/Users/alexpiche/torch/install/lib:$DYLD_LIBRARY_PATH  # Added automatically by torch-dist
