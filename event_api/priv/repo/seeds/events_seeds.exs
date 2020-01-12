#  mix run priv/repo/seeds/events_seeds.exs

alias EventApi.Repo
alias EventApi.Management.Event

Repo.insert! %Event{
  title: "test title",
  description: "test description",
}

Repo.insert! %Event{
  title: "test title 2",
  description: "test description 2",
}

Repo.insert! %Event{
  title: "test title 3",
  description: "test description 3",
}
