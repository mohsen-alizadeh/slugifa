
String.class_eval do
  def slugifa
    string = self.downcase
    string.gsub!(/([^آ-ی۰-۹a-z0-9]|-)+/, '-')
    string.gsub!(/-+/, '-')
    string
  end
end
