defmodule EventApiWeb.ArticleView do
  use EventApiWeb, :view
  use JaSerializer.PhoenixView

  attributes [:name, :content, :event_id]
end
