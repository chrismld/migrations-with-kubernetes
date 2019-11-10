FROM mcr.microsoft.com/dotnet/core/aspnet:3.0 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/core/sdk:3.0 AS build
WORKDIR /src
COPY modernapp.csproj modernapp/
RUN dotnet restore modernapp/modernapp.csproj
WORKDIR /src/modernapp
COPY . .
RUN dotnet build modernapp.csproj -c Release -o /app

FROM build AS publish
RUN dotnet publish modernapp.csproj -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "modernapp.dll"]