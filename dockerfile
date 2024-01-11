FROM huggingface/transformers-pytorch-gpu:4.35.2
#things alredy installed in this https://github.com/huggingface/transformers/blob/main/docker/transformers-pytorch-gpu/Dockerfile
LABEL maintainer="Shivani Gowda"

RUN python3 -m pip install --upgrade pip
# RUN python3 -m pip install pandas==2.0.3 numpy==1.26.3 faiss-gpu==1.7.2 fastparquet==2023.10.1 
RUN python3 -m pip install pandas==2.0.3 numpy==1.24.4 faiss-gpu==1.7.2 fastparquet==2023.10.1 jupyterlab datasets

COPY retriver.ipynb /app/
# When installing in editable mode, `transformers` is not recognized as a package.
# this line must be added in order for python to be aware of transformers.
# RUN cd transformers && python3 setup.py develop