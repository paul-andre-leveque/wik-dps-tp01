FROM node:18-alpine 
WORKDIR /WIK-DPS-TP01
COPY ["package.json", "package-lock.json*","tsconfig.json", "./"]
RUN npm install
COPY . . 
RUN npx tsc
RUN adduser -D Paul
USER Paul
EXPOSE 8080
CMD ["node", "/WIK-DPS-TP01/build/index.js"]
