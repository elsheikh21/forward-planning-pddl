(define (domain wumpus_world)

    (:requirements :strips)

    (:predicates (at ?x ?y) (has ?x ?y) (loc ?x) (adj ?x ?y) (alive ?x)
                 (wumpus ?x) (gold ?x) (arrow ?x) (pit ?x) (agent ?x)
    )

    (:action Move
        :parameters (?who ?from ?to)
        :precondition (and (agent ?who) (loc ?from) (loc ?to) (adj ?from ?to) (not (pit ?to)))
        :effect (and (not (at ?who ?from)) (at ?who ?to))
    )
    
    (:action Shoot
        :parameters (?who ?what ?wumpus)
        :precondition (and (agent ?who) (arrow ?what) (wumpus ?wumpus) (has ?who ?what))
        :effect (and (not (has ?who ?what)) (not (alive ?wumpus)))
    )
    
    (:action Collect
        :parameters (?who ?what ?loc)
        :precondition (and (agent ?who) (gold ?what) (loc ?loc) (at ?who ?loc) (at ?what ?loc))
        :effect (and (not (at ?what ?loc)) (has ?who ?what))
    )
    
)