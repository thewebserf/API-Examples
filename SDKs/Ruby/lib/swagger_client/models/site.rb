=begin
#MINDBODY Public API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.6

=end

require 'date'

module SwaggerClient
  class Site
    # When `true`, indicates that this site accepts American Express cards.<br />  When `false`, indicates that this site does not accept American Express credit cards.
    attr_accessor :accepts_american_express

    # When `true`, indicates that this site accepts Discover cards.<br />  When `false`, indicates that this site does not accept Discover credit cards.
    attr_accessor :accepts_discover

    # When `true`, indicates that this site accepts MasterCard cards.<br />  When `false`, indicates that this site does not accept MasterCard credit cards.
    attr_accessor :accepts_master_card

    # When `true`, indicates that this site accepts Visa cards.<br />  When `false`, indicates that this site does not accept Visa credit cards.
    attr_accessor :accepts_visa

    # When `true`, indicates that this site allows access to its dashboard.<br />  When `false`, indicates that this site does not allow access to its dashboard.
    attr_accessor :allows_dashboard_access

    # The site’s email address.
    attr_accessor :contact_email

    # A description of the site.
    attr_accessor :description

    # The site ID.
    attr_accessor :id

    # The URL to the site’s logo.
    attr_accessor :logo_url

    # The name of the site.
    attr_accessor :name

    # A hex code for a color the business owner uses in marketing. This color can be used to set a theme for an integration so that it matches the configured color-scheme for the business.
    attr_accessor :page_color1

    # The hex code for a second color, to be used in the same manner as `pageColor1`.
    attr_accessor :page_color2

    # The hex code for a third color, to be used in the same manner as `pageColor1`.
    attr_accessor :page_color3

    # The hex code for a fourth color, to be used in the same manner as `pageColor1`.
    attr_accessor :page_color4

    # The MINDBODY pricing level for the business. Possible values are:  Accelerate - The business is on MINDBODY’s Accelerate pricing tier.  Grow - The business is on MINDBODY’s Essential pricing tier.  Legacy - The business is on an older MINDBODY pricing tier that is no longer offered.  Listing - The business is on an older MINDBODY pricing tier that is no longer offered.  Pro - The business is on an older MINDBODY pricing tier that is no longer offered.  Solo - The business is on an older MINDBODY pricing tier that is no longer offered.  Ultimate - The business is on MINDBODY’s Ultimate pricing tier.
    attr_accessor :pricing_level

    # When `true`, indicates that the business uses SMS text messages to communicate with its clients.<br />  When `false`, indicates that the business does not use SMS text messages to communicate with its clients.
    attr_accessor :sms_package_enabled

    # When `true`, indicates that the total includes tax.<br />  When `false`, indicates that the total does not include tax.
    attr_accessor :tax_inclusive_prices

    # The currency ISO code for the site.
    attr_accessor :currency_iso_code

    # The country code for the site.
    attr_accessor :country_code

    # The time zone the site is located in.
    attr_accessor :time_zone

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'accepts_american_express' => :'AcceptsAmericanExpress',
        :'accepts_discover' => :'AcceptsDiscover',
        :'accepts_master_card' => :'AcceptsMasterCard',
        :'accepts_visa' => :'AcceptsVisa',
        :'allows_dashboard_access' => :'AllowsDashboardAccess',
        :'contact_email' => :'ContactEmail',
        :'description' => :'Description',
        :'id' => :'Id',
        :'logo_url' => :'LogoUrl',
        :'name' => :'Name',
        :'page_color1' => :'PageColor1',
        :'page_color2' => :'PageColor2',
        :'page_color3' => :'PageColor3',
        :'page_color4' => :'PageColor4',
        :'pricing_level' => :'PricingLevel',
        :'sms_package_enabled' => :'SmsPackageEnabled',
        :'tax_inclusive_prices' => :'TaxInclusivePrices',
        :'currency_iso_code' => :'CurrencyIsoCode',
        :'country_code' => :'CountryCode',
        :'time_zone' => :'TimeZone'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'accepts_american_express' => :'BOOLEAN',
        :'accepts_discover' => :'BOOLEAN',
        :'accepts_master_card' => :'BOOLEAN',
        :'accepts_visa' => :'BOOLEAN',
        :'allows_dashboard_access' => :'BOOLEAN',
        :'contact_email' => :'String',
        :'description' => :'String',
        :'id' => :'Integer',
        :'logo_url' => :'String',
        :'name' => :'String',
        :'page_color1' => :'String',
        :'page_color2' => :'String',
        :'page_color3' => :'String',
        :'page_color4' => :'String',
        :'pricing_level' => :'String',
        :'sms_package_enabled' => :'BOOLEAN',
        :'tax_inclusive_prices' => :'BOOLEAN',
        :'currency_iso_code' => :'String',
        :'country_code' => :'String',
        :'time_zone' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'AcceptsAmericanExpress')
        self.accepts_american_express = attributes[:'AcceptsAmericanExpress']
      end

      if attributes.has_key?(:'AcceptsDiscover')
        self.accepts_discover = attributes[:'AcceptsDiscover']
      end

      if attributes.has_key?(:'AcceptsMasterCard')
        self.accepts_master_card = attributes[:'AcceptsMasterCard']
      end

      if attributes.has_key?(:'AcceptsVisa')
        self.accepts_visa = attributes[:'AcceptsVisa']
      end

      if attributes.has_key?(:'AllowsDashboardAccess')
        self.allows_dashboard_access = attributes[:'AllowsDashboardAccess']
      end

      if attributes.has_key?(:'ContactEmail')
        self.contact_email = attributes[:'ContactEmail']
      end

      if attributes.has_key?(:'Description')
        self.description = attributes[:'Description']
      end

      if attributes.has_key?(:'Id')
        self.id = attributes[:'Id']
      end

      if attributes.has_key?(:'LogoUrl')
        self.logo_url = attributes[:'LogoUrl']
      end

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'PageColor1')
        self.page_color1 = attributes[:'PageColor1']
      end

      if attributes.has_key?(:'PageColor2')
        self.page_color2 = attributes[:'PageColor2']
      end

      if attributes.has_key?(:'PageColor3')
        self.page_color3 = attributes[:'PageColor3']
      end

      if attributes.has_key?(:'PageColor4')
        self.page_color4 = attributes[:'PageColor4']
      end

      if attributes.has_key?(:'PricingLevel')
        self.pricing_level = attributes[:'PricingLevel']
      end

      if attributes.has_key?(:'SmsPackageEnabled')
        self.sms_package_enabled = attributes[:'SmsPackageEnabled']
      end

      if attributes.has_key?(:'TaxInclusivePrices')
        self.tax_inclusive_prices = attributes[:'TaxInclusivePrices']
      end

      if attributes.has_key?(:'CurrencyIsoCode')
        self.currency_iso_code = attributes[:'CurrencyIsoCode']
      end

      if attributes.has_key?(:'CountryCode')
        self.country_code = attributes[:'CountryCode']
      end

      if attributes.has_key?(:'TimeZone')
        self.time_zone = attributes[:'TimeZone']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          accepts_american_express == o.accepts_american_express &&
          accepts_discover == o.accepts_discover &&
          accepts_master_card == o.accepts_master_card &&
          accepts_visa == o.accepts_visa &&
          allows_dashboard_access == o.allows_dashboard_access &&
          contact_email == o.contact_email &&
          description == o.description &&
          id == o.id &&
          logo_url == o.logo_url &&
          name == o.name &&
          page_color1 == o.page_color1 &&
          page_color2 == o.page_color2 &&
          page_color3 == o.page_color3 &&
          page_color4 == o.page_color4 &&
          pricing_level == o.pricing_level &&
          sms_package_enabled == o.sms_package_enabled &&
          tax_inclusive_prices == o.tax_inclusive_prices &&
          currency_iso_code == o.currency_iso_code &&
          country_code == o.country_code &&
          time_zone == o.time_zone
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [accepts_american_express, accepts_discover, accepts_master_card, accepts_visa, allows_dashboard_access, contact_email, description, id, logo_url, name, page_color1, page_color2, page_color3, page_color4, pricing_level, sms_package_enabled, tax_inclusive_prices, currency_iso_code, country_code, time_zone].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        value = self.send(attr)
        next if value.nil?
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