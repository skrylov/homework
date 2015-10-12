module TrainBrand
	begin
	attr_accessor :brand
	
	
end
end

=begin
def validate!
		raise ArgumentError, "brand can not be empty." if @brand.nil? || @brand.empty?
		raise ArgumentError, "brand must not be shorter than 3 symbols." if @brand.length < 3 
		raise ArgumentError, "brand name must be symbols." if @brand.class != String 
	end

	def brand(brand)
	@brand = brand
	end

	def brand_print
		@train_brand
	end
=end