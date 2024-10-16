# Gunakan image Python 3.9
FROM python:3.9-slim

# Set working directory di dalam container
WORKDIR /app

# Copy file requirements.txt ke dalam container
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy seluruh source code aplikasi ke dalam container
COPY . /app

# Set environment variable untuk Flask
ENV FLASK_APP=main.py

# Expose port 5000 untuk Flask
EXPOSE 5000

# Jalankan aplikasi Flask
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]