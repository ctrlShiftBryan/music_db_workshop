defmodule MusicDB.Exercises.RepoExercises do
  alias MusicDB.Repo

  def insert_a_single_record do
    # use Repo.insert_all to insert a record into "artists" with the name "Jimi Hendrix"
    Repo.insert_all("artists", [[name: "Jimi Hendrix"]])
  end

  def insert_multiple_records do
    # use a single Repo.insert_all call to insert two records into
    # "artists": one for "Charlie Parker" and one for "Dizzie Gillespie"
    Repo.insert_all("artists", [[name: "Charlie Parker"], [name: "Dizzie Gillespie"]])
  end

  def delete_all_artists do
    # use Repo.delete_all to delete all records from the "artists" table
    Repo.delete_all("artists")
  end

  def insert_a_single_record_and_return_the_id do
    # use Repo.insert_all to insert a single record (you can use any name), but use the
    # :returning option so that the return value of insert_all includes the id of the
    # new record
    Repo.insert_all("artists", [%{name: "Jimi Hendrix"}], returning: [:id])
  end
end
