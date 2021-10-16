# sorry-cypress

sorry-cypress-dashboard configuration for google cloud run


# installation - gcloud

```
$ docker build -t gcr.io/deductive-span-313911/cypress-dashboard .
$ docker push gcr.io/deductive-span-313911/cypress-dashboard
$ gcloud beta run deploy cypress-dashboard --image gcr.io/deductive-span-313911/cypress-dashboard --platform managed --allow-unauthenticated
```

# local development
```
$ docker run -p 8080:8080 gcr.io/deductive-span-313911/cypress-dashboard
```
