require 'rubygems'
require 'open-uri' 
require 'nokogiri'
require 'pp'
uri = 'http://code.google.com/apis/earth/documentation/reference/interface_g_e_plugin.html'
str = open(uri).read()
doc = Nokogiri::HTML(str)

def type_conv(t)
  t.gsub!('void','Void')
  t.gsub!('bool','Bool')
  t.gsub!('object','Dynamic')
  t.gsub!('string','String')    
  t.gsub!('function','Dynamic')
  t.gsub!('[optional] ', '?')
  t.gsub!(/\W/,'')
  t
end

docs = "package google;\nimport js.Dom;\nextern class Earth {\n"

doc.xpath("//div[@class='memitem']").each do |x|
  mem_name = x.xpath("div/table/tr/td[@class='memname']")[0]

  mem_name = mem_name.content.strip
  mem_name.gsub!('google.earth.','')

  # p mem_name
  ret_type, mem_name = mem_name.split(' ')
  ret_type = type_conv(ret_type)
  mem_name = 'public static function ' + mem_name
  # p ret_type
  param_types = x.xpath("div/table/tr/td[@class='paramtype']")
  param_names = x.xpath("div/table/tr/td[@class='paramname']")
  # p param_types[0].content
  # print mem_name.content.strip

  mem_doc= x.xpath("div[@class='memdoc']")[0].content

  params = ''
  if param_types.length > 0
    param_types = param_types.map{|x| x.content}
    param_types = param_types.map{|x| type_conv(x)}
    param_names = param_names.map{|x| x.content.gsub(/\W/, '')}
    params =  param_names.zip(param_types)
    params = params.map{|x| x.join(' : ')}
    params = params.join(', ')
    params = " #{params} "
  end
    params =  '(' + params + ')'
    docs += "/*\n#{mem_doc.strip}\n*/\n"
    docs += mem_name + params + ' : ' + ret_type + ";\n\n"



  

end
docs += '}'  
print docs

  
