class ItemsController < ApplicationController
def publish
				if @item.publish
								flash[:notice] = "Your item published!"
				else
								flash[:notice] = "Your item has an error."
				end

				redirect_to @item
end
end

class Item < ActiveRecord::Base
				belogs_to :user

				def publish
								if !is_approved? || user == 'Loblaw'
												return false
								end

								self.published_on = Time.now
								self.save
				end
end
