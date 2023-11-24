module ApplicationHelper
  def pins_path_with_params(new_params = {})
    pins_path(params.permit(@filters_list).merge(new_params))
  end
end
