# Use an official nginx image
FROM nginx:alpine

# Install bash
RUN apk add --update bash && rm -rf /var/cache/apk/*

COPY filter.sh /usr/local/bin/
