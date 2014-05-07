# => app/model/favorite.rb
class Favorite < ActiveRecord::Base
  belongs_to :tweet, counter_cache: :favourites_count
end

# => Migrations
class AddCounterCacheColumnToTweets < ActiveRecord::Migration
  def self.up
    add_column(:tweets, :favourites_count, :integer, default: 0)
  end

  def self.down
    remove_column(:tweets, :favourites_count)
  end
end