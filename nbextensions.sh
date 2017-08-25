#!/bin/bash

# Activate ipywidgets extension in the environment that runs the notebook server
jupyter nbextension enable --py widgetsnbextension --sys-prefix

# Install the big contrib_nbextensions package
pip --no-cache-dir install jupyter_contrib_nbextensions
jupyter contrib nbextension install --system

# Install vim bindings
mkdir -p $(jupyter --data-dir)/nbextensions/vim_binding
jupyter nbextension install https://raw.githubusercontent.com/lambdalisue/jupyter-vim-binding/master/vim_binding.js --nbextensions=$(jupyter --data-dir)/nbextensions/vim_binding
jupyter nbextension enable vim_binding/vim_binding
