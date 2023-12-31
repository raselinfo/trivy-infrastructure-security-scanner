FROM node:18-alpine3.18

WORKDIR /app

COPY package.json ./

RUN yarn install --frozen-lockfile

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
