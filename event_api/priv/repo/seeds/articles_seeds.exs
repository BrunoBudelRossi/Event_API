#  mix run priv/repo/seeds/articles_seeds.exs

alias EventApi.Repo
alias EventApi.Management.Article

Repo.insert! %Article{
  name: "article 1",
  content: "content 1",
  event_id: 1
}

Repo.insert! %Article{
  name: "article 2",
  content: "content 2",
  event_id: 1
}

Repo.insert! %Article{
  name: "article 3",
  content: "content 3",
  event_id: 2
}


