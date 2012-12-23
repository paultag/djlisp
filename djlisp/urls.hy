; vim: tabstop=2 expandtab shiftwidth=2 softtabstop=2 filetype=lisp

(import "django.conf.urls")


(def urlpatterns (django.conf.urls.patterns ""
  (django.conf.urls.url "^$" "djlisp.hellisp.views.home")
))
