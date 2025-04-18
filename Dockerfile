FROM node:alpine
WORKDIR /app
COPY package.json .
COPY vite.config.js .
RUN npm install
COPY . .

EXPOSE 5173
CMD [ "npm", "run", "dev", "--", "--host", "0.0.0.0"]