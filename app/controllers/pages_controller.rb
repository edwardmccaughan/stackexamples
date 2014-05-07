class PagesController < ApplicationController
	def homepage
		@featured_post = Post.where(featured: true).order(created_at: :desc).first
	end	

	def contact

	end		

	def about

	end	



end