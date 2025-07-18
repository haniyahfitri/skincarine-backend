FROM node:18
WORKDIR /app
COPY . .
RUN npm install -g json-server
EXPOSE 3000
CMD ["json-server", "--watch", "db.json", "--host", "0.0.0.0", "--port", "3000"]
