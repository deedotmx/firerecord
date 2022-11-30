# frozen_string_literal: true

module Firerecord::Concerns
  module Config
    define_singleton_method :attribute do |*opts|
      puts opts
    end

    # def self.attribute(name, type, **options)
    #   # send(
    #   #   :define_method,
    #   #   "#{name}=".to_sym,
    #   #   -> { |val| instance_variable_set("@" + name.to_s, val) }
    #   # )

    #   send(
    #     :define_method,
    #     name.to_sym,
    #     instance_variable_get("@" + name.to_s)
    #   )
    # end
  end
end
