# Stage 1: Extract kubectl
FROM alpine:3.19 AS builder
RUN apk add --no-cache curl && \
    curl -LO "https://dl.k8s.io/release/v1.32.2/bin/linux/amd64/kubectl" && \
    chmod +x kubectl

    # Stage 2: Final image extending amazon/aws-cli
    FROM amazon/aws-cli:latest
    COPY --from=builder /kubectl /usr/local/bin/kubectl
    RUN aws --version