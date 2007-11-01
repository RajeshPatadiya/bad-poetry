# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version => 7) do

  create_table "poems", :force => true do |t|
    t.column "content",    :text
    t.column "author",     :string
    t.column "created_at", :datetime
    t.column "title",      :string
    t.column "user_id",    :integer
  end

  create_table "taggings", :force => true do |t|
    t.column "tag_id",        :integer
    t.column "taggable_id",   :integer
    t.column "taggable_type", :string
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type"], :name => "index_taggings_on_tag_id_and_taggable_id_and_taggable_type"

  create_table "tags", :force => true do |t|
    t.column "name", :string
  end

  add_index "tags", ["name"], :name => "index_tags_on_name"

  create_table "users", :force => true do |t|
    t.column "username", :string
    t.column "password", :string
    t.column "profile",  :text
    t.column "theme",    :string
  end

  create_table "votes", :force => true do |t|
    t.column "user_id", :integer
    t.column "poem_id", :integer
    t.column "points",  :integer
  end

end