.PHONY: start
start:
	docker-compose up -d

.PHONY: stop
stop:
	docker-compose down

.PHONY: gorun
gorun:
	docker exec -it snippetbox-app go run ./cmd/web
