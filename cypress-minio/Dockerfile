FROM minio/minio

COPY credentials.json .
ENV GOOGLE_APPLICATION_CREDENTIALS=credentials.json

CMD ["gateway", "gcs", "deductive-span-313911", "--console-address", ":9001"]