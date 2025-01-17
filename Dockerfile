FROM --platform=amd64 node:18-alpine
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --production
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000