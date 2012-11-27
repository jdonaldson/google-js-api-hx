

require 'rubygems'
require 'open-uri' 
require 'nokogiri'
require 'pp'
require 'iconv'

uri = 'http://code.google.com/apis/earth/documentation/reference/index.html'
str = open(uri).read()

matches = str.scan(/(interface_[gekml_]+_\w+\.html)">([A-Z]\w+)/)
matches.each do |x|
  uri = 'http://code.google.com/apis/earth/documentation/reference/' + x[0]
  class_name = x[1]


  # uri = 'http://code.google.com/apis/earth/documentation/reference/interface_g_e_feature_container.html'
  # class_name = 'GEFeatureContainer'


  str = open(uri).read()
  inherits = str.match(/doxytag: inherits="(\w+)"/)
  if inherits

    inherits = ' extends ' +inherits[1]
  else
    inherits = ''
  end
  
  doc = Nokogiri::HTML(str)

  def type_conv(t)
    t.gsub!('void','Void')
    t.gsub!('bool','Bool')
    t.gsub!('object','Dynamic')
    t.gsub!('string','String')   
    t.gsub!('double','Float')
    t.gsub!('float','Float')  
    t.gsub!('int','Int')      
    t.gsub!('function','Dynamic')
    t.gsub!('[optional] ', '?')
    t.gsub!(/\W/,'')
    t
  end


  docs = "/*\nCreated by Justin Donaldson <jdonaldson@gmail.com> on "
  docs += "#{Time.now}\n"
  docs += "Based on original Google JS API documentation\n*/\n\n"
  docs += "import js.Dom;\n\nextern class #{class_name} #{inherits}{\n"

  doc.xpath("//div[@class='memitem']").each do |x|
    mem_name = x.xpath("div/table/tr/td[@class='memname']")[0]

    mem_name = mem_name.content.strip

    mem_name.gsub!(/((\w)+\.)+/,'')

    # p mem_name

    arr = mem_name.split(' ')



    if arr.length ==3
      mem_name = arr[2]
      mem_doc= x.xpath("div[@class='memdoc']")[0].content
      docs += "/*\n#{mem_doc.strip}\n*/\n"
      arr[1] = type_conv(arr[1])
      docs += 'public var ' + mem_name + ' : ' + arr[1] + ";\n\n"
    
    else

      ret_type, mem_name = arr
      ret_type = type_conv(ret_type)
      mem_name = 'public function ' + mem_name
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




  

  end
  docs += '}'  

  docs.gsub!(/\xC2/,'')
  docs.gsub!(/\xA0/,'')
  File.open('google-js-earth-v1/'+class_name+'.hx', 'w'){|f| f.write(docs)}
  p 'done with ' + class_name

end
