FROM ogrisel/distributed

RUN pip install -force dask-xgboost
# Install py-xgboost after dask, else ELF issue
RUN conda install -y py-xgboost
RUN conda install -y seaborn

