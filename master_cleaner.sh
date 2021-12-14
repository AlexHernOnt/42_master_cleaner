# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    master_cleaner.sh                                  :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahernand <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/13 18:35:04 by ahernand          #+#    #+#              #
#    Updated: 2021/12/13 18:35:06 by ahernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/sh

red='\033[0;31m'
green='\033[0;32m'
NC='\033[0m'

echo "${red}Before:"

df | grep Filesystem
df | grep /Users


rm -rf	/Users/$USER/Library/Caches/vscode-cpptools/*
rm -rf	/Users/$USER/Library/Application\ Support/Slack/Cache/*
rm -rf	/Users/$USER/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/*
rm -rf	/Users/$USER/Library/Application\ Support/Code/CachedData/*
rm -rf	/Users/$USER/Library/Application\ Support/Code/Cache/*
rm -rf	/Users/$USER/Library/Caches/Google/Chrome/Default/*
rm -rf	/Users/$USER/Library/Application\ Support/Google/Chrome/Default/Service\ Worker/CacheStorage/*
rm -rf	/Users/$USER/Library/Application\ Support/Slack/IndexedDB/*
rm -rf	/Users/$USER/Library/Application\ Support/Code/User/workspaceStorage/*
rm -rf	/Users/$USER/Library/Application\ Support/Spotify/User\ Data/*
rm -rf	/Users/$USER/Library/Application\ Support/Spotify/PersistentCache/*
echo "\n${green}After"

df | grep Filesystem
df | grep /Users



echo "${NC}"
