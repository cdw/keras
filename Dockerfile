from tensorflow/tensorflow:latest-py3

# The main point
RUN pip install keras

# Nice to haves
RUN pip --no-cache-dir install \
        tqdm \
        seaborn \
        statsmodels \
        scikit-image

## Configure Jupiter notebook extensions
 # Enable JS widgets
  RUN jupyter nbextension enable --py widgetsnbextension
 # Install contributed notebook extensions
  RUN pip install https://github.com/ipython-contrib/jupyter_contrib_nbextensions/tarball/master
  RUN jupyter contrib nbextension install --system
  RUN jupyter nbextension enable collapsible_headings/main
  RUN jupyter nbextension enable spellchecker/main
 # Install vim bindings
  RUN jupyter nbextension install https://github.com/lambdalisue/jupyter-vim-binding/archive/master.tar.gz --system
  RUN jupyter nbextension enable jupyter-vim-binding-master/vim_binding

