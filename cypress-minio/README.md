# sorry-cypress

minio configuration for google cloud run


# installation - gcloud

```
$ docker build -t gcr.io/deductive-span-313911/minio .
$ docker push gcr.io/deductive-span-313911/minio
$ gcloud beta run deploy cypress-minio --image gcr.io/deductive-span-313911/minio --platform managed --allow-unauthenticated --port 9001 --update-secrets=MINIO_ROOT_USER=minio_user:1,MINIO_ROOT_PASSWORD=minio_pass:1

$ docker run -it minio/mc mc config host add gcs <url> <user> <pass> && mc mb gcs/sorrycypress && mc policy set download gcs/sorrycypress
```

# local development
```
$ docker run -p 9001:9001 gcr.io/deductive-span-313911/minio
```
