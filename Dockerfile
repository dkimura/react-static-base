
FROM node:alpine@sha256:0a45154d826499738c3643327a0620b01d3fcd138acc78e3eabf9676be86772a

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
