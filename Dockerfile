FROM python:3.6

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY workflow/ workflow/
WORKDIR /workflow
ENTRYPOINT [ "python", "./websitescrapefasttrack.py" ]