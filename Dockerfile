
FROM node:alpine@sha256:ab67189c2538fc8ec41f017b570e1ebad1a3894050e5e5f61ffcb8b3a16fa3a9

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
