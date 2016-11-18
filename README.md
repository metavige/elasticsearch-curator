## Build

```bash
> docker build -t curator .
```

### Run

```bash
> docker run --add-host es:127.0.0.1 --rm curator
2016-11-18 05:32:56,267 INFO      Preparing Action ID: 1, "delete_indices"
2016-11-18 05:32:56,277 INFO      Trying Action ID: 1, "delete_indices": remove topbeat indices
2016-11-18 05:32:58,150 INFO      Skipping action "delete_indices" due to empty list: <class 'curator.exceptions.NoIndices'>
2016-11-18 05:32:58,150 INFO      Action ID: 1, "delete_indices" completed.
2016-11-18 05:32:58,151 INFO      Preparing Action ID: 2, "delete_indices"
2016-11-18 05:32:58,156 INFO      Trying Action ID: 2, "delete_indices": remove packetbeat indices
2016-11-18 05:32:58,238 INFO      Skipping action "delete_indices" due to empty list: <class 'curator.exceptions.NoIndices'>
2016-11-18 05:32:58,239 INFO      Action ID: 2, "delete_indices" completed.
2016-11-18 05:32:58,239 INFO      Job completed.
```
