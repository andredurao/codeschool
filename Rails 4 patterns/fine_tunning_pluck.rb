# use pluck to return an array of values insted of ActiveRecord relation objects

# since Rails 4 pluck takes multiple args
ids = Item.where('due_at < ?', 2.days.from_now).pluck(:id, :name)