FROM python:3.10-slim

WORKDIR /app
COPY . .

RUN pip install -r requirements.txt

# Add a non-root user
RUN adduser --disabled-password appuser
USER appuser

EXPOSE 5000

# Add a healthcheck for better reliability
HEALTHCHECK CMD curl --fail http://localhost:5000 || exit 1

CMD ["python", "app.py"]
