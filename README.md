用來刪除 elasticsearch index 的工具

* ES_HOST: 預設為 elasticsearch
* INDEX_PREFIX: index 名稱，預設為 logstash-
* UNIT_COUNT: 保留天數，預設為 7

### Build

```bash
> docker build -t curator .
```

### Run

```bash
> docker run -e INDEX_PREFIX=logstash -e UNIT_COUNT=30 --rm curator
2016-11-18 05:32:56,267 INFO      Preparing Action ID: 1, "delete_indices"
2016-11-18 05:32:56,277 INFO      Trying Action ID: 1, "delete_indices": remove logstash indices
2016-11-18 05:32:58,150 INFO      Skipping action "delete_indices" due to empty list: <class 'curator.exceptions.NoIndices'>
2016-11-18 05:32:58,150 INFO      Action ID: 1, "delete_indices" completed.
2016-11-18 05:32:58,239 INFO      Job completed.
```
