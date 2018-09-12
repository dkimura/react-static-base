
FROM node:alpine@sha256:abb95c965bae80fbac15e8d9fd3dabaa998a10eea693dd30749163bf52fc64b6

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
