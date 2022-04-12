(declare-const A (Array Int Int))
(declare-const n Int)
(assert (= A
  (store (store
    (store ((as const (Array Int Int)) 0) 2 1) 1 2) 0 3)))
(assert (= n 3))
(assert (not (exists ((i Int) (j Int)) (and (and (< i j) (and (>= i 0) (< j n))) (= (select A i) (select A j))))))
(check-sat)