FROM node:12-alpine
WORKDIR /WIK-DPS-TP01
COPY . .
RUN yarn install --production
CMD ["node", "/WIK-DPS-TP01/build/index.js"]
