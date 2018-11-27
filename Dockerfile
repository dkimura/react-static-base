
FROM node:alpine@sha256:9d2d70ae74146f27fc0076763286e33f28297cd4cfa51350825a2531392165d3

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
