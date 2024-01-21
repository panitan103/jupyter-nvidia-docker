
FROM nvcr.io/nvidia/tensorflow:23.12-tf2-py3 as builder
WORKDIR /root
RUN pip install jupyter
RUN jupyter notebook --generate-config
EXPOSE 8888


FROM continuumio/anaconda3 
WORKDIR /root
COPY --from=builder /root .



