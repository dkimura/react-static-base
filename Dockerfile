
FROM node:alpine@sha256:c32a2538e8968e25e1ed2fb6a71016e7c920c575426f146c12be4d831184bf7c

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
