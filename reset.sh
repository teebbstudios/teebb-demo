#!/bin/bash
docker-compose down && docker volume rm teebb_demo_app_volume teebb_demo_db_volume && docker-compose up