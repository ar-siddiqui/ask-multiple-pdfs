FROM python:3.9-slim-buster

COPY requirements.txt /

RUN pip install -r requirements.txt

EXPOSE 8501

WORKDIR /app

ENTRYPOINT ["streamlit", "run", "app.py"]