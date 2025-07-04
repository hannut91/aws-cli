FROM python:3.8.2-alpine3.11

RUN pip3 install --no-cache-dir awscli==1.41.3

RUN apk add --no-cache jq groff less

WORKDIR /aws

ENTRYPOINT [ "aws" ]
