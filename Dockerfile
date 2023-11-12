FROM python:3.12.0

WORKDIR /app

COPY /app/requirements.txt .

COPY /app/static /app/static

COPY /app/app.py .

COPY /app/templates /app/templates

EXPOSE 8081

ENV VIRTUAL_ENV=/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

CMD ["python", "app.py"]