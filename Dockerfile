FROM python:3.9.7
RUN pip install Flask==2.0.2 redis==4.1.0
RUN useradd -ms /bin/bash admin
USER admin
COPY app /app
WORKDIR /app
CMD ["python", "app.py"] 
