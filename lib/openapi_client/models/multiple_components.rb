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
  class MultipleComponents
    # The intended recipient, typically a person's or firm's name.
    attr_accessor :recipient

    # The primary delivery line (usually the street address) of the address. Combination of the following applicable `components`: * `primary_number` * `street_predirection` * `street_name` * `street_suffix` * `street_postdirection` * `secondary_designator` * `secondary_number` * `pmb_designator` * `pmb_number` 
    attr_accessor :primary_line

    # The secondary delivery line of the address. This field is typically empty but may contain information if `primary_line` is too long. 
    attr_accessor :secondary_line

    # Only present for addresses in Puerto Rico. An urbanization refers to an area, sector, or development within a city. See [USPS documentation](https://pe.usps.com/text/pub28/28api_008.htm#:~:text=I51.,-4%20Urbanizations&text=In%20Puerto%20Rico%2C%20identical%20street,placed%20before%20the%20urbanization%20name.) for clarification. 
    attr_accessor :urbanization

    attr_accessor :city

    # The [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2:US) two letter code or subdivision name for the state. `city` and `state` are required if no `zip_code` is passed.
    attr_accessor :state

    # Required if `city` and `state` are not passed in. If included, must be formatted as a US ZIP or ZIP+4 (e.g. `94107`, `941072282`, `94107-2282`).
    attr_accessor :zip_code

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'recipient' => :'recipient',
        :'primary_line' => :'primary_line',
        :'secondary_line' => :'secondary_line',
        :'urbanization' => :'urbanization',
        :'city' => :'city',
        :'state' => :'state',
        :'zip_code' => :'zip_code'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'recipient' => :'String',
        :'primary_line' => :'String',
        :'secondary_line' => :'String',
        :'urbanization' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'zip_code' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'recipient',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Lob::MultipleComponents` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Lob::MultipleComponents`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'recipient')
        self.recipient = attributes[:'recipient']
      end

      if attributes.key?(:'primary_line')
        self.primary_line = attributes[:'primary_line']
      end

      if attributes.key?(:'secondary_line')
        self.secondary_line = attributes[:'secondary_line']
      end

      if attributes.key?(:'urbanization')
        self.urbanization = attributes[:'urbanization']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'zip_code')
        self.zip_code = attributes[:'zip_code']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@recipient.nil? && @recipient.to_s.length > 500
        invalid_properties.push('invalid value for "recipient", the character length must be smaller than or equal to 500.')
      end

      if @primary_line.nil?
        invalid_properties.push('invalid value for "primary_line", primary_line cannot be nil.')
      end

      if @primary_line.to_s.length > 500
        invalid_properties.push('invalid value for "primary_line", the character length must be smaller than or equal to 500.')
      end

      if !@secondary_line.nil? && @secondary_line.to_s.length > 500
        invalid_properties.push('invalid value for "secondary_line", the character length must be smaller than or equal to 500.')
      end

      if !@urbanization.nil? && @urbanization.to_s.length > 500
        invalid_properties.push('invalid value for "urbanization", the character length must be smaller than or equal to 500.')
      end

      if !@city.nil? && @city.to_s.length > 200
        invalid_properties.push('invalid value for "city", the character length must be smaller than or equal to 200.')
      end

      if !@state.nil? && @state.to_s.length > 50
        invalid_properties.push('invalid value for "state", the character length must be smaller than or equal to 50.')
      end

      pattern = Regexp.new(/^\d{5}((-)?\d{4})?$/)
      if !@zip_code.nil? && @zip_code !~ pattern
        invalid_properties.push("invalid value for \"zip_code\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@recipient.nil? && @recipient.to_s.length > 500
      return false if @primary_line.nil?
      return false if @primary_line.to_s.length > 500
      return false if !@secondary_line.nil? && @secondary_line.to_s.length > 500
      return false if !@urbanization.nil? && @urbanization.to_s.length > 500
      return false if !@city.nil? && @city.to_s.length > 200
      return false if !@state.nil? && @state.to_s.length > 50
      return false if !@zip_code.nil? && @zip_code !~ Regexp.new(/^\d{5}((-)?\d{4})?$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] recipient Value to be assigned
    def recipient=(recipient)
      if !recipient.nil? && recipient.to_s.length > 500
        fail ArgumentError, 'invalid value for "recipient", the character length must be smaller than or equal to 500.'
      end

      @recipient = recipient
    end

    # Custom attribute writer method with validation
    # @param [Object] primary_line Value to be assigned
    def primary_line=(primary_line)
      if primary_line.nil?
        fail ArgumentError, 'primary_line cannot be nil'
      end

      if primary_line.to_s.length > 500
        fail ArgumentError, 'invalid value for "primary_line", the character length must be smaller than or equal to 500.'
      end

      @primary_line = primary_line
    end

    # Custom attribute writer method with validation
    # @param [Object] secondary_line Value to be assigned
    def secondary_line=(secondary_line)
      if !secondary_line.nil? && secondary_line.to_s.length > 500
        fail ArgumentError, 'invalid value for "secondary_line", the character length must be smaller than or equal to 500.'
      end

      @secondary_line = secondary_line
    end

    # Custom attribute writer method with validation
    # @param [Object] urbanization Value to be assigned
    def urbanization=(urbanization)
      if !urbanization.nil? && urbanization.to_s.length > 500
        fail ArgumentError, 'invalid value for "urbanization", the character length must be smaller than or equal to 500.'
      end

      @urbanization = urbanization
    end

    # Custom attribute writer method with validation
    # @param [Object] city Value to be assigned
    def city=(city)
      if !city.nil? && city.to_s.length > 200
        fail ArgumentError, 'invalid value for "city", the character length must be smaller than or equal to 200.'
      end

      @city = city
    end

    # Custom attribute writer method with validation
    # @param [Object] state Value to be assigned
    def state=(state)
      if !state.nil? && state.to_s.length > 50
        fail ArgumentError, 'invalid value for "state", the character length must be smaller than or equal to 50.'
      end

      @state = state
    end

    # Custom attribute writer method with validation
    # @param [Object] zip_code Value to be assigned
    def zip_code=(zip_code)
      pattern = Regexp.new(/^\d{5}((-)?\d{4})?$/)
      if !zip_code.nil? && zip_code !~ pattern
        fail ArgumentError, "invalid value for \"zip_code\", must conform to the pattern #{pattern}."
      end

      @zip_code = zip_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          recipient == o.recipient &&
          primary_line == o.primary_line &&
          secondary_line == o.secondary_line &&
          urbanization == o.urbanization &&
          city == o.city &&
          state == o.state &&
          zip_code == o.zip_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [recipient, primary_line, secondary_line, urbanization, city, state, zip_code].hash
    end


    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil) # // guardrails-disable-line
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) }) # // guardrails-disable-line
          end
        elsif !attributes[self.class.attribute_map[key]].nil? && type.kind_of?(Array)
          for base_type in type do
            res = _deserialize(base_type, attributes[self.class.attribute_map[key]])
            if !res.nil?
              self.send("#{key}=", res) # // guardrails-disable-line
              break
            end
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]])) # // guardrails-disable-line
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Lob.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr) # // guardrails-disable-line
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
