
FROM node:alpine@sha256:6073dfb3486954809f227caccf26e2af22002b8df13a2889564bee3520ef84bd

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
