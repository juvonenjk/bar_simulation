# Start from MySQL 8.1 base image for DB
FROM mysql:8.1

# Environment variables set in docker-compose.yml

# Optional: Install dbt
USER root
RUN apt-get update && \
    apt-get install -y python3-pip python3-dev && \
    pip3 install --upgrade pip && \
    pip3 install dbt-core dbt-mysql

# Expose MySQL port
EXPOSE 3306

# Optional: Copy dbt project if needed
# COPY dbt_project /app/dbt_project
# WORKDIR /app/dbt_project
