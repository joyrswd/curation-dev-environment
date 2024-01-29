FROM node:alpine

ARG CURATION_APP_PATH

RUN apk add --no-cache git bash curl openssh nano wget grep sed tzdata

RUN mkdir -p ${CURATION_APP_PATH}
WORKDIR ${CURATION_APP_PATH}
