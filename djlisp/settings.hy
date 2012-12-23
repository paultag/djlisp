; vim: tabstop=2 expandtab shiftwidth=2 softtabstop=2 filetype=lisp

(import "os")

(def DEBUG true)
(def TEMPLATE_DEBUG DEBUG)
(def ADMINS [["Paul Tagliamonte" "tag@pault.ag"]])
(def MANAGERS ADMINS)
(def TIME_ZONE "America/Chicago")
(def LANGUAGE_CODE "en-us")
(def SITE_ID 1)
(def USE_I18N true)
(def USE_L10N true)
(def USE_TZ true)
(def MEDIA_ROOT "")
(def MEDIA_URL "")
(def STATIC_ROOT "")
(def STATIC_URL "/static/")
(def STATICFILES_DIRS [])
(def DATABASES {"default" {
     "ENGINE" "django.db.backends.sqlite3"
     "NAME" "database.db"
     "USER" ""
     "PASSWORD" ""
     "HOST" ""
     "PORT" ""
}})
(def STATICFILES_FINDERS ["django.contrib.staticfiles.finders.FileSystemFinder"
                          "django.contrib.staticfiles.finders.AppDirectoriesFinder"])
(def SECRET_KEY "CHANGEME")
(def TEMPLATE_LOADERS ["django.template.loaders.filesystem.Loader"
                       "django.template.loaders.app_directories.Loader"])
(def MIDDLEWARE_CLASSES ["django.middleware.common.CommonMiddleware"
                         "django.contrib.sessions.middleware.SessionMiddleware"
                         "django.middleware.csrf.CsrfViewMiddleware"
                         "django.contrib.auth.middleware.AuthenticationMiddleware"
                         "django.contrib.messages.middleware.MessageMiddleware"])

(def ROOT_URLCONF "djlisp.urls")
(def TEMPLATE_DIRS [(os.path.abspath "./djlisp/templates")])
(def INSTALLED_APPS ["django.contrib.auth"
                     "django.contrib.contenttypes"
                     "django.contrib.sessions"
                     "django.contrib.sites"
                     "django.contrib.messages"
                     "django.contrib.staticfiles"])

(def LOGGING {
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
