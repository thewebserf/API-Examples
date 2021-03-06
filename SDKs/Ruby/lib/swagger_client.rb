=begin
#MINDBODY Public API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.6

=end

# Common files
require 'swagger_client/api_client'
require 'swagger_client/api_error'
require 'swagger_client/version'
require 'swagger_client/configuration'

# Models
require 'swagger_client/models/add_appointment_request'
require 'swagger_client/models/add_appointment_response'
require 'swagger_client/models/add_arrival_request'
require 'swagger_client/models/add_arrival_response'
require 'swagger_client/models/add_client_request'
require 'swagger_client/models/add_client_response'
require 'swagger_client/models/add_client_to_class_request'
require 'swagger_client/models/add_client_to_class_response'
require 'swagger_client/models/add_client_to_class_visit'
require 'swagger_client/models/add_client_to_enrollment_request'
require 'swagger_client/models/add_contact_log_request'
require 'swagger_client/models/add_contact_log_type'
require 'swagger_client/models/amenity'
require 'swagger_client/models/appointment'
require 'swagger_client/models/appointment_option'
require 'swagger_client/models/assigned_client_index'
require 'swagger_client/models/autopay_schedule'
require 'swagger_client/models/availability'
require 'swagger_client/models/booking_window'
require 'swagger_client/models/checkout_appointment_booking_request'
require 'swagger_client/models/checkout_item'
require 'swagger_client/models/checkout_item_wrapper'
require 'swagger_client/models/checkout_payment_info'
require 'swagger_client/models/checkout_shopping_cart_request'
require 'swagger_client/models/class_description'
require 'swagger_client/models/class_payroll_event'
require 'swagger_client/models/class_schedule'
require 'swagger_client/models/client'
require 'swagger_client/models/client_contract'
require 'swagger_client/models/client_credit_card'
require 'swagger_client/models/client_document'
require 'swagger_client/models/client_index'
require 'swagger_client/models/client_index_value'
require 'swagger_client/models/client_membership'
require 'swagger_client/models/client_purchase_record'
require 'swagger_client/models/client_relationship'
require 'swagger_client/models/client_service'
require 'swagger_client/models/color'
require 'swagger_client/models/contact_log'
require 'swagger_client/models/contact_log_comment'
require 'swagger_client/models/contact_log_sub_type'
require 'swagger_client/models/contact_log_type'
require 'swagger_client/models/contract'
require 'swagger_client/models/contract_item'
require 'swagger_client/models/course'
require 'swagger_client/models/credit_card_info'
require 'swagger_client/models/cross_regional_client_association'
require 'swagger_client/models/custom_client_field'
require 'swagger_client/models/custom_client_field_value'
require 'swagger_client/models/custom_payment_method'
require 'swagger_client/models/formula_note'
require 'swagger_client/models/get_activation_code_response'
require 'swagger_client/models/get_active_client_memberships_request'
require 'swagger_client/models/get_active_client_memberships_response'
require 'swagger_client/models/get_active_session_times_request'
require 'swagger_client/models/get_active_session_times_response'
require 'swagger_client/models/get_appointment_options_response'
require 'swagger_client/models/get_bookable_items_request'
require 'swagger_client/models/get_bookable_items_response'
require 'swagger_client/models/get_class_descriptions_request'
require 'swagger_client/models/get_class_descriptions_response'
require 'swagger_client/models/get_class_payroll_request'
require 'swagger_client/models/get_class_payroll_response'
require 'swagger_client/models/get_class_schedules_request'
require 'swagger_client/models/get_class_schedules_response'
require 'swagger_client/models/get_class_visits_request'
require 'swagger_client/models/get_class_visits_response'
require 'swagger_client/models/get_classes_request'
require 'swagger_client/models/get_classes_response'
require 'swagger_client/models/get_client_account_balances_request'
require 'swagger_client/models/get_client_account_balances_response'
require 'swagger_client/models/get_client_contracts_request'
require 'swagger_client/models/get_client_contracts_response'
require 'swagger_client/models/get_client_formula_notes_request'
require 'swagger_client/models/get_client_formula_notes_response'
require 'swagger_client/models/get_client_indexes_request'
require 'swagger_client/models/get_client_indexes_response'
require 'swagger_client/models/get_client_purchases_request'
require 'swagger_client/models/get_client_purchases_response'
require 'swagger_client/models/get_client_referral_types_request'
require 'swagger_client/models/get_client_referral_types_response'
require 'swagger_client/models/get_client_services_request'
require 'swagger_client/models/get_client_services_response'
require 'swagger_client/models/get_client_visits_request'
require 'swagger_client/models/get_client_visits_response'
require 'swagger_client/models/get_clients_request'
require 'swagger_client/models/get_clients_response'
require 'swagger_client/models/get_contact_logs_request'
require 'swagger_client/models/get_contact_logs_response'
require 'swagger_client/models/get_contracts_request'
require 'swagger_client/models/get_contracts_response'
require 'swagger_client/models/get_cross_regional_client_associations_request'
require 'swagger_client/models/get_cross_regional_client_associations_response'
require 'swagger_client/models/get_custom_client_fields_request'
require 'swagger_client/models/get_custom_client_fields_response'
require 'swagger_client/models/get_custom_payment_methods_request'
require 'swagger_client/models/get_custom_payment_methods_response'
require 'swagger_client/models/get_enrollments_request'
require 'swagger_client/models/get_enrollments_response'
require 'swagger_client/models/get_gift_card_response'
require 'swagger_client/models/get_gift_cards_request'
require 'swagger_client/models/get_locations_request'
require 'swagger_client/models/get_locations_response'
require 'swagger_client/models/get_packages_request'
require 'swagger_client/models/get_packages_response'
require 'swagger_client/models/get_products_request'
require 'swagger_client/models/get_products_response'
require 'swagger_client/models/get_programs_request'
require 'swagger_client/models/get_programs_response'
require 'swagger_client/models/get_required_client_fields_response'
require 'swagger_client/models/get_resources_request'
require 'swagger_client/models/get_resources_response'
require 'swagger_client/models/get_sales_request'
require 'swagger_client/models/get_sales_response'
require 'swagger_client/models/get_schedule_items_request'
require 'swagger_client/models/get_schedule_items_response'
require 'swagger_client/models/get_services_request'
require 'swagger_client/models/get_services_response'
require 'swagger_client/models/get_session_types_request'
require 'swagger_client/models/get_session_types_response'
require 'swagger_client/models/get_sites_request'
require 'swagger_client/models/get_sites_response'
require 'swagger_client/models/get_staff_appointments_request'
require 'swagger_client/models/get_staff_appointments_response'
require 'swagger_client/models/get_staff_permissions_request'
require 'swagger_client/models/get_staff_permissions_response'
require 'swagger_client/models/get_staff_request'
require 'swagger_client/models/get_staff_response'
require 'swagger_client/models/get_time_clock_request'
require 'swagger_client/models/get_time_clock_response'
require 'swagger_client/models/get_waitlist_entries_request'
require 'swagger_client/models/get_waitlist_entries_response'
require 'swagger_client/models/gift_card'
require 'swagger_client/models/gift_card_layout'
require 'swagger_client/models/issue_request'
require 'swagger_client/models/issue_response'
require 'swagger_client/models/level'
require 'swagger_client/models/liability'
require 'swagger_client/models/location'
require 'swagger_client/models/membership_type_restriction'
require 'swagger_client/models/model_class'
require 'swagger_client/models/package'
require 'swagger_client/models/pagination_response'
require 'swagger_client/models/product'
require 'swagger_client/models/program'
require 'swagger_client/models/prospect_stage'
require 'swagger_client/models/purchase_contract_request'
require 'swagger_client/models/purchase_contract_response'
require 'swagger_client/models/purchase_gift_card_request'
require 'swagger_client/models/purchase_gift_card_response'
require 'swagger_client/models/purchased_item'
require 'swagger_client/models/relationship'
require 'swagger_client/models/remove_client_from_class_request'
require 'swagger_client/models/remove_client_from_class_response'
require 'swagger_client/models/remove_from_waitlist_request'
require 'swagger_client/models/remove_from_waitlist_response'
require 'swagger_client/models/resource'
require 'swagger_client/models/sale'
require 'swagger_client/models/sale_payment'
require 'swagger_client/models/sales_rep'
require 'swagger_client/models/send_password_reset_email_request'
require 'swagger_client/models/service'
require 'swagger_client/models/session_type'
require 'swagger_client/models/site'
require 'swagger_client/models/size'
require 'swagger_client/models/staff'
require 'swagger_client/models/staff_permission_group'
require 'swagger_client/models/stored_card_info'
require 'swagger_client/models/substitute_class_teacher_request'
require 'swagger_client/models/substitute_class_teacher_response'
require 'swagger_client/models/substitute_teacher_class'
require 'swagger_client/models/time_card_event'
require 'swagger_client/models/time_clock_report'
require 'swagger_client/models/unavailability'
require 'swagger_client/models/upcoming_autopay_event'
require 'swagger_client/models/update_appointment_request'
require 'swagger_client/models/update_appointment_response'
require 'swagger_client/models/update_client_request'
require 'swagger_client/models/update_client_response'
require 'swagger_client/models/update_client_service_request'
require 'swagger_client/models/update_client_service_response'
require 'swagger_client/models/update_client_visit_request'
require 'swagger_client/models/update_client_visit_response'
require 'swagger_client/models/update_contact_log_comment'
require 'swagger_client/models/update_contact_log_request'
require 'swagger_client/models/update_contact_log_type'
require 'swagger_client/models/upload_client_document_request'
require 'swagger_client/models/upload_client_document_response'
require 'swagger_client/models/upload_client_photo_request'
require 'swagger_client/models/upload_client_photo_response'
require 'swagger_client/models/user'
require 'swagger_client/models/visit'
require 'swagger_client/models/waitlist_entry'

# APIs
require 'swagger_client/api/appointment_api'
require 'swagger_client/api/class_api'
require 'swagger_client/api/client_api'
require 'swagger_client/api/enrollment_api'
require 'swagger_client/api/payroll_api'
require 'swagger_client/api/sale_api'
require 'swagger_client/api/site_api'
require 'swagger_client/api/staff_api'
require 'swagger_client/api/user_token_api'

module SwaggerClient
  class << self
    # Customize default settings for the SDK using block.
    #   SwaggerClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
