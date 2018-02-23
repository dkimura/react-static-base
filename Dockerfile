
FROM node:alpine@sha256:a01861d1ccb11a32399aaa0635b86c8c13a12d8b16a97294b52a733dcb189991

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
