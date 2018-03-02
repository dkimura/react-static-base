
FROM node:alpine@sha256:033df6b519761dd0db6223293ff578ec791702bed96632cd7eb6bc21041b48a3

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
