## Anaconda Lab Docker Container

    docker build -t jonnylangefeld/anaconda-lab .

For development:

    docker run -it --rm --name anaconda_lab -p 8888:8888 -v "$PWD/files":/opt/files jonnylangefeld/anaconda_lab