# sorry-cypress

sorry-cypress-director configuration for google cloud run


# installation - gcloud

```
$ docker build -t gcr.io/deductive-span-313911/cypress-director .
$ docker push gcr.io/deductive-span-313911/cypress-director
$ gcloud beta run deploy cypress-director --image gcr.io/deductive-span-313911/cypress-director --platform managed --allow-unauthenticated --update-secrets=MONGODB_URI=mongodb-uri:1,MINIO_ACCESS_KEY=minio_user:1,MINIO_SECRET_KEY=minio_pass:1
```

# local development
```
$ docker run -p 1234:1234 gcr.io/deductive-span-313911/cypress-director
```
