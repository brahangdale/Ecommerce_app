# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Product
	id
	name
	image
	price
	category_id
	brand_id

create table for products
	routes add for product

	make controller for products 

	make crud for products
	
	show all products product index

	def admin_only!
		if !current_user.admin?
			# flash.now[:error] = "anouthorize"
			redirect_to root_path
		end(add this method for admin and all admin products) method is admin only?

		class ProductsController < ApplicationController
	before_action :authenticate_user!
	before_action :admin_only!

	for admin and productssss



