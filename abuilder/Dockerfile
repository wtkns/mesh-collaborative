FROM alpine:3.11
ENV PACKAGER="james watkins <jms@wtkns.com>"

RUN apk -U --no-cache add alpine-sdk 

RUN mkdir -p /var/cache/distfiles \
    && chgrp abuild /var/cache/distfiles \
    && chmod g+w /var/cache/distfiles 

RUN adduser --system --disabled-password --ingroup abuild packager \
    && echo "packager    ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER packager

# RUN git clone git://git.alpinelinux.org/aports

RUN abuild-keygen -a -i

# RUN pwd && ls -lah

# RUN touch /home/packager/.abuild/client.txt
# RUN cat /home/packager/.abuild/host.txt


# RUN adduser -G abuild -g "Alpine Package Builder" -s /bin/ash -D builder \
#   && echo "builder ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
#   && mkdir /packages \
#   && chown builder:abuild /packages \
#   && mkdir -p /var/cache/apk \
#   && ln -s /var/cache/apk /etc/apk/cache
# COPY /abuilder /bin/

# ENTRYPOINT ["abuilder", "-r"]
# WORKDIR /home/builder/package
# ENV RSA_PRIVATE_KEY_NAME ssh.rsa
# ENV PACKAGER_PRIVKEY /home/builder/${RSA_PRIVATE_KEY_NAME}
# ENV REPODEST /packages
# VOLUME ["/home/builder/package"]