FROM cm2network/steamcmd:latest

RUN mkdir -p /home/steam/Steam/steamapps/common/PalServer

USER steam

EXPOSE 8211/udp

WORKDIR /home/steam/Steam/steamapps/common/PalServer

ENTRYPOINT ["bash", "./entrypoint.sh"]
