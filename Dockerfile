FROM node:17-alpine

RUN npm install -g nodemon

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 4000
# required for docker desktop port mapping

# CMD ["node", "app.js"]

CMD ["npm","run","dev"] 
#to run nodemon and watch the scripts