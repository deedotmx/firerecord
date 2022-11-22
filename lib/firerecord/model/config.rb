# frozen_string_literal: true

module Firerecord::Model::Crud
  def self.attribute(name, type, **options)
    send(:define_method, "#{name}=".to_sym,
      { |val| instance_variable_set("@" + name.to_s, val) })

    send(:define_method, name.to_sym,
      { |val| instance_variable_get("@" + name.to_s) })
  end
end


