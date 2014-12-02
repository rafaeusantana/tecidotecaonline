module ApplicationHelper

  def show_search_field?(param1, param2)
    if params[param1].nil?||params[param1][param2].nil?||(params[param1][param2].kind_of?(Array)&&params[param1][param2].count<=1)||params[param1][param2]==''
      return false
    end
    return true
  end

end
