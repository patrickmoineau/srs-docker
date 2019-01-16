FROM ubuntu
EXPOSE 8080
EXPOSE 1985
EXPOSE 1935
RUN apt update
RUN apt install sudo -y
RUN apt install ffmpeg -y
RUN apt install python -y
RUN apt install git -y
RUN cd / && git clone https://github.com/patrickmoineau/srs.git && cd srs/trunk && ./configure && make
RUN apt-get -qy autoremove
RUN chmod +x /srs/run.sh
CMD ["/bin/bash"]