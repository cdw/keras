from tensorflow/tensorflow:latest-gpu-py3

# The main point
RUN pip install keras

# Nice to haves
RUN pip --no-cache-dir install \
        tqdm \
        seaborn \
        hdf5 \
        statsmodels \
        scikit-image \
        bokeh \
	jupyter_contrib_nbextensions

# Configure notebook plugins
RUN ./nbextensions.sh
