FROM debian:buster-slim
ENV PORTER_HOME=~/.porter
ENV VERSION="v1.0.0-alpha.20"
RUN apt-get update && apt-get install -y curl jq
RUN curl -L https://cdn.porter.sh/$VERSION/install-linux.sh | bash
RUN ln -s /root/.porter/porter /usr/local/bin/porter