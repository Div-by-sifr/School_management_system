# 1. Base image
FROM python:3.12.10-slim

# 2. Set env vars to prevent python buffering and .pyc
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# 3. Create & use app directory
WORKDIR /usr/src/app

# 4. Install system deps for MySQL client and building mysqlclient
RUN apt-get update \
    && apt-get install -y \
    default-mysql-client \
    default-libmysqlclient-dev \
    build-essential \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

# 5. Copy requirements & install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 6. Copy the rest of the code
COPY . .

# 7. Copy entrypoint & give execution rights
COPY ./entrypoint.sh /usr/src/app/entrypoint.sh
RUN chmod +x /usr/src/app/entrypoint.sh

# 8. Run entrypoint by default
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]
# بعد ENTRYPOINT
EXPOSE 8000
