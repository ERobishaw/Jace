SET version="1.0.2"

msbuild /p:Configuration=Release Jace\JacePxd.csproj
MKDIR nuget\lib\net40
COPY Jace\bin\Release\netstandard1.6\*.dll nuget\lib\net40\


COPY JacePXD.nuspec nuget\

Tools\NuGet\nuget.exe pack nuget\JacePxd.nuspec -Version %version%

RMDIR nuget /S /Q