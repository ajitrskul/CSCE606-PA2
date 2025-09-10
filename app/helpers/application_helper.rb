module ApplicationHelper
    def sort_arrow(column)
    if column == sort_column
      sort_direction == "asc" ? "▲" : "▼"
    else
      "⇅" # neutral arrow if not the active sort column
    end
  end
end
