package = "lua"
version = "dev-1"
source = {
   url = "git+ssh://git@github.com/royendgel/tello.git"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      tello = "tello.lua",
      

   }
}
