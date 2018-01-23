;;;; try-mcclim.lisp

(in-package #:try-mcclim)

(define-application-frame sulfur ()
  ()
  (:pointer-documentation t)
  (:panes
   (interactor :interactor)
   (application :application))
  (:layouts
   (default (vertically () application interactor))))

(defun start-app ()
  (unless *application-frame*
    (unwind-protect
        (progn
          (setf *application-frame* (make-application-frame 'sulfur))
          (run-frame-top-level *application-frame*))
      (setf *application-frame* nil))))
