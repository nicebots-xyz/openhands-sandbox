FROM docker.all-hands.dev/all-hands-ai/runtime:0.15-nikolaik

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/
RUN pip install pdm

RUN apt-get update && apt-get install -y wget && wget https://github.com/hashicorp/copywrite/releases/download/v0.19.0/copywrite_0.19.0_linux_x86_64.tar.gz \
    && tar -xzf copywrite_0.19.0_linux_x86_64.tar.gz \
    && mv copywrite /usr/local/bin/ \
    && rm copywrite_0.19.0_linux_x86_64.tar.gz

RUN alias cls="clear"
