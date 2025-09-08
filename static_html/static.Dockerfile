# declare what base image to use
FROM python:latest

# Similar to mkdir -p /app && cd /app
WORKDIR /app

COPY ./src /app/

# docker build -f Dockerfile-t akashss/pyapp:latest .
# docker push akashss/pyapp:latest

# docker run -it pyapp

# python -m http.server 8000
# docker run -it -p 3000:8000 pyapp
CMD ["python", "-m", "http.server", "8000"]