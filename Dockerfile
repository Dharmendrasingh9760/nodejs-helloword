FROM node:12.2.0-alpine
WORKDIR app
RUN npm install
COPY . .
EXPOSE 4000
CMD [ "npm", "start" ]
