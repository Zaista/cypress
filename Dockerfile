FROM cypress/included:8.3.0

COPY ./cypress ./cypress
COPY ./cypress.json .
COPY ./package.json .

ENV BUILD_ID=1
ENV CYPRESS_API_URL=https://cypress-director-gp34ticnkq-ey.a.run.app

RUN ["npm", "install"]

RUN ["npm", "run", "parallel"]

ENTRYPOINT ["npm", "run", "parallel"]