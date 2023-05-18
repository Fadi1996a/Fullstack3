# Stage 1: Install dependencies
FROM node:20 as builder

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

# Stage 2: Serve the app with ng serve
FROM node:20 as development

WORKDIR /app

COPY --from=builder /app .

EXPOSE 4200

CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "4200"]
