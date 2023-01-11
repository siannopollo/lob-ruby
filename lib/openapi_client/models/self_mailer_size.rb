=begin
#Lob

#The Lob API is organized around REST. Our API is designed to have predictable, resource-oriented URLs and uses HTTP response codes to indicate any API errors. <p> Looking for our [previous documentation](https://lob.github.io/legacy-docs/)? 

The version of the OpenAPI document: 1.3.0
Contact: lob-openapi@lob.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'date'
require 'time'

module Lob
  class SelfMailerSize
    N6X18_BIFOLD = "6x18_bifold".freeze
    N11X9_BIFOLD = "11x9_bifold".freeze
    N12X9_BIFOLD = "12x9_bifold".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = SelfMailerSize.constants.select { |c| SelfMailerSize::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #SelfMailerSize" if constantValues.empty?
      value
    end
  end
end
