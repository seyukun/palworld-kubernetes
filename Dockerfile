FROM cm2network/steamcmd:latest

RUN mkdir -p /home/steam/Steam/steamapps/common/PalServer

COPY ./entrypoint.sh /home/steam/Steam/steamapps/common/PalServer/entrypoint.sh

USER root
RUN chmod +x /home/steam/Steam/steamapps/common/PalServer/entrypoint.sh
USER steam

EXPOSE 8211/udp

WORKDIR /home/steam/Steam/steamapps/common/PalServer

ENTRYPOINT ["./entrypoint.sh"]