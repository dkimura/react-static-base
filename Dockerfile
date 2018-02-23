
FROM node:alpine@sha256:3238bae64fb867edec63e54691634aa8768d0ba58b4fe9f6ba58ba409d74c77c

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
