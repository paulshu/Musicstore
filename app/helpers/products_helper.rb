module ProductsHelper
  def render_active(index)
    if index == 0
      "active"
    end
  end

  def last_item(index)
		if index > 0 && (index + 1) % 5 == 0
		  "productList-lastItem"
		end
  end
  
end
