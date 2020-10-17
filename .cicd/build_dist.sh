#!/bin/bash

workspace=${1:-`pwd`}
out=${2:-$workspace/dist}

# Set paths to CICD framework and build tools
export _360CICDFramework=${_360CICDFramework:-${workspace}/commonCICD}
export _360CICDTools=${_360CICDTools:-${workspace}/.cicd/tools}
export _360CICDTools_BI=${_360CICDTools_BI:-${_360CICDTools}/buildinfo/genreleaseinfo}

mkdir -p "${out}" &&\
(
    cp -pr "${workspace}/tailor/" "${out}/"
)
