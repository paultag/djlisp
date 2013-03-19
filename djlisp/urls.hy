; vim: tabstop=2 expandtab shiftwidth=2 softtabstop=2 filetype=lisp

(import django.conf.urls)

(def urlpatterns (.patterns django.conf.urls ""
  (.url django.conf.urls "^$" "djlisp.hellisp.views.home")))
