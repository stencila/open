all: setup run

setup:
	npm install

run:
	npm start

deploy:
	aws s3 sync node_modules/stencila/build s3://open.stenci.la/node_modules/stencila/build
	aws s3 cp index.html s3://open.stenci.la/
