
FROM node:alpine@sha256:1b79097c21e5b01ad871c2c6684da5278b302b49201b747836757446cd095cd4

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
