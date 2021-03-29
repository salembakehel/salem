module Filter
  def f(result)
    result = result.ransack(search_params).result  if search_params.present?
    result = result.page(params[:page]).per(limit) unless limit == -1
    result = result.order(collection_order)
  end

  def search_params
    {
      check_in_eq: params[:search]
      # phone_number_cont: params[:search]
    }
  end

  def collection_order
    { sort => direction }
  end

  def sort
    params[:sort] || :created_at
  end

  def direction
    params[:direction] || :desc
  end

  def limit
    (params[:limit] || 999_999_999).to_i
  end
end