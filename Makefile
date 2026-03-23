COMPOSE := docker compose
COMPOSE_FILES := -f docker-compose.yaml

.PHONY: up down bash

## Build images if needed and start containers in the background
up:
	$(COMPOSE) $(COMPOSE_FILES) up -d --build

## Stop and remove containers (volumes kept)
down:
	$(COMPOSE) $(COMPOSE_FILES) down

## Interactive shell in PrestaShop (app files under /var/www/html)
bash:
	$(COMPOSE) $(COMPOSE_FILES) exec -it prestashop bash
