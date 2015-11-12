module ObservationsHelper
  def format_date(timestamp)
    timestamp.strftime('%B %e, %Y')
  end
end
