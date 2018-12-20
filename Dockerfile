
FROM node:alpine@sha256:1c582d3e2b7b92ac7e736fcb37cd01cd1c5759cba82d9ce82083f1c9a10185c9

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
