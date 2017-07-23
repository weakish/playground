; With large n, this will overflow the stack.

(defn fact [n]
  (if (zero? n)
    1
    (* n (fact (dec n))))


; With large n, this will overflow the stack *again*. Because Python does not
; implement tail call optimization.

(defn fact [n, &optional [acc 1]]
  (if (zero? n)
    acc
    (fact (dec n) (* n acc))))
