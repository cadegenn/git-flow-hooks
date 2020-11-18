#!/usr/bin/env bash

DATE=$(date +'%Y-%m-%d')
# echo "${ROOT_DIR}/CHANGELOG.md"
# echo "VERSION = $VERSION"
# cp -a "${ROOT_DIR}/CHANGELOG.md" "${ROOT_DIR}/CHANGELOG.bak"
if [ -e "${ROOT_DIR}/CHANGELOG.md" ]; then
	sed -i 's/^## \[unreleased\]/## \['$VERSION'\]/' ${ROOT_DIR}/CHANGELOG.md
	sed -i 's/^## \['$VERSION'\].*/& - '$DATE'/' ${ROOT_DIR}/CHANGELOG.md
else
	__print_fail "'${ROOT_DIR}/CHANGELOG.md' not found."
	return 1
fi
# diff -y "${ROOT_DIR}/CHANGELOG.bak" "${ROOT_DIR}/CHANGELOG.md"
