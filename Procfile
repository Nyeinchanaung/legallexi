web: gunicorn --worker-tmp-dir /dev/shm --config gunicorn_config.py app:app
release: |
    apt-get update -qq && \
    apt-get install -y $(cat .aptfile) && \
    apt-get -y wkhtmltopdf libssl-dev ca-certificates libfontconfig1 fonts-roboto \
    pip install --no-cache-dir --prefer-binary -r requirements.txt || \
    (pip install --no-cache-dir --no-binary=blis spacy && \
    python -c "import spacy; spacy.cli.download('en_core_web_sm')")

