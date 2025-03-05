# Stage 1: Extract kubectl (multi-arch aware)
FROM alpine:3.19 AS builder
ARG TARGETARCH
RUN apk add --no-cache curl && \
    curl -LO "https://dl.k8s.io/release/v1.32.2/bin/linux/${TARGETARCH}/kubectl" && \
    chmod +x kubectl

# Stage 2: Final image extending amazon/aws-cli
FROM amazon/aws-cli:2.24.17
COPY --from=builder /kubectl /usr/local/bin/kubectl
