# sorry-cypress

sorry-cypress-api configuration for google cloud run


# installation - gcloud

```
$ docker build -t gcr.io/deductive-span-313911/cypress-api .
$ docker push gcr.io/deductive-span-313911/cypress-api
$ gcloud beta run deploy cypress-api --image gcr.io/deductive-span-313911/cypress-api --platform managed --allow-unauthenticated --update-secrets=MONGODB_URI=mongodb-uri:1
```

# local development
```
$ docker run -p 4000:4000 gcr.io/deductive-span-313911/cypress-api
```
