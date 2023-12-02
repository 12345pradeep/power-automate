FROM python:3.13.0a1
WORKDIR /app
COPY . /app/
RUN python3 -m pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 5000
EXPOSE 4000
EXPOSE 6000
ENTRYPOINT [ "python3", "/app/app.py" ]
