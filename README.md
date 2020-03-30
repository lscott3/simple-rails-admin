This repo uses docker. I'm going to assume you do to.

## Steps to get this repo up and running:

```
docker-compose build
docker-compose run web bundle
docker-compose run web rake db:create db:migrate db:seed
docker-compose up
```

Go to the browser and visit http://localhost:3000


**View the tutorial on YouTube here:**
https://www.youtube.com/watch?v=Gg_8TZ_nWj8
