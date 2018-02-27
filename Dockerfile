
FROM node:alpine@sha256:7422a2653c781eb8280a9b811f0c5b605b54851fe458b09d9ccd6e04fbbca2ab

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
