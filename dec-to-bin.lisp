(defun last-is-zero (x)
    (eql (ash (ash x -1) 1) x))

(defun last-to-str (x)
    (if (last-is-zero x)
        "0"
        "1"))

(defun dec-to-bin (x)
    (if (not (eql x 0))
        (concatenate 'string (dec-to-bin (ash x -1)) (last-to-str x))
        "0"))

(format t (dec-to-bin 256))
