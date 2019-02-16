(define (domain hanoi_world)
    
    (:requirements :strips)
    
    (:predicates (disk ?x) (loc ?x) (smaller ?x ?y) (on ?x ?y) (clear ?x))

    (:action move 
        :parameters (?disk ?from ?to)
        :precondition (and (disk ?disk) (on ?disk ?from) (smaller ?disk ?to)
                        (clear ?disk) (clear ?to)
                       )
        :effect (and (clear ?from) (on ?disk ?to) (not (on ?disk ?from)) 
                    (not (clear ?to))
                )
    )
)