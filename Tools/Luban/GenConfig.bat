set WORKSPACE=..\..

set LUBAN_DLL=.\Luban\Luban.dll
set CONF_ROOT=%WORKSPACE%\Design

::Client
dotnet %LUBAN_DLL% ^
    --customTemplateDir CustomTemplate ^
    -t client ^
    -c cs-bin ^
    -d bin ^
    -d json ^
    --conf %CONF_ROOT%\__luban__.conf ^
    -x outputCodeDir=%WORKSPACE%\Unity\Assets\Scripts\Model\Generate\Client\Config ^
    -x bin.outputDataDir=%WORKSPACE%\Config\Excel\c ^
    -x json.outputDataDir=%WORKSPACE%\Config\Json\c ^
    -x lineEnding=CRLF ^
    
echo ==================== FuncConfig : GenClientFinish ====================

if %ERRORLEVEL% NEQ 0 (
    echo An error occurred, press any key to exit.
    pause
    exit /b
)

::Server
dotnet %LUBAN_DLL% ^
    --customTemplateDir CustomTemplate ^
    -t all ^
    -c cs-bin ^
    -d bin ^
    -d json ^
    --conf %CONF_ROOT%\__luban__.conf ^
    -x outputCodeDir=%WORKSPACE%\Unity\Assets\Scripts\Model\Generate\Server\Config ^
    -x bin.outputDataDir=%WORKSPACE%\Config\Excel\s ^
    -x json.outputDataDir=%WORKSPACE%\Config\Json\s ^
    -x lineEnding=CRLF ^
    
echo ==================== FuncConfig : GenServerFinish ====================

pause