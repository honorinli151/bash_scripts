#!/bin/bash

for file in blog/*; do
    docker exec wordpress_wordpress_1 wp term create category ${file##*/}
    for posts in file; do 
        docker exec wordpress_wordpress_1 wp post create --post_title=$(basename ${posts%.*}) --post_category=${file##*/} \
        --post_author='Chenle' posts
        echo ${posts##*/} >> posts_hash
    done
done