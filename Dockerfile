FROM node:17-alpine
WORKDIR /core
ENV PATH=".node_modules/.bin:$PATH"
COPY . .
RUN npm install
RUN npm run build
CMD ["npm", "start"]