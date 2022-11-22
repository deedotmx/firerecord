# frozen_string_literal: true

require_relative("model/config")
require_relative("model/crud")
require_relative("model/queries")
require_relative("model/relational")

module Firerecord::Model
  include(Firerecord::Model::Config)
  include(Firerecord::Model::Crud)
  include(Firerecord::Model::Queries)
  include(Firerecord::Model::Relational)
end
