FROM python:3.7-slim

RUN apt-get update && apt-get install -y --no-install-recommends git build-essential curl && rm -rf /var/lib/apt/lists/*
RUN pip install detect-secrets[word_list]

WORKDIR /usr/src/app
COPY scripts/git_api_curl.sh /usr/src/custom-scripts/git_api_curl.sh
COPY scripts/pre-setup /usr/src/custom-scripts/pre-setup.sh
RUN /usr/src/custom-scripts/pre-setup,sh
CMD ["/bin/bash"]
