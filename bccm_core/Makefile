.PHONY: copy-schema

BACKEND_SCHEMA_DIR=../../../../bcc-media-platform/backend/graph/api/schema
APP_SCHEMA_DIR=./lib/src/features/graphql/schema
copy-schema: SHELL:=/bin/bash
copy-schema:
	for f in $(shell ls ${BACKEND_SCHEMA_DIR}) ;\
		do cp ${BACKEND_SCHEMA_DIR}/$$f "${APP_SCHEMA_DIR}/$${f%.graphqls}.graphql" ;\
	done