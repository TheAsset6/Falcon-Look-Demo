FROM Python:3.9.17-alpine3.17

WORKDIR /code

COPY . .

RUN pip install -r requirement.txt

CMD ["gunicorn", "-b", "0.0.0.0:8000", "look.app"]

EXPOSE 8000