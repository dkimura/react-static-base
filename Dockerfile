
FROM node:alpine@sha256:7d95f12a2ad7cd04f75ed8ec5716ef945779274fc3e2b78e6284a394c9384f86

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
