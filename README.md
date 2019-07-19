# npx
`npx` Runner

## Example Usage
`docker run -it --rm -v $(pwd)/app skypress/npx:latest npx webpack`

## Notes
- Base image is `node:12-alpine`
- Everything is ran as the `node` user
- Includes `npx` globally
- `/app` is the default `WORKDIR`

## Credits
- [Docker Node](https://hub.docker.com/_/node/)
- [NPX](https://www.npmjs.com/package/npx)
