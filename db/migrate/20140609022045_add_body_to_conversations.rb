class AddBodyToConversations < ActiveRecord::Migration
  def change
    add_column :mailboxer_conversations, :body, :text
  end
end
