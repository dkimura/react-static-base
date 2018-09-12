
FROM node:alpine@sha256:260b6f423242b7ac5e9b476ef25f26d72d1b55353a5c9be039c91398388cdd50

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
