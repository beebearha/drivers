FROM jupyternaas/singleuser:latest

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ENV VERSION 0.19.0
LABEL org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name="Naas machine" \
    org.label-schema.description="jupyter machine with naas" \
    org.label-schema.url="https://naas.ai" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://github.com/jupyter-naas/drivers" \
    org.label-schema.vendor="Cashstory, Inc." \
    org.label-schema.version=$VERSION \
    org.label-schema.schema-version="1.0"

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --use-feature=2020-resolver --no-cache naas-drivers==$VERSION

