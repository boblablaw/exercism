class Bob
  attr_reader :message

  def hey(message)
    @message = message
    return 'Fine. Be that way!' if silent?
    return 'Whoa, chill out!'   if shouting?
    return 'Sure.'              if question?
    'Whatever.'
  end

  private

  def silent?
    message.strip.empty?
  end

  def question?
    message.end_with? '?'
  end

  def shouting?
    already_upcased? && contains_letters?
  end

  def already_upcased?
    message == message.upcase
  end

  def contains_letters?
    message.upcase =~ /[A-Z]/
  end
end
