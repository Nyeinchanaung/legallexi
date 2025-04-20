web: gunicorn --worker-tmp-dir /dev/shm --config gunicorn_config.py app:app
release: apt-get update && apt-get install -y wkhtmltopdf libssl-dev ca-certificates libfontconfig1 fonts-roboto && pip install --prefer-binary -r requirements.txt
