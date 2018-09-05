1.

# Ecto
  * Repo
  * Query
  * Schema
  * Migration
  * Changeset
  * Multi

## Repo

Repository Pattern instead of Active Record Pattern

Centralized class/module conntect to db

better fit for functional vs active record

very clear when accessing the database

### Use Ecto.Repo

Don't call Repo module directly instead use Ecto.Repo and create your own application Repo

(use is a supercharged version of import brings in all the functions, also executes some code)

### Working with the data

- insert_all
{1, nil} <- return value number of records inserted, and if option passed will return the data returned

- update_all
- delete_all
- all

### Queries

- can also use raw SQL but is not common

- Repo.aggrerate("artists", :max, :id)




