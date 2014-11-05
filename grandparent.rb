class Grandparent

attr_accessor :name, :age, :gender

@@grandchildren=0
@@family=[]
	def self.family
		@@family
	end

	def self.grandchildren
		@@grandchildren
	end

	def initialize (name,age,gender)
		@name= name
		@age= age
		@gender= gender

		@@family << self
	end
 
 	def self.showFamily
 		family.each do |i|
 			w_class = i.class.name
			Hash[:class,w_class,:name,i.name,:age,i.age]
		end
 	end



end

