require 'rubygems'
require 'open-uri' 
require 'nokogiri'
require 'pp'
uri = 'http://code.google.com/apis/maps/documentation/javascript/reference.html'
str = open(uri).read()
# doc = Nokogiri::HTML(open(uri))
# def move_fwd(xp) 
#   xp = xp.next_sibling
#   while (xp.content.match(/^[\s\n]+$/)) :
#     xp = xp.next_sibling
#   end
#   return xp
# end



parts = str.split(/<h2><a name="[A-Z]\w+"><\/a>/)
parts.shift()
parts.map!{ |x| x.gsub(/<p class\="backtotop">.*/m,'')}
classes = {}



def fix_param(x,use_int)
  p = x
  p.gsub!(".<","<")
  p.gsub!("boolean","Bool")
  p.gsub!("string","String")    
  p.gsub!("None", "Void")
  p.gsub!(/(\w+)\?/,'?\1' )
  p.gsub!(/\*/,'Dynamic')
  p.gsub!(/\bNode\b/,'HtmlDom')
  p.gsub!(/\w+\|\w+/,'Dynamic')
  p.gsub!(/\bcallback\b/,'_callback')
  reg = /function\(([\w ,]+)\)\)?(\s*:\s*(\w+))?/
  matches = p.match(reg)
  if matches
    args = matches[1].split(',').join('->')
    if matches[3]
      args += matches[3]
    else
      args += "->Void"
    end
    p.gsub!(reg,args)
  end
  


  p.gsub!(/\bArray\s*(?=[^<])/,'Array<Dynamic>')
  if use_int
      p.gsub!("number", "Int")
  else
    p.gsub!("number", "Float")
  end

  p
end

def is_int(x)
  x.match(/index|pixels/)
end



parts.each do |x| 
  output = ''
  name = x.match(/^\w+/)[0]

  # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  # if name != "Map"
  #   next
  # end
  classes[name] = {}

  x.gsub!(/[\w ]+<\/h2>/,'')
  class_desc = x.match(/<p>(.*?)(?=(<\/p>))/m)

  class_desc = class_desc[1]
  class_desc.gsub!(/<[^>]*>/,"")

  extends_info = class_desc.match(/(extends \w+)/)
  if extends_info 
     extends_info = extends_info[0]
  else 
    extends_info = ''
  end

  doc = Nokogiri::HTML(x)
  # doc.xpath("//h3").each do |n|
  #   p n.content
  # end
  all_vals = []

  doc.xpath("//table/tbody/tr").each do |x|
    cat =  x.parent.parent.previous_sibling.previous_sibling.content
    if not classes[name].key?(cat) :
      classes[name][cat] = {}
    end
      
     vals = x.xpath("td").map{|x| x.content}
    
     if vals.length == 0 
       next
     end
     func_name = vals.shift()
     classes[name][cat][func_name] = vals
     # vals.unshift(name,cat)  
     # all_vals.push(vals)
  end
  
 
  output+= "/*\nCreated by Justin Donaldson <jdonaldson@gmail.com> on "
  output+= "#{Time.now}\n"
  output+= "Based on original Google JS API documentation\n\n"
  output+= "#{class_desc}\n\n"
  if classes[name].key?("Events")
    output+= "This class produces the following events:\n"
    output+= "Event Name : Arguments - Description\n"
    output+= "======================================\n"
    classes[name]["Events"].each do |x|
      output+= fix_param("#{x[0]} : #{x[1][0]} - #{x[1][1]}\n", false)
    end
  end
  output += "*/\n"
  output+= "package google.maps;\nimport js.Dom;\n\n"
  output+= "extern class #{name} #{extends_info}{\n\n"

  if classes[name].key?("Properties") :
    classes[name]["Properties"].each do |x|

      

      output1 = "/*\n#{x[1][1]}\n*/\n"
      output += output1
      use_int = is_int(output1)
      output+= fix_param("public var #{x[0]} : #{x[1][0]};\n\n",use_int)
    end
  end
  
  if classes[name].key?("Constant") :
    classes[name]["Constant"].each do |x|
      

      output1 = "/*\n#{x[1][0]}\n*/\n"
      output += output1
      use_int = is_int(output1)      
      output+= fix_param("public static var #{x[0]} : Dynamic;\n\n",use_int)
    end
  end
  
  if classes[name].key?("Constructor") :

    classes[name]["Constructor"].each do |x|

      f_label = x[0]
      f_label = f_label.gsub(/^\w+/,'')
      f_label = 'new' + f_label

      output1 = "/*\n#{x[1][0]}\n*/\n"
      output += output1
      use_int = is_int(output1)
      output+= fix_param("public function #{f_label} : Void;\n\n", use_int)
    end

  end
  
  if classes[name].key?("Static Methods") :
    classes[name]["Static Methods"].each do |x|

      output1 = "/*\n#{x[1][1]}\n*/\n"
      output += output1
      use_int = is_int(output1)
      output+= fix_param("public static function #{x[0]} : #{x[1][0]};\n\n",use_int)
    end
  end
  
  
  if classes[name].key?("Methods") :
    classes[name]["Methods"].each do |x|
      
      
      output1 = "/*\n#{x[1][1]}\n*/\n"
      output += output1
      use_int = is_int(output1)
      output+= fix_param("public function #{x[0]} : #{x[1][0]};\n\n",use_int)

    end
  end
  
  output+= "\n}\n"
  # break
  # print output
  File.open('google-js-api/google/maps/'+name+'.hx', 'w'){|f| f.write(output)}
end



  

