module ValidatePresenceOf
  class Matcher
    def initialize(attribute)
      @attribute = attribute
      @message = 'cant be blank'
    end

    def matches?(model)
      @model = model
      @model.valid?
      @model.errors.has_key?(@attribute)
    end

    def failure_message
      "#{@model.class} failed to validate :#{@attribute} presence"
    end
  end

  def validate_presence_of(attribute)
    Matcher.new(attribute)
  end
end
