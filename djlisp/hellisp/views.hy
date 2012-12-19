; vim: tabstop=2 expandtab shiftwidth=2 softtabstop=2 filetype=lisp

(import ["django.shortcuts"])

(def home (fn [request]
  (django.shortcuts.render_to_response "home.html" {})))
