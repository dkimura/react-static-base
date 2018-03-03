
FROM node:alpine@sha256:393903c98db0eb1d9c75381f222cad23319ac883edd65b940842785fbfa0ac2f

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
