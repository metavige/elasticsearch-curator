#!/bin/sh
##
sed -i "s/ES_HOST/$ES_HOST/g" /root/.curator/curator.yml
sed -i "s/INDEX_PREFIX/$INDEX_PREFIX/g" /curator/action.yml
sed -i "s/UNIT_COUNT/$UNIT_COUNT/g" /curator/action.yml

curator /curator/action.yml
