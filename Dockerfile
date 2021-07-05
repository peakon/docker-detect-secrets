FROM python:3.7-slim

RUN apt-get update && apt-get install -y --no-install-recommends git build-essential && rm -rf /var/lib/apt/lists/*
RUN pip install detect-secrets[word_list]

WORKDIR /usr/src/app
ENTRYPOINT ["detect-secrets-hook", "--verbose"]
