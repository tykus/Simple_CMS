module ApplicationHelper
 
  # Generates a <span> tag
  def status_tag(boolean, options={})
    options[:true_text]  || ''
    options[:false_text] || ''

    if boolean
      content_tag(:span, options[:true_text], :class => 'status true')
    else
      content_tag(:span, options[:false_text], :class => 'status false')
    end
  end

  def error_messages_for(object)
    render(:partial => 'common/error_messages', :locals => {:object => object})    
  end
  
end
