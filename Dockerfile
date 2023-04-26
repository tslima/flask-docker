FROM python:3.10.11-slim-bullseye

WORKDIR /app

COPY dist/*.whl .

RUN pip3 install *.whl

EXPOSE 5000

ENV FLASK_APP=dflask

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]