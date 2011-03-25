class UploadExtension < Radiant::Extension
  version "1.0"
  description "Upload File Manager"
  url "http://buddylee.org/blog/new-radiant-extension-upload/"
  
  define_routes do |map|
    map.connect 'admin/upload/:action', :controller => 'admin/upload'
  end
  
  def activate
    admin.tabs.add "Upload", "/admin/upload", :after => "Layouts", :visibility => [:all]
  end
  
  def deactivate
#    admin.tabs.remove "Upload"
#  was this deprecated? could not get upload to work in Radian 0.9.1 until this was commented
  end
  
end
