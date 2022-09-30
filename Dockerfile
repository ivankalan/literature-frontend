FROM node:15
WORKDIR /app
COPY package*.json ./
COPY . .
RUN npm install
RUN npm install -g serve
EXPOSE 3000
CMD [ "serve", "-s", "build" ]
