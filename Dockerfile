
FROM node:alpine@sha256:b2425698ca602430b042b9e754f48eda37d32ee2404615f3087fe3beea02e439

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
