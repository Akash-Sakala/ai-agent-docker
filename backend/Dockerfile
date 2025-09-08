FROM python:latest

# Create python virtual environment
# Isolate your python app and installs from system-level python
# opt -> optional softwares
RUN python -m venv /opt/venv 
ENV PATH=/opt/venv/bin:$PATH

WORKDIR /app

# COPY local_folder/file container_destionation
COPY requirements.txt /tmp/requirements.txt

# RUN within_container_while_building
RUN pip install -r /tmp/requirements.txt

COPY ./src /app/

CMD ["python", "-m", "http.server", "8000"]

