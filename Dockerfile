
FROM node:alpine@sha256:d662f383626a23aa0b13d612b3e12da4faa51ea8d557883a33264df0b67ba5cc

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
