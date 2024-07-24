FROM node:14
WORKDIR /app
COPY . .
RUN npm install
WORKDIR /app/src/client
RUN npm install
RUN npm run build
WORKDIR /app/src/server
EXPOSE 3000
CMD ["npm", "start"]
