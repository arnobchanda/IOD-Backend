FROM iod2/iod-frontend:latest

WORKDIR /app

COPY package*.json ./
COPY server ./server
COPY server.js ./

RUN npm install --production

ENV NODE_ENV=production 
ENV PORT=3000

EXPOSE 3000
# CMD ["npm", "start"]
