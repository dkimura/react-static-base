
FROM node:alpine@sha256:534683fb14402df95744d36b5a988efa7d022036da5cc659a29be794460ec56d

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
