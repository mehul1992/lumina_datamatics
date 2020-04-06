class Numbering

  def initialize(data = [])
  	@data = data
  end

  def number_headers
  	a = []
  	@data.each do |x|
  	  for i in 0..x[:heading_level]
  	    if i == x[:heading_level]
  	    	a[i] = a[i].nil? ? 1 : (a[i] + 1)
   	    elsif a[i].nil?
   	    	a[i] = 1
  	    end 
  	  end
  	  a.each_with_index{|number, i| a[i] = nil if i > x[:heading_level]}
  	  number_str = a[0..x[:heading_level]].join(".")
  	  puts number_str + ". " + x[:title]
  	end
  end
end

data = [{ id: 1, title: "heading1", heading_level: 0 },
{ id: 2, title: "heading2", heading_level: 3 },
{ id: 3, title: "heading3", heading_level: 4 },
{ id: 4, title: "heading4", heading_level: 1 },
{ id: 5, title: "heading5", heading_level: 0 },
{ id: 6, title: "heading5", heading_level: 4 },
{id: 7, title: "heading5", heading_level: 4 }]
ab = Numbering.new(data)
ab.number_headers