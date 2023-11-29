module Contentable
  extend ActiveSupport::Concern

  included do
    self.table_name = 'contents'
  end
end
