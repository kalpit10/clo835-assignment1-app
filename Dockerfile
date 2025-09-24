FROM public.ecr.aws/docker/library/python:3.9-slim
WORKDIR /app
COPY . /app
RUN apt-get update && apt-get install -y iputils-ping && rm -rf /var/lib/apt/lists/*
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 8080
ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]
