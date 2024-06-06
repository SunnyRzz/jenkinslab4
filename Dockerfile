FROM node:14
WORKDIR /app
COPY . .
RUN npm install
COPY . .
EXPOSE 5000
CMD ["node", "app.js"]
