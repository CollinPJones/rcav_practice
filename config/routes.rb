Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  #Square Root
  get("/square_root/:number", { :controller => "calculations", :action => "square_root"})

  #Square
  get("/square/:number", { :controller => "calculations", :action => "square"})

  #Random
  get("/random/:min/:max", { :controller => "calculations", :action => "random"})

end
