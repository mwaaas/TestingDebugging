debug:
	docker-compose run --service-port -e JAVA_OPTS="$$JAVA_OPTS -agentlib:jdwp=transport=dt_socket,address=8787,server=y,suspend=y" app