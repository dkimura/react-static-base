
FROM node:alpine@sha256:35f23456adabb78bcf46972466e62b0d9629caad468b290a157b3f952c274c4c

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
