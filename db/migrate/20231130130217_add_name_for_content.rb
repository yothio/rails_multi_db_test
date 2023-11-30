class AddNameForContent < ActiveRecord::Migration[7.1]
  def change
    add_column :contents, :name, :string, after: :body
  end
end
