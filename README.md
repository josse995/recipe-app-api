# [Build a Backend REST API with Python & Django - Advanced](https://www.udemy.com/course/django-python-advanced/)
## Resume
This is an application in which user and recipes are managed and recipes have ingredients and tags

Setting up a local development server with Docker  
Writing a Python project using Test Driven Development  
Building a REST API with advanced features such as uploading and viewing images  
Creating a backend that can be used a base for your future projects or MVP  
Hands on experience applying best practice principles such as PEP-8 and unit tests  
Configure Travis-CI to automate code checks  

## How to run
1.- Open a terminal in the project's root directory and execute 
```
docker-compose up -d
```
\* ```-d``` is optional and is for deattach mode while running a docker container  
2.- Type in the browser ```127.0.0.1:8000``` for access

## Endpoints
- /api/user/create -> Create user
- /api/user/token -> To generate token's user
- /api/user/me -> Manage user's info
- /api/recipe -> List recipes
- /api/recipe/recipes -> Manage recipes (with tags and ingredients)
- /api/recipe/tags -> Manage tags
- /api/recipe/ingredients -> Manage ingredients
