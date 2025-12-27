# Builder stage
FROM debian:trixie-slim AS builder

RUN apt-get update && \
    apt-get install -y --no-install-recommends gnucobol && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY *.cob *.cbl ./

# Compile (free-format, explicit output name)
RUN cobc -x -free hello-world.cbl -o hello-world

# Runtime stage (minimal + runtime library)
FROM debian:trixie-slim

# Install the GnuCOBOL runtime library
RUN apt-get update && \
    apt-get install -y --no-install-recommends libcob4 && \
    rm -rf /var/lib/apt/lists/*
ENV LIBXML_NOWARN=1
WORKDIR /usr/local/bin
COPY --from=builder /app/hello-world .

CMD ["./hello-world"]

