alias Rsvp.News.Link
alias Community.Repo

unless(Rsvp.EventQueries.any()) do
  Rsvp.EventQueries.create(Rsvp.Events.changeset(%Rsvp.Events{}, %{date: "2019-01-01 00:00:00", title: "Hackathon", location: "Provo, UT"}))
  Rsvp.EventQueries.create(Rsvp.Events.changeset(%Rsvp.Events{}, %{date: "2019-02-01 00:00:00", title: "Divvy Codefest", location: "Lehi, UT"}))
end



%Link{url: "http://graphql.org/", description: "The Best Query Language"} |> Repo.insert!
%Link{url: "http://dev.apollodata.com/", description: "Awesome GraphQL Client"} |> Repo.insert!
