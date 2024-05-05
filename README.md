# Bike Rack Chicago - Backend

Bike Rack Chicago is a web application designed to help users find bike racks in the Chicago area. This repository contains the backend code for the application.

## About

Bike Rack Chicago utilizes a Ruby on Rails backend with a PostgreSQL database to efficiently retrieve bike rack data from the City of Chicago dataset.

## Features

- Data Retrieval: The backend is responsible for fetching and serving bike rack data from the City of Chicago dataset.
- Database Management: PostgreSQL is used to store and manage bike rack data, ensuring efficient retrieval and storage.
- API Endpoints: The backend provides RESTful API endpoints for frontend interaction, enabling seamless integration with the frontend application.

## Getting Started

To get started with the backend development environment, follow these steps:

1. Clone this repository to your local machine.
2. Navigate to the project directory.
3. Install dependencies using Bundler:
```
   bundle install
```
4. Set up your database:
```
   rails db:create
   rails db:migrate
```
5. Start the Rails server:
```
   rails server
```
6. Your backend API will be available at http://localhost:3000.

## Live Site

The backend is hosted on Heroku. You can view the live site [here](http://localhost:5173/bike-rack-chicago-frontend).

## Technologies Used

- Ruby on Rails
- PostgreSQL

## Contributing

If you'd like to contribute to this project, please fork the repository and submit a pull request with your proposed changes.

## License

This project is licensed under the [MIT License](LICENSE).
