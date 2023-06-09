FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt .
RUN --no-cache-dir pip install --upgrade pip && \
    --no-cache-dir pip install --no-cache-dir -r requirements.txt

COPY . .

ENV PYTHONUNBUFFERED=1

EXPOSE 5000

CMD ["python", "-u", "app.py"]
