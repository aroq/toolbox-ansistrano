FROM aroq/toolbox-ansible:0.1.7

ENV ANSISTRANO_DEPLOY_VERSION=3.4.0
ENV ANSISTRANO_ROLLBACK_VERSION=3.0.0

# Install ansistrano.
RUN ansible-galaxy install \
  ansistrano.deploy,${ANSISTRANO_DEPLOY_VERSION} \
  ansistrano.rollback,${ANSISTRANO_ROLLBACK_VERSION}

RUN mkdir -p /toolbox/toolbox-ansistrano
COPY tools /toolbox/toolbox-ansistrano/tools

ENV TOOLBOX_TOOL_DIRS toolbox,/toolbox/toolbox-ansistrano
