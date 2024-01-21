
FROM nvcr.io/nvidia/tensorflow:23.12-tf2-py3
WORKDIR /root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    libgl1-mesa-glx \
    ffmpeg \
    libsm6 \
    libxext6 \
    libgl1-mesa-glx \
    libegl1-mesa \
    libxrandr2 \
    libxrandr2 \
    libxss1 \
    libxcursor1 \
    libxcomposite1 \
    libasound2 \
    libxi6 \
    libxtst6

    
RUN mkdir -p /root/Downloads
RUN wget https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh -O /root/Downloads/anaconda3.sh
RUN bash /root/Downloads/anaconda3.sh -b -p /root/anaconda3
#RUN rm Anaconda3-2023.09-0-Linux-x86_64.sh
#ENV PATH /root/anaconda3/bin:$PATH

# RUN conda update conda
# RUN conda update anaconda
# RUN conda update --all



RUN jupyter notebook --generate-config --allow-root
EXPOSE 8888

CMD ["jupyter", "lab", "--allow-root", "--ip='*'", "--port=8888", "--no-browser"]








