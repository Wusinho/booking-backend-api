# Rails-Api Booking-Coach-App
 
This is a solo project at the end of the Microverse Main Technical Curriculum. It's a real-world-like project, built with business specifications to improve and test the achievement of technical and soft skills gained during the program. The technical requirements of this API project are:

1. The database should have at least 2 tables
2. Use Postgres as your database
3. Back-end you will use Ruby on Rails
4. Create a REST API to manage database resources
 
## **Built With**
 
- Ruby on Rails
- Bcrypt
- Annotate
- Faker
- JWT
- Active_model_serializers
- Heroku
 
### **Endpoints of API**

| Method  | Endpoint                      | Functionality                      |
| ---     | ---                           |  ---:                              | 
| POST    |  login                        | Log In Users                       | 
| POST    |  users                        | Create Users                       | 
| POST    |  appointments                 | Create Appointment                 | 
| GET     |  appointments                 | Get the users    appointments      |
| GET     |  coaches                      | Get the available coaches          |

## **API Deployed At:**
 
### [Heroku](https://stormy-meadow-49812.herokuapp.com/)

## **Live Project At:**

### [GitHub Pages | LoL Catalogue](https://6144d74d4118f87127f8e629--gallant-allen-0cf0f8.netlify.app/)
 
## **Getting Started**
 
- Open your terminal and cd where you want to store the project.

`git clone hhttps://github.com/Wusinho/booking-backend-api.git`
 
After that, open the folder with the code editor of your choice and follow the steps below.
 
## Setting up the necessary packages:
 
- Make sure you have [Yarn](https://yarnpkg.com/) installed in your machine.**
 
- Open the terminal and go to the folder of the game and run the following commands:

  `yarn install`

  `bundle install`
 
- Those commands will ensure you installed the proper packages required and install all the gems needed for the project.**
 
## Configure the Database
- You need to configure the database with the following commands:** <br>
`rails db:create db:migrate db:seed` <br>

- This command will create the database, migrate the tables as necessary, and populate it needed some data.

- If you have any problem configuring postgresql, check this [docs](https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-ubuntu-18-04) for more info

## Starting the Server
- To start the server run: <br>
`rails s`

**The front-end app is configured to run on 3001 port**

## **Testing**
**To check the test run the following command:** <br>
`bundle exec rspec`

 
## **Author**
 
👤 **Heber Lazo**

- Github: [@Wusinho](https://github.com/Wusinho)
- LinkedIn: [Heber Lazo](https://www.linkedin.com/in/heber-lazo-benza-523266133/)
 
## 🤝 **Contributing**
 
Contributions, issues, and feature requests are welcome!
 
Feel free to check the [issues page](https://github.com/Wusinho/booking-backend-api/issues).
 
## **Show your support**
 
Give a ⭐️ if you like this project!
 
## 📝 **License**
 
This project is [MIT](LICENSE) licensed.
 



