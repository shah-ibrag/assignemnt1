FROM node:14-alpine AS development
ENV NODE_ENV development

# Add a work directory
WORKDIR /ibragimov_shawn_site

# Cache and Install dependencies
COPY package.json .
COPY yarn.lock .
RUN yarn install --ignore-engines

# Copy app files
COPY . .

# Expose port
EXPOSE 7775

# Start the app
CMD ["yarn", "start"]