# Twitter Dynamics in Crypto


## Requirements

Python version: 3.10

Some pacakges require apt or conda to be installed.

[environment.yml](environment.yml)
[requirements.txt](requirements.txt)

To update the conda environment file, run
```bash
conda env export > environment.yml
```

To install the requirements, run 

```bash
pip install -r requirements.txt
```

A .env file is needed in the home directory which should cotain the DATA_DIR, ES_HOSTNAME and ES_INDEXNAME.