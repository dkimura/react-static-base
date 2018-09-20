
FROM node:alpine@sha256:782a30c4579ed318edada6cfa945e6804cc0835799be785172429e88f11ec39f

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
