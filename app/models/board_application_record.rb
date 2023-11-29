class BoardApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  connects_to database: { writing: :renewal, reading: :renewal }
end
