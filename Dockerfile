
FROM node:alpine@sha256:f5cb20c09bd56d2cb12228d5919ad0aca087c45394566ca10ba18647bd0995cb

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
