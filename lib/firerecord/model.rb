# frozen_string_literal: true

require_relative("concerns/config")
# require_relative("concerns/crud")
# require_relative("concerns/queries")
# require_relative("concerns/relational")

module Boolean; end
class TrueClass; include Boolean; end
class FalseClass; include Boolean; end

class Firerecord::Model
  # include(Firerecord::Concerns::Config)
  #extend(Firerecord::Concerns::Crud)
  #extend(Firerecord::Concerns::Queries)
  #extend(Firerecord::Concerns::Relational)

  define_singleton_method(:attribute) do |name, kind, **rest|
    send(:define_method, name.to_sym, ->() { instance_variable_get("@" + name.to_s) })
    send(:define_method, "#{name}=", ->(val) { instance_variable_set("@#{name}", val) })
  end

  def initialize(**opts)
    opts.each do |k,v|
      send("#{k}=", v)
    end
  end

  # attr_reader(:name)

  # define_singleton_method(:new) do |**args|
  #   @name = args[:name]
  #   args
  # end
end
