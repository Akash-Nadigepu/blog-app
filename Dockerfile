FROM python:3.9-slim  

WORKDIR /app  

COPY . .  

RUN pip install --upgrade pip && \
    pip install --default-timeout=100 --no-cache-dir -r requirements.txt

ENV FLASK_APP=flaskr  
ENV FLASK_ENV=development  

EXPOSE 5000  

CMD ["sh", "-c", "flask init-db && flask run --host=0.0.0.0"]
