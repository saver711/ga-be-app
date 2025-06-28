FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME temp
ENV MONGODB_CLUSTER_ADDRESS airbnb-main.ejr8s4t.mongodb.net
ENV MONGODB_USERNAME saver
ENV MONGODB_PASSWORD 001600997

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]