#!/bin/bash

# Activate ipywidgets extension in the environment that runs the notebook server
RUN jupyter nbextension enable --py widgetsnbextension --sys-prefix
RUN jupyter contrib nbextension install --system

# Vim Bindings
mkdir -p $(jupyter --data-dir)/nbextensions/vim_binding
jupyter nbextension install https://raw.githubusercontent.com/lambdalisue/jupyter-vim-binding/master/vim_binding.js --nbextensions=$(jupyter --data-dir)/nbextensions/vim_binding
jupyter nbextension enable vim_binding/vim_binding
