
FROM node:alpine@sha256:a606798026e6443edd22921fddd2c4ba50aa4242e30ebfeaec3c0b29d730b376

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
