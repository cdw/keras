from tensorflow/tensorflow:latest-gpu-py3

# The main point
RUN pip install keras

# Nice to haves
RUN pip --no-cache-dir install \
        tqdm \
        seaborn \
        statsmodels \
        scikit-image

# Configure notebook plugins
COPY nbextensions.sh ./
RUN ./nbextensions.sh
