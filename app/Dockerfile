FROM python:3.8-slim as builder
COPY ./app.py /src
RUN pip install --user fastapi uvicorn boto3 flask

FROM python:3.8-slim as app
COPY --from=builder /root/.local /root/.local
COPY --from=builder /src .

ENV ENDPOINT_URL=AWS
ENV PATH=/root/.local:$PATH
EXPOSE 5000

CMD ["python3", "app.py"]