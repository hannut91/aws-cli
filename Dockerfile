FROM python:3.8.2-alpine3.11

RUN pip3 install --no-cache-dir awscli==AWS_CLI_VERSION

RUN apk add --no-cache jq groff less

ENV PATH="/root/.local/bin:$PATH"

WORKDIR /aws

ENTRYPOINT [ "aws" ]
