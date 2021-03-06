# Be sure to restart your server when you modify this file.

# Configure sensitive parameters which will be filtered from the log file.
Rails.application.config.filter_parameters += [:address,
                                               :animal_type,
                                               :birthdate,
                                               :cellular,
                                               :email,
                                               :family_name,
                                               :family_name2,
                                               :given_name,
                                               :identifier,
                                               :insurance_provider_id,
                                               :middle_name,
                                               :password,
                                               :phone,
                                               :search]
