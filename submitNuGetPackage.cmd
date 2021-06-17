CALL buildNuGetPackage.cmd

@ECHO OFF
FOR /F "delims=|" %%I IN ('DIR "JacePXD.*.nupkg" /B /O:D') DO SET NuGetPackage=%%I
@ECHO ON

Tools\NuGet\nuget.exe push %NuGetPackage% -Source "Pioneer" -ApiKey az