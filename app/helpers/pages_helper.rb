module PagesHelper
  def set_title(title)
    base = 'MH Blog'
    return title.capitalize + ' | ' +  base
  end
end
