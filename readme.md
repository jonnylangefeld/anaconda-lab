## Anaconda Lab Docker Container

Quick and basic repository to start jupyter lab with python3 and anaconda

    docker pull jonnylangefeld/anaconda_lab

Run from a repository with files you need inside the container:

    docker run -it --rm --name anaconda_lab -p 8888:8888 -v "$PWD":/opt/files jonnylangefeld/anaconda_lab