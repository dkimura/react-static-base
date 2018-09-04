
FROM node:alpine@sha256:3c8d1894236663c8efd24dc6e979b0f927e81b711e6023b52e5b4617d45b619f

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
