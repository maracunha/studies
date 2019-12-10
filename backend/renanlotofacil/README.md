# Tutorials and tips
Install the Heroku CLI
Download and install the Heroku CLI.

If you haven't already, log in to your Heroku account and follow the prompts to create a new SSH public key.

$ heroku login
Clone the repository
Use Git to clone renanlotofacil's source code to your local machine.

$ heroku git:clone -a renanlotofacil
$ cd renanlotofacil
Deploy your changes
Make some changes to the code you just cloned and deploy them to Heroku using Git.

$ git add .
$ git commit -am "make it better"
$ git push heroku master

Para testar a aplicação em produção
$ heroku run rake
