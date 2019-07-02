

### Docs
https://db-migrate.readthedocs.io/en/latest/Getting%20Started/configuration/


### Installation
npm i -g db-migrate

npm i


### Configuration
You will need need a database.json in the root directory, containing the database credentials.


### Usage
db-migrate create migration-name --sql-file

db-migrate up -e dev

db-migrate down -e dev
