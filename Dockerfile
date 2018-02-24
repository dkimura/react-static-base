
FROM node:alpine@sha256:0cde8b95153ed80438bea424b06cb8c0a59436f44672f095bd1cf275b044ec9a

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
