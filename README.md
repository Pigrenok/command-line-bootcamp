# Linux Command Line Bootcamp

[![Issues](https://img.shields.io/github/issues/leaningtech/webvm)](https://github.com/leaningtech/webvm/issues)

This repository hosts the source code for Linux Command Line Bootcamp, which was derived from [Command Line Bootcamp](https://github.com/command-line-bootcamp/cli-boot.camp) but instead of docker container running in the background, use WASM VM to run an image of Linux OS based on [container2wasm](https://github.com/ktock/container2wasm) which runs in your browser.

This project use custom docker image that is converted to WASM image using [container2wasm](https://github.com/ktock/container2wasm).

## TODO

Modify tutorial 27 to work correctly with or without curl (copy necessary file into the image and modify tutorial text).

## Networking

[Container2wasm](https://github.com/ktock/container2wasm) project supports 2 different networking modes. One using Fetch (used in this project), which is restricted by your browser CORS rules, and WebSocket, which requires a network stack daemon running locally, but it is much less restrictive. See details in the [container2wasm repo](https://github.com/ktock/container2wasm/tree/main/examples/networking).
## Fork or use as template

If you want to tailor this teaching resource to your needs (e.g. teach more advanced topics), you can either fork repository or you can use this repository as a template to create your own (even private) repository and then modify it in any way possible.

- Fork the repository or create your own from template.
- Enable Github pages in settings.
	- Click on `Settings`.
	- Go to the `Pages` section.
	- Select `Github Actions` as the source.
- Run the workflow.
	- Click on `Actions`.
	- Accept the prompt. This is required only once to enable Actions for your fork.
	- Click on the workflow named `Deploy`.
	- Click `Run workflow` and then once more `Run workflow` in the menu.
- After a few seconds a new `Deploy` workflow will start, click on it to see details.
- After the workflow completes, which takes a few minutes, it will show the URL below the `deploy_to_github_pages` job.

## Changing  

You can now customize `dockerfiles/cl_bootcamp_base` to suits your needs, or make a new Dockerfile from scratch. Use the `Path to Dockerfile` workflow parameter to select it.

# Local deployment

From a local `git clone`

- Download the `cl_bootcamp_base` Ext2 image from [https://github.com/leaningtech/webvm/releases/](https://github.com/leaningtech/webvm/releases/).
	- You can also build your own by selecting the "Upload GitHub release" workflow option.
	- Place the image in the repository root folder.
- Edit `index.html`.
	- Uncomment the default values for `CMD`, `ARGS`, `ENV` and `CWD`:
	```javascript
	// cmd, cwd, args and env are replaced by the Github actions workflow.
	// var cmd = CMD;
	// var args = ARGS;
	// var env = ENV;
	// var cwd = CWD;
	// Reasonable defaults for local deployments
	var cmd = "/bin/bash";
	var args = ["--login"];
	var env = ["HOME=/home/learner", "TERM=xterm", "USER=learner", "SHELL=/bin/bash", "EDITOR=nano", "LANG=en_US.UTF-8", "LC_ALL=C"];
	var cwd = "/home/learner";
	```
	- Uncomment CheerpX initialisation as follows:
	```javascript
	// The device url and type are replaced by Github Actions.
	// CheerpXApp.create({devices:[{type:DEVICE_TYPE,url:IMAGE_URL,name:"block1"}],mounts:[{type:"ext2",dev:"block1",path:"/"},{type:"cheerpOS",dev:"/app",path:"/app"},{type:"cheerpOS",dev:"/str",path:"/data"},{type:"devs",dev:"",path:"/dev"}], networkInterface: networkInterface, activityInterface: {cpu: cpuCallback, dev: devCallback}}).then(runTest, failCallback);
	// Settings for local deployment. You need to use the image file name that you have in your directory.
	CheerpXApp.create({devices:[{type:"bytes",url:"debian_mini_20240115_7528113030.ext2",name:"block1"}],mounts:[{type:"ext2",dev:"block1",path:"/"},{type:"cheerpOS",dev:"/app",path:"/app"},{type:"cheerpOS",dev:"/str",path:"/data"},{type:"devs",dev:"",path:"/dev"}], networkInterface: networkInterface, activityInterface: {cpu: cpuCallback, dev: devCallback}}).then(runTest, failCallback);
	```
- Start a local HTTP server.
- Enjoy your local WebVM.

# Bugs and Issues

Please use [Issues](https://github.com/Pigrenok/command-line-bootcamp/issues) to report any bug.

# More links

- [WebVM: server-less x86 virtual machines in the browser](https://leaningtech.com/webvm-server-less-x86-virtual-machines-in-the-browser/)