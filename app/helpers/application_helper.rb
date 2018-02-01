module ApplicationHelper
  # def setting_title title 
    # //truyen vo 1 param
#     binding.pry
#     if "#{title}".empty?
#        my_title = " Beautiful | My pages" 
#     else
#        my_title = "#{title} | My pages" 
#     end
#   end

  def change_name
    name = "Phong Toda"
    if current_page?(:controller => 'static_pages', :action => 'help')
      result = ""
      name.split(" ").reverse.each do |i|
        result = result + " #{i}"
      end
      return result
    elsif current_page?(:controller => 'static_pages', :action => 'about')
      return name
    end
  end
end
      
