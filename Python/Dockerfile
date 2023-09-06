FROM alpine:3.16.0

ARG _USER=usrapp
ARG _HOME_USER=/workspace/app
ARG _DIRECTORY_CODE=/workspace/app/code

USER root

# Preparando el entorno para el proyecto
RUN mkdir -p ${_DIRECTORY_CODE}
RUN adduser -h ${_HOME_USER} -D -s /bin/sh ${_USER}
RUN apk add python3 py3-pip
COPY ./scripts/entrypoint.sh ${_DIRECTORY_CODE}
COPY ./scripts/requirements.txt ${_DIRECTORY_CODE}
RUN chown -R ${_USER:$_USER} ${_DIRECTORY_CODE}
RUN chmod +x ${_DIRECTORY_CODE}/entrypoint.sh

# Instalando paquetes correspondientes




WORKDIR ${_DIRECTORY_CODE}
USER usrapp

#ENTRYPOINT ["/workspace/app/code/entrypoint.sh"]