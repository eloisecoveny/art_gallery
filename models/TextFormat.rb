class TextFormat

  def self.format(text)
    text.to_s.gsub(/\n/, '<br/>')
  end

end
