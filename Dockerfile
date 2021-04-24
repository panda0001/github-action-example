# === The official alpine docker image - https://hub.docker.com/_/alpine
FROM alpine:3
LABEL Maintainer="panda0001@gmail.com"
# =  Set environment variables. Environment replacement - https://docs.docker.com/engine/reference/builder/#environment-replacement
# Environment variables are notated in the Dockerfile either with $variable_name or ${variable_name}.
# ENV <key> <value>
ENV TZ=Asia/Taipei

# = 設定工作目錄
WORKDIR /root/

# === Packages install
RUN apk update
RUN apk upgrade

#! Change TimeZone
RUN apk add --update tzdata

#! bash and some util
RUN apk add --no-cache bash bash-doc bash-completion \
    busybox-extras coreutils curl wget vim

#! rc-service (alpine service manager)
RUN apk add openrc --no-cache

#! Clean APK cache
RUN rm -rf /var/cache/apk/*



# = VOLUME Setup
# VOLUME /app

# = 指定開放Port
# EXPOSE 80

# = Set the default command. # 建立新容器時要執行的指令
CMD ["/bin/sh"]        