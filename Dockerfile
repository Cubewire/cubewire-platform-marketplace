FROM alpine:3.21
LABEL maintainer="Cubewire <support@cubewire.com>"
LABEL description="Cubewire Platform - Redefining the Payment Landscape with Web3"
LABEL vendor="Cubewire"
LABEL url="https://www.cubewire.com"
LABEL goog-partner-solution="SOLUTION_URN"
RUN apk update && apk upgrade --no-cache && addgroup -S cubewire && adduser -S cubewire -G cubewire
COPY README.md /opt/cubewire/README.md
USER cubewire
ENTRYPOINT ["cat", "/opt/cubewire/README.md"]
