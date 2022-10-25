# FROM node:12-alpine
# WORKDIR /WIK-DPS-TP01
# COPY . .
# RUN yarn install --production
# CMD ["node", "/WIK-DPS-TP01/build/index.js"]


FROM node:18
ENV NODE_ENV=develop
WORKDIR /WIK-DPS-TP01
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --develop
COPY . .
EXPOSE 8080
CMD [ "node", "/WIK-DPS-TP01/build/index.js" ]