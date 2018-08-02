
FROM node:alpine@sha256:8ccd3aa2e3340c79bb18aaa414523b2d81b0da05e36b52dfe6e0686aa3583411

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
