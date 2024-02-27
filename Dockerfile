FROM condaforge/mambaforge:23.11.0-0

LABEL "repository"="https://github.com/BEFH/conda-package-publish-action"
LABEL "maintainer"="Andrew Prokhorenkov <andrew.prokhorenkov@gmail.com>"

RUN apt-get --allow-releaseinfo-change update && \
  apt-get install -y build-essential libgl1-mesa-glx --fix-missing && \
  mamba install -y anaconda-client boa -c conda-forge
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
