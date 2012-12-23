; vim: tabstop=2 expandtab shiftwidth=2 softtabstop=2 filetype=lisp

(import "django.shortcuts")

(defn home [request]
  (django.shortcuts.render_to_response "home.html" {}))
