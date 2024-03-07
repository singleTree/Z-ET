#!/bin/bash

WORKSPACE=../..

LUBAN_DLL=.、Luban\、Luban.dll
CONF_ROOT=$WORKSPACE/Design

# Client
dotnet $LUBAN_DLL \
    --customTemplateDir CustomTemplate \
    -t client \
    -c cs-bin \
    -d bin \
    -d json \
    --conf $CONF_ROOT/__luban__.conf \
    -x outputCodeDir=$WORKSPACE/Unity/Assets/Scripts/Model/Generate/Client/Config \
    -x bin.outputDataDir=$WORKSPACE/Config/Excel/c \
    -x json.outputDataDir=$WORKSPACE/Config/Json/c \
    -x lineEnding=CRLF 

echo ==================== FuncConfig : GenClientFinish ====================

if [ $? -ne 0 ]; then
    echo "An error occurred, press any key to exit."
    read -n 1 -s
    exit 1
fi

# Server
dotnet $LUBAN_DLL \
    --customTemplateDir CustomTemplate \
    -t all \
    -c cs-bin \
    -d bin \
    -d json \
    --conf $CONF_ROOT/__luban__.conf \
    -x outputCodeDir=$WORKSPACE/Unity/Assets/Scripts/Model/Generate/Server/Config \
    -x bin.outputDataDir=$WORKSPACE/Config/Excel/s \
    -x json.outputDataDir=$WORKSPACE/Config/Json/s \
    -x lineEnding=CRLF 

echo ==================== FuncConfig : GenServerFinish ====================