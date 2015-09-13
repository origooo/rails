class AddIntroductionToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :introduction, :text
  end
end
