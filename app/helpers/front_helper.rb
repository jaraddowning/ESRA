module FrontHelper

  def get_bread_crumb(url, root_model=nil, separator = " &raquo; ")
	  root_model = root_model.pluralize
	  breadcrumb = []
	  so_far = []
	  elements = url.split('/')
	  last_element = elements.last

	  # remove the last element, let dryml specify <name/>
	  if last_element == 'edit'
		  elements.pop(2)
	  else
		  elements.pop
	  end

	  elements.each_with_index do |element, index|
		  so_far << element
		  url = so_far.join('/')

		  breadcrumb << if element =~ /^[0-9]*$/
			  link_to_if(element != last_element, elements[i-1].constantize.find(element).name.humanize, url) rescue element
		  else
			  link_to_if(element != last_element, element.titleize, url)
		  end
	  end

	  # prepend the root_model IF we're not already in it!
	  if root_model != elements[1]
		  breadcrumb.insert(1,link_to(root_model.titleize, '/' + root_model))
	  end

	  # return the breadcrumb
	  breadcrumb.join(separator) + separator
  rescue
	  'Not available'
  end

end
