docker build . -t mlflow-ynov-kevin

# Tag Image Docker au registery d'Heroku
docker tag mlflow-ynov-kevin registry.heroku.com/mlflow-ynov-kevin/web

# Publication de l'image Docker dans le registery d'Heroku
docker push registry.heroku.com/mlflow-ynov-kevin/web

# Configuration du cotainer
heroku stack:set container -a mlflow-ynov-kevin

# Activation du container
heroku container:release web -a mlflow-ynov-kevin

# Ouverture de l'application
heroku open -a mlflow-ynov-kevin