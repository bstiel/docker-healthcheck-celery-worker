FROM python:3.11.1

WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

CMD ["celery", "--app", "worker.app", "worker"]

HEALTHCHECK --interval=10s --timeout=10s --start-period=3s --retries=3 CMD ["/sh", "-c", "celery inspect ping --destination celery@$HOSTNAME"]
