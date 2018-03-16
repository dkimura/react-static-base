
FROM node:alpine@sha256:0fb8f93d4667e714a52d78a3cd6ec754867d3acabb3a5bab93b31cf6d851d4e2

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
