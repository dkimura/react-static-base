
FROM node:alpine@sha256:21b58de0d309e8b793fb508e610762e522074a3bd5bef6f3ff74b7bade338aec

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
