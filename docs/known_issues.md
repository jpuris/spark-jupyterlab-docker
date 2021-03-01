# Known issues

## John Snow Lab's NLP (Natural Language Processing)
Use standalone node for this, e.g.
```python
.setMaster("local[*]")
```

`setMaster` explanation:
```
The setMaster option specifies the master URL for a distributed cluster, or local to run locally with one thread, or local[N] to run locally with N threads. You should start by using local for testing.
```

Check out this issue on NLP's repo for more info, why this is necessary https://github.com/JohnSnowLabs/spark-nlp/issues/179
Alternatively one can configure spark instances to use "shared-workspace" directory for the `cache_pretrained` content.