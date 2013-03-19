; vim: tabstop=2 expandtab shiftwidth=2 softtabstop=2 filetype=lisp

(import "os")

(def *debug* true)
(def *template-deubg* DEBUG)
(def *admins* [["Paul Tagliamonte" "tag@pault.ag"]])
(def *managers* *admins*)
(def *time-zone* "America/Chicago")
(def *language-code* "en-us")
(def *site-id* 1)
(def *use-i18n* true)
(def *use-l10n* true)
(def *use-tz* true)
(def *media-root* "")
(def *media-url* "")
(def *static-root* "")
(def *static-url* "/static/")
(def *staticfiles-dirs* [])
(def *databases* {"default" {
     "ENGINE" "django.db.backends.sqlite3"
     "NAME" "database.db"
     "USER" ""
     "PASSWORD" ""
     "HOST" ""
     "PORT" ""}})

(def *staticfiles-finders* ["django.contrib.staticfiles.finders.FileSystemFinder"
                            "django.contrib.staticfiles.finders.AppDirectoriesFinder"])
(def *secret-key* "CHANGEME")
(def *template-loaders* ["django.template.loaders.filesystem.Loader"
                         "django.template.loaders.app_directories.Loader"])
(def *middleware-classes* ["django.middleware.common.CommonMiddleware"
                           "django.contrib.sessions.middleware.SessionMiddleware"
                           "django.middleware.csrf.CsrfViewMiddleware"
                           "django.contrib.auth.middleware.AuthenticationMiddleware"
                           "django.contrib.messages.middleware.MessageMiddleware"])

(def *root-urlconf* "djlisp.urls")
(def *template-dirs* [(os.path.abspath "./djlisp/templates")])
(def *installed-apps* ["django.contrib.auth"
                       "django.contrib.contenttypes"
                       "django.contrib.sessions"
                       "django.contrib.sites"
                       "django.contrib.messages"
                       "django.contrib.staticfiles"])

(def *logging* {
     "version" 1
     "disable_existing_loggers" false
     "filter" {
        "require_debug_false" {
          "()" "django.utils.log.RequireDebugFalse"
        }
     }
     "handlers" {
        "mail_admins" {
          "level" "ERROR"
          "filters" []
          "class" "django.utils.log.AdminEmailHandler"
        }
     }
     "loggers" {
        "django.request" {
          "handlers" ["mail_admins"]
          "level" "ERROR"
          "propagate" true
        }
     }
})
