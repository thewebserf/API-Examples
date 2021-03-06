=begin
#MINDBODY Public API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.6

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::GetClassDescriptionsResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetClassDescriptionsResponse' do
  before do
    # run before each test
    @instance = SwaggerClient::GetClassDescriptionsResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetClassDescriptionsResponse' do
    it 'should create an instance of GetClassDescriptionsResponse' do
      expect(@instance).to be_instance_of(SwaggerClient::GetClassDescriptionsResponse)
    end
  end
  describe 'test attribute "pagination_response"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "class_descriptions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
