#!/bin/bash

docker run \
	       -e RSA_PRIVATE_KEY="$(cat ~/.abuild/jms@wtkns.com-5ecc5067.rsa)" \
	       -e RSA_PRIVATE_KEY_NAME="jms@wtkns.com-5ecc5067.rsa" \
	       -v "$PWD:/home/builder/package" \
	       -v "$HOME/.abuild/packages:/packages" \
	       -v "$HOME/.abuild/jms@wtkns.com-5ecc5067.rsa.pub:/etc/apk/keys/jms@wtkns.com-5ecc5067.rsa.pub" \
	       andyshinn/alpine-abuild:edge

