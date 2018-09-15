
FROM node:alpine@sha256:e16eaa62375ae9c1561cb6db09be25f78d96a4636c7240af4a03815f5ddf6ad7

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
