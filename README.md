# docker-wine
> `winehq-devel` Docker Images

- `docker-wine-base` - Ubuntu based Docker image with `winehq-devel` package installed.
- `docker-wine-dotnet` - Docker image with Wine and `dotnet20`, `dotnet40`, and `dotnet_verifier` installed.

These Docker images were built to be used alongside a build environment for easier scripting/building for .NET applications, (specifically with `docker-wine-dotnet`).
However, `docker-wine-base` will work as a nice Docker image base to build from.

### Credits
Huge thanks and acknowledgement to these Dockerfiles which served as _huge_ inspiration.

- [suchja/x11server]
- [suchja/wine]
- [scottyhardy/docker-wine]

[suchja/x11server]:https://github.com/suchja/x11server
[suchja/wine]:https://github.com/suchja/wine
[suchja/wix-toolset]:https://github.com/suchja/wix-toolset
[scottyhardy/docker-wine]:https://github.com/scottyhardy/docker-wine

