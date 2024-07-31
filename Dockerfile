FROM python:3.9.19-slim
#FROM cgr.dev/chainguard/python:latest-dev
#FROM python:3.12.3
#FROM python:3.10

#COPY main.py /main.py
COPY requirements.txt /requirements.txt
#COPY  /templates /templates
#COPY /static /static

RUN ls *.*

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

# Make sure you update Python version in path
#COPY --from=builder /home/nonroot/.local/lib/python3.12/site-packages /home/nonroot/.local/lib/python3.12/site-packages
#FROM cgr.dev/chainguard/python:latest

COPY main.py /main.py
COPY  /templates /templates
COPY /static /static

ENTRYPOINT [ "python", "main.py" ]
