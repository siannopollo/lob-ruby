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
  class SelfMailer
    # Unique identifier prefixed with `sfm_`.
    attr_accessor :id

    attr_accessor :to

    attr_accessor :from

    attr_accessor :size

    # An internal description that identifies this resource. Must be no longer than 255 characters. 
    attr_accessor :description

    # Use metadata to store custom information for tagging and labeling back to your internal systems. Must be an object with up to 20 key-value pairs. Keys must be at most 40 characters and values must be at most 500 characters. Neither can contain the characters `\"` and `\\`. i.e. '{\"customer_id\" : \"NEWYORK2015\"}' Nested objects are not supported.  See [Metadata](#section/Metadata) for more information.
    attr_accessor :metadata

    attr_accessor :mail_type

    # You can input a merge variable payload object to your template to render dynamic content. For example, if you have a template like: `{{variable_name}}`, pass in `{\"variable_name\": \"Harry\"}` to render `Harry`. `merge_variables` must be an object. Any type of value is accepted as long as the object is valid JSON; you can use `strings`, `numbers`, `booleans`, `arrays`, `objects`, or `null`. The max length of the object is 25,000 characters. If you call `JSON.stringify` on your object, it can be no longer than 25,000 characters. Your variable names cannot contain any whitespace or any of the following special characters: `!`, `\"`, `#`, `%`, `&`, `'`, `(`, `)`, `*`, `+`, `,`, `/`, `;`, `<`, `=`, `>`, `@`, `[`, `\\`, `]`, `^`, `` ` ``, `{`, `|`, `}`, `~`. More instructions can be found in [our guide to using html and merge variables](https://lob.com/resources/guides/general/using-html-and-merge-variables). Depending on your [Merge Variable strictness](https://dashboard.lob.com/#/settings/account) setting, if you define variables in your HTML but do not pass them here, you will either receive an error or the variable will render as an empty string.
    attr_accessor :merge_variables

    # A timestamp in ISO 8601 format which specifies a date after the current time and up to 180 days in the future to send the letter off for production. Setting a send date overrides the default [cancellation window](#section/Cancellation-Windows) applied to the mailpiece. Until the `send_date` has passed, the mailpiece can be canceled. If a date in the format `2017-11-01` is passed, it will evaluate to midnight UTC of that date (`2017-11-01T00:00:00.000Z`). If a datetime is passed, that exact time will be used. A `send_date` passed with no time zone will default to UTC, while a `send_date` passed with a time zone will be converted to UTC.
    attr_accessor :send_date

    # The unique ID of the HTML template used for the outside of the self mailer.
    attr_accessor :outside_template_id

    # The unique ID of the HTML template used for the inside of the self mailer.
    attr_accessor :inside_template_id

    # The unique ID of the specific version of the HTML template used for the outside of the self mailer.
    attr_accessor :outside_template_version_id

    # The unique ID of the specific version of the HTML template used for the inside of the self mailer.
    attr_accessor :inside_template_version_id

    # Value is resource type.
    attr_accessor :object

    # An array of certified tracking events ordered by ascending `time`. Not populated in test mode.
    attr_accessor :tracking_events

    # A [signed link](#section/Asset-URLs) served over HTTPS. The link returned will expire in 30 days to prevent mis-sharing. Each time a GET request is initiated, a new signed URL will be generated.
    attr_accessor :url

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'to' => :'to',
        :'from' => :'from',
        :'size' => :'size',
        :'description' => :'description',
        :'metadata' => :'metadata',
        :'mail_type' => :'mail_type',
        :'merge_variables' => :'merge_variables',
        :'send_date' => :'send_date',
        :'outside_template_id' => :'outside_template_id',
        :'inside_template_id' => :'inside_template_id',
        :'outside_template_version_id' => :'outside_template_version_id',
        :'inside_template_version_id' => :'inside_template_version_id',
        :'object' => :'object',
        :'tracking_events' => :'tracking_events',
        :'url' => :'url'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'to' => Array[:'Address', :'String'],
        :'from' => Array[:'AddressDomesticExpanded', :'String'],
        :'size' => :'SelfMailerSize',
        :'description' => :'String',
        :'metadata' => :'Hash<String, String>',
        :'mail_type' => :'MailType',
        :'merge_variables' => :'Object',
        :'send_date' => :'Time',
        :'outside_template_id' => :'String',
        :'inside_template_id' => :'String',
        :'outside_template_version_id' => :'String',
        :'inside_template_version_id' => :'String',
        :'object' => :'String',
        :'tracking_events' => :'Array<TrackingEventCertified>',
        :'url' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'to',
        :'from',
        :'description',
        :'merge_variables',
        :'outside_template_id',
        :'inside_template_id',
        :'outside_template_version_id',
        :'inside_template_version_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Lob::SelfMailer` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Lob::SelfMailer`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'to')
        self.to = attributes[:'to']
      end

      if attributes.key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      else
        self.size = '6x18_bifold'
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Hash)
          self.metadata = value
        end
      end

      if attributes.key?(:'mail_type')
        self.mail_type = attributes[:'mail_type']
      else
        self.mail_type = 'usps_first_class'
      end

      if attributes.key?(:'merge_variables')
        self.merge_variables = attributes[:'merge_variables']
      end

      if attributes.key?(:'send_date')
        self.send_date = attributes[:'send_date']
      end

      if attributes.key?(:'outside_template_id')
        self.outside_template_id = attributes[:'outside_template_id']
      end

      if attributes.key?(:'inside_template_id')
        self.inside_template_id = attributes[:'inside_template_id']
      end

      if attributes.key?(:'outside_template_version_id')
        self.outside_template_version_id = attributes[:'outside_template_version_id']
      end

      if attributes.key?(:'inside_template_version_id')
        self.inside_template_version_id = attributes[:'inside_template_version_id']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      else
        self.object = 'self_mailer'
      end

      if attributes.key?(:'tracking_events')
        if (value = attributes[:'tracking_events']).is_a?(Array)
          self.tracking_events = value
        end
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      pattern = Regexp.new(/^sfm_[a-zA-Z0-9]+$/)
      if @id !~ pattern
        invalid_properties.push("invalid value for \"id\", must conform to the pattern #{pattern}.")
      end

      if !@description.nil? && @description.to_s.length > 255
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 255.')
      end

      pattern = Regexp.new(/^tmpl_[a-zA-Z0-9]+$/)
      if !@outside_template_id.nil? && @outside_template_id !~ pattern
        invalid_properties.push("invalid value for \"outside_template_id\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^tmpl_[a-zA-Z0-9]+$/)
      if !@inside_template_id.nil? && @inside_template_id !~ pattern
        invalid_properties.push("invalid value for \"inside_template_id\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^vrsn_[a-zA-Z0-9]+$/)
      if !@outside_template_version_id.nil? && @outside_template_version_id !~ pattern
        invalid_properties.push("invalid value for \"outside_template_version_id\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^vrsn_[a-zA-Z0-9]+$/)
      if !@inside_template_version_id.nil? && @inside_template_version_id !~ pattern
        invalid_properties.push("invalid value for \"inside_template_version_id\", must conform to the pattern #{pattern}.")
      end

      if @url.nil?
        invalid_properties.push('invalid value for "url", url cannot be nil.')
      end

      pattern = Regexp.new(/^https:\/\/(lob-assets|lob-assets-staging)\.com\/(letters|postcards|bank-accounts|checks|self-mailers|cards)\/[a-z]{3,4}_[a-z0-9]{15,16}(\.pdf|_thumb_[a-z]+_[0-9]+\.png)\?(version=[a-z0-9-]*&)?expires=[0-9]{10}&signature=[a-zA-Z0-9-_]+$/)
      if @url !~ pattern
        invalid_properties.push("invalid value for \"url\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id !~ Regexp.new(/^sfm_[a-zA-Z0-9]+$/)
      return false if !@description.nil? && @description.to_s.length > 255
      return false if !@outside_template_id.nil? && @outside_template_id !~ Regexp.new(/^tmpl_[a-zA-Z0-9]+$/)
      return false if !@inside_template_id.nil? && @inside_template_id !~ Regexp.new(/^tmpl_[a-zA-Z0-9]+$/)
      return false if !@outside_template_version_id.nil? && @outside_template_version_id !~ Regexp.new(/^vrsn_[a-zA-Z0-9]+$/)
      return false if !@inside_template_version_id.nil? && @inside_template_version_id !~ Regexp.new(/^vrsn_[a-zA-Z0-9]+$/)
      object_validator = EnumAttributeValidator.new('String', ["self_mailer"])
      return false unless object_validator.valid?(@object)
      return false if @url.nil?
      return false if @url !~ Regexp.new(/^https:\/\/(lob-assets|lob-assets-staging)\.com\/(letters|postcards|bank-accounts|checks|self-mailers|cards)\/[a-z]{3,4}_[a-z0-9]{15,16}(\.pdf|_thumb_[a-z]+_[0-9]+\.png)\?(version=[a-z0-9-]*&)?expires=[0-9]{10}&signature=[a-zA-Z0-9-_]+$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      pattern = Regexp.new(/^sfm_[a-zA-Z0-9]+$/)
      if id !~ pattern
        fail ArgumentError, "invalid value for \"id\", must conform to the pattern #{pattern}."
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 255
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 255.'
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] metadata Value to be assigned
    def metadata=(metadata)
      @metadata = metadata
    end

    # Custom attribute writer method with validation
    # @param [Object] merge_variables Value to be assigned
    def merge_variables=(merge_variables)
      @merge_variables = merge_variables
    end

    # Custom attribute writer method with validation
    # @param [Object] outside_template_id Value to be assigned
    def outside_template_id=(outside_template_id)
      pattern = Regexp.new(/^tmpl_[a-zA-Z0-9]+$/)
      if !outside_template_id.nil? && outside_template_id !~ pattern
        fail ArgumentError, "invalid value for \"outside_template_id\", must conform to the pattern #{pattern}."
      end

      @outside_template_id = outside_template_id
    end

    # Custom attribute writer method with validation
    # @param [Object] inside_template_id Value to be assigned
    def inside_template_id=(inside_template_id)
      pattern = Regexp.new(/^tmpl_[a-zA-Z0-9]+$/)
      if !inside_template_id.nil? && inside_template_id !~ pattern
        fail ArgumentError, "invalid value for \"inside_template_id\", must conform to the pattern #{pattern}."
      end

      @inside_template_id = inside_template_id
    end

    # Custom attribute writer method with validation
    # @param [Object] outside_template_version_id Value to be assigned
    def outside_template_version_id=(outside_template_version_id)
      pattern = Regexp.new(/^vrsn_[a-zA-Z0-9]+$/)
      if !outside_template_version_id.nil? && outside_template_version_id !~ pattern
        fail ArgumentError, "invalid value for \"outside_template_version_id\", must conform to the pattern #{pattern}."
      end

      @outside_template_version_id = outside_template_version_id
    end

    # Custom attribute writer method with validation
    # @param [Object] inside_template_version_id Value to be assigned
    def inside_template_version_id=(inside_template_version_id)
      pattern = Regexp.new(/^vrsn_[a-zA-Z0-9]+$/)
      if !inside_template_version_id.nil? && inside_template_version_id !~ pattern
        fail ArgumentError, "invalid value for \"inside_template_version_id\", must conform to the pattern #{pattern}."
      end

      @inside_template_version_id = inside_template_version_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new('String', ["self_mailer"])
      unless validator.valid?(object)
        fail ArgumentError, "invalid value for \"object\", must be one of #{validator.allowable_values}."
      end
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] url Value to be assigned
    def url=(url)
      if url.nil?
        fail ArgumentError, 'url cannot be nil'
      end

      pattern = Regexp.new(/^https:\/\/(lob-assets|lob-assets-staging)\.com\/(letters|postcards|bank-accounts|checks|self-mailers|cards)\/[a-z]{3,4}_[a-z0-9]{15,16}(\.pdf|_thumb_[a-z]+_[0-9]+\.png)\?(version=[a-z0-9-]*&)?expires=[0-9]{10}&signature=[a-zA-Z0-9-_]+$/)
      if url !~ pattern
        fail ArgumentError, "invalid value for \"url\", must conform to the pattern #{pattern}."
      end

      @url = url
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          to == o.to &&
          from == o.from &&
          size == o.size &&
          description == o.description &&
          metadata == o.metadata &&
          mail_type == o.mail_type &&
          merge_variables == o.merge_variables &&
          send_date == o.send_date &&
          outside_template_id == o.outside_template_id &&
          inside_template_id == o.inside_template_id &&
          outside_template_version_id == o.outside_template_version_id &&
          inside_template_version_id == o.inside_template_version_id &&
          object == o.object &&
          tracking_events == o.tracking_events &&
          url == o.url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, to, from, size, description, metadata, mail_type, merge_variables, send_date, outside_template_id, inside_template_id, outside_template_version_id, inside_template_version_id, object, tracking_events, url].hash
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
