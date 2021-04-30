# Random Jokes App
![](https://phase2-images.s3.amazonaws.com/random-jokes.png)


## Overview

The Random Jokes app was inspired by a Ruby CLI project I previously created. I wanted to take the idea of something that works in a CLI and code it to work similarly in the web browser. 
The idea is users can sign up or log in, create an archive of their favorite dad jokes, edit and delete jokes they create, and also view jokes collected by other users

## How to run this project
1. Clone the Repository
    ``` 
     % git clone https://github.com/tbenis/random-jokes.git
    ```
2. Bundle install dependecies
    ``` 
    % bundle install
   ```
3. Run Migrations
    ``` 
    % rake db:migrate
   ```
    you should see something like this:
        ![](https://phase2-images.s3.amazonaws.com/Screen+Shot+2021-04-30+at+7.20.03+AM.png)
    
    If you do not see a message that looks like the one above in the terminal, that means migrations did not work. Delete the 'development.sqlite' file in the 'db' folder and try ```rake db:migrate``` again.
    ![](https://phase2-images.s3.amazonaws.com/Screen+Shot+2021-04-30+at+7.18.44+AM.png)

4. Seed Database
    ``` 
    % rake db:seed
   ```
5. Run server (Shotgun (preferred) or Rackup)
    ``` 
   % shotgun
   ```
6. Navigate to the url in a web browser:
    http://localhost:9393/

### Additional Information (Password for seeded users)
Regarding the seeded data, the password for all created users after running ```rake db:seed```  is 'password'
Each user has a unique email. Head to the terminal and type ```% rake console```. Once the pry console comes up, type ```User.all```  and that will show you all 10 users and their emails. Remember to use ```password``` to login in a browser.



### Video Demo
<a href="https://www.youtube.com/watch?v=juoTqJ3lNx8" target="_blank">Youtube</a>

### Author(s)
 Benis Tambe >>>> [GitHub -- Benis Tambe](https://github.com/tbenis)
### License:
MIT