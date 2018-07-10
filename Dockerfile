# escape=`

FROM microsoft/dotnet-framework:4.7.2-sdk

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';" ]

# Web Deploy Download: https://go.microsoft.com/fwlink/?LinkId=209116
RUN Invoke-WebRequest -UseBasicParsing https://go.microsoft.com/fwlink/?LinkId=209116 -OutFile webdeploy.msi
    Start-Process webdeploy.msi -ArgumentList '/quiet', '/qn' -Wait
