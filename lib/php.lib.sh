#! /usr/bin/env bash

PHP_CONTAINER="winpty docker exec -it -w //code//w mediawiki_php-fpm_1 sh -c "

#
# Executes a PHP script.
#
# Usages:
#  php PHP_ARGUMENTS
#  php WORKING_DIRECTORY PHP_ARGUMENTS
#
function php {
	if [[ -z "$2" ]]; then
		php_args=$@
	else
		cwd=$1
		php_args=${@:2}
		command_string="cd $cwd &&"
	fi
	command_string="$command_string php $php_args"

	$PHP_CONTAINER "$command_string"
}

#
# Executes composer.
#
# Usages:
#  composer COMPOSER_ARGUMENTS
#
function composer {
	$PHP_CONTAINER "composer $@"
}
