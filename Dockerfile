FROM continuumio/anaconda3:latest

RUN apt-get update && conda install jupyterlab -y --quiet && mkdir /opt/files

COPY ./files /opt/files

EXPOSE 8888

CMD /opt/conda/bin/jupyter lab --notebook-dir=/opt/files --ip='*' --port=8888 --no-browser --NotebookApp.token='' --allow-root