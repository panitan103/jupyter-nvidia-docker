FROM nvcr.io/nvidia/tensorflow:23.12-tf2-py3
WORKDIR /root
RUN pip install jupyter
RUN jupyter notebook --generate-config
RUN wget https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh
RUN bash Anaconda3-2023.09-0-Linux-x86_64.sh
EXPOSE 8888