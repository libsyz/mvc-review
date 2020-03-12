class Note
  attr_reader :title, :body

  def initialize(attributes = {})
    @title = attributes[:name]
    @body = attributes[:body]
  end

end
