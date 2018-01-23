;;;; try-mcclim.asd

(asdf:defsystem #:try-mcclim
  :description "Trying out the UI library McClim"
  :author "Francis St-Amour"
  :license "BSD 2-Clause License"
  :depends-on (#:mcclim)
  :serial t
  :components ((:file "package")
               (:file "try-mcclim")))

