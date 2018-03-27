FROM continuumio/anaconda3:latest

RUN apt-get update && conda install jupyterlab -y --quiet && mkdir /opt/files
RUN conda install nodejs
RUN pip install pylantern && \
    jupyter labextension install pylantern && \
    jupyter labextension install @jupyter-widgets/jupyterlab-manager && \
    jupyter labextension install @jupyterlab/plotly-extension && \
    jupyter labextension install jupyterlab_bokeh && \
    jupyter labextension install qgrid && \
    jupyter labextension install @jpmorganchase/perspective-jupyterlab
RUN pip install future cufflinks perspective-python seaborn scipy sklearn websocket-client qgrid
RUN conda install -y ujson
RUN apt-get install -y texlive-xetex

COPY ./files /opt/files

EXPOSE 8888

CMD /opt/conda/bin/jupyter lab --notebook-dir=/opt/files --ip='*' --port=8888 --no-browser --NotebookApp.token='' --allow-root