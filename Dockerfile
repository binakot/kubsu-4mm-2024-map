# ------------------------------------------------------
# Build
# ------------------------------------------------------
FROM node:20 as builder

WORKDIR /build
COPY package.json package-lock.json ./
RUN npm ci
ENV PATH = "./node_modules/.bin:$PATH"

COPY . ./
RUN npm run build

# ------------------------------------------------------
# Production
# ------------------------------------------------------
FROM nginx:alpine

COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY nginx/ssl /etc/nginx/certificates
COPY --from=builder /build/dist/browser /usr/share/nginx/html
