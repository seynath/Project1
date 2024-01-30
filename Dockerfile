FROM python:3.9-slim

WORKDIR /app

RUN pip install -q -U streamlit && pip install -q -U google-generativeai
COPY  . .

EXPOSE 8501

ENTRYPOINT ["streamlit", "run", "main.py"]
