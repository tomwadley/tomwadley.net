build: docker
	docker run \
		-v $(CURDIR):/src \
		tomwadley.net \
		jekyll build

serve: docker
	docker run \
		-v $(CURDIR):/src \
		-p 4000:4000 \
		tomwadley.net \
		jekyll serve --host 0.0.0.0

docker:
	docker build $(CURDIR) -t tomwadley.net

