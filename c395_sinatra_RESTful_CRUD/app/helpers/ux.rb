helpers do

  ##################################################################
  # flash message helpers
  #
  # session[:message] is assumed to be a pair separated by a pipe:
  #
  #    session[:message] = "TYPE|MESSAGE"
  #
  #    supported types: [:alert] (see application.css for .alert class)
  #
  ##################################################################
  def flash_message(type, msg)
    session[:message] = type.to_s + '|' + msg
  end

  def flash_message?
    !session[:message].nil?
  end

  def flash_message_clear!
    session[:message] = nil
  end

  def flash_message_class
    return "" if session[:message].nil?
    session[:message].split('|').first
  end

  def flash_message_content
    return "" if session[:message].nil?
    session[:message].split('|').last
  end

end