# Uses CRLF for line breaks to provide a test case for having SuperModule work with it
# This is done to test support for Windows Ruby files, which usually use CRLF for line breaks
Support::V2Alt::FakeActiveModel = super_module do

  def self.validates(attribute, options)
    validations << [attribute, options]
  end

  def self.validations
    @validations ||= []
  end

end

