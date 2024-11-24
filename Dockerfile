# Dockerfile
FROM alpine:3.20

# Set environment variable from build arguments
ARG MY_SECRET_KEY
ENV MY_SECRET_KEY=${MY_SECRET_KEY}

# Echo the environment variable during the build process
RUN echo "The secret key is: $MY_SECRET_KEY"

CMD ["echo", "Dockerfile build complete!"]

