module MoviesHelper
    def toggle_direction(column)
        if params[:sort] == column && params[:direction] == "asc"
            return "desc"
        else
            return "asc"
        end
    end
end

