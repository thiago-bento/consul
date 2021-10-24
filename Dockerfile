FROM consul:latest
RUN consul agent -dev -configu-dir
RUN cd app
RUN consul agent -dev -config-dir
RUN apk -U add bind-tools
RUN echo "TEste TESTE"