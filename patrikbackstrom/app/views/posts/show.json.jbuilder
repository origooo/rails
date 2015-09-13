json.extract! @post, :id, :title, :introduction, :text, :author, :created_at, :updated_at

json.comments @post.comments, :id, :user, :created_at