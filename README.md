# nodejs-runtime

[mahnunchik/nodejs-runtime](https://registry.hub.docker.com/u/mahnunchik/nodejs-runtime/) is a [docker](https://docker.io) image for easily running [nodejs](https://nodejs.org) application by providing URL to its repository.

It is based on official [nodejs](https://registry.hub.docker.com/_/node/) base image.

## Notes

[mahnunchik/nodejs-runtime](https://registry.hub.docker.com/u/mahnunchik/nodejs-runtime/) image assumes that you provide while running:

* `GIT_REPO` environment variable that contains the path to git repository

The image assumes that your `node` application:

* has a file named [package.json](https://www.npmjs.org/doc/json.html) listing its dependencies
* define in `package.json` the attribute: `"scripts": {"start": "node <entrypoint_script_js>"}`
* takes the port for listening from `PORT` environment  variable

## Usage

Interactive mode:

	docker run -i -t -p 8080:8080 -e "GIT_REPO=https://github.com/your-git-repo" mahnunchik/nodejs-runtime
    
Daemon mode:

	docker run -d -p 8080:8080 -e "GIT_REPO=https://github.com/your-git-repo" mahnunchik/nodejs-runtime
