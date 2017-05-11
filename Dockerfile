FROM mongo

COPY init.json /init.json
CMD mongoimport --host mongo --db redismanagerdb --collection clusters --type json --file /init.json --jsonArray