# Base image with Node.js and Python 3
FROM node:20-bookworm-slim

# Install Python 3
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-minimal \
    && ln -s /usr/bin/python3 /usr/bin/python \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy root configs and backend
COPY backend/package*.json ./backend/
RUN cd backend && npm install --production

# Copy frontend and build
COPY frontend/package*.json ./frontend/
RUN cd frontend && npm install

COPY frontend ./frontend
RUN cd frontend && npm run build

# Copy backend source & data
COPY backend ./backend

ENV PORT=5000
ENV NODE_ENV=production
EXPOSE 5000

CMD ["node", "backend/server.js"]

