# dotnet-framework_472_sdk_eb
A Dockerfile that can be used to build and package AWS ElasticBeanstalk applications.

## Includes

* MS Web Deploy V2

## Notes

```bash
# Build and tag the Docker image (change the tag/version as appropriate)
docker build . -t diceholdingsinc/dotnet-framework_472_sdk_eb:1.0.0

# Push it to docker cloud repo (public, change the tag/version as appropriate)
docker push diceholdingsinc/dotnet-framework_472_sdk_eb:1.0.0

# Build a solution
cd $SOLUTION_DIR
msbuild

# Build and package a .NET Web Application for Elastic Beanstalk
# Run inside the docker image:

msbuild $PROJECT_FOLDER\$PROJECT_FILE.csproj  /t:Package /p:DeployIisAppPath="Default Web Site" /p:Configuration="$VS_CONFIG"
```