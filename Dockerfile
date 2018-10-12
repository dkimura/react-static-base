
FROM node:alpine@sha256:2293114744296273f8962c2da9db071c2ff23f0b1b47a1d3f242683705353a62

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
