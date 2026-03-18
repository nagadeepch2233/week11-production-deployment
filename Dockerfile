FROM python:3.11-slim

WORKDIR /app

COPY ../src /app
COPY ../requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

ENV LOAN_DAYS=14
ENV DATA_FILE=library.json

CMD ["python", "app.py"]
