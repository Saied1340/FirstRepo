FROM haskell:7.10.3

COPY stack.yaml *.cabal /opt/site/
COPY src /opt/site/src
WORKDIR /opt/site/

RUN stack install --only-dependencies
RUN stack build
RUN stack install
