; vim: tabstop=2 expandtab shiftwidth=2 softtabstop=2 filetype=lisp

(import [django.shortcuts [render-to-response]])


(defn home [request] (render-to-response "home.html" {}))
