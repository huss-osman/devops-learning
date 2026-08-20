FROM python:3.11-slim

WORKDIR /app

RUN useradd python

COPY --chown=python:python hello.py .

USER python

CMD ["python", "hello.py"]
