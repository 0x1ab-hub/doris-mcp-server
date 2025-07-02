FROM python:3.13-slim

RUN pip install doris-mcp-server==0.4.2

EXPOSE 3000

ENV DORIS_HOST=${DORIS_HOST:-127.0.0.1}
ENV DORIS_PORT=${DORIS_PORT:-9030}
ENV DORIS_USER=${DORIS_USER:-root}
ENV DORIS_PASSWORD=${DORIS_PASSWORD:-password}

CMD ["doris-mcp-server", "--transport", "http", "--host", "0.0.0.0", "--port", "3000"]
