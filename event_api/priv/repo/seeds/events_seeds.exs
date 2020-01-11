#  mix run priv/repo/seeds/events_seeds.exs

alias EventApi.Repo
alias EventApi.Management.Event

Repo.insert! %Event{
  title: "test title",
  description: "test description",
  day: [ %Ecto.Date(year: 2020, month: 1, day: 9 ) ]
}

Repo.insert! %Event{
  title: "test title 2",
  description: "test description 2",
  day: [ %Ecto.Date(year: 2020, month: 1, day: 10 ) ] # array em volta nao sei se precisa
}

Repo.insert! %Event{
  title: "test title 3",
  description: "test description 3",
  day: [ %Ecto.Date(year: 2020, month: 1, day: 11 ) ]
}
#sem ecto.date
