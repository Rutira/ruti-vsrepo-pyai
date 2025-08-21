FROM python:3.9-slim-buster

WORKDIR /app

# Копируем requirements.txt
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем исходный код
COPY . .

# Указываем команду запуска
CMD ["python", "yolo.py", "--model", "yolov11n.pt"]