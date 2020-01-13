defmodule EventApiWeb.EventView do
  use EventApiWeb, :view
  use JaSerializer.PhoenixView

  attributes [:title, :description]
end
