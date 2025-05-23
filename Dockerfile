
FROM node:20-alpine


WORKDIR /usr/src/app


RUN apk add --no-cache python3 build-base


COPY package*.json ./


RUN npm install


COPY tsconfig.json ./


COPY hello.ts ./


RUN npm install -g typescript


RUN tsc


EXPOSE 3000


CMD ["node", "hello.js"]