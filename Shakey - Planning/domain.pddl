(define (domain shakey_world)
    
    (:requirements :strips)

    (:predicates (at ?x ?y) (on ?x ?y) (in ?x ?y) (box ?x) (turnedOn ?x))
    
    (:action move
        :parameters (?from ?to ?through)
        :precondition (and (on Shakey Floor) (at Shakey ?from)
                        (in ?from ?through) (in ?to ?through))
        :effect (and (at Shakey ?to) (not(at Shakey ?from)))
    )
    
    (:action push
        :parameters (?what ?from ?to ?through)
        :precondition (and (on Shakey Floor) (box ?what)
                          (at ?what ?from) (at Shakey ?from)
                          (in ?from ?through) (in ?to ?through))
        :effect (and (not (at Shakey ?from)) (not (at ?what ?from)) 
                    (at Shakey ?to) (at ?what ?to))
    )
    
    (:action climbUp
        :parameters (?loc ?what)
        :precondition (and (on Shakey Floor) (box ?what) (at Shakey ?loc) (at ?what ?loc))
        :effect (and (not (on Shakey Floor)) (on Shakey ?what))
    )

    (:action climbDown
        :parameters (?what)
        :precondition (and (box ?what) (on Shakey ?what))
        :effect (and (on Shakey Floor) (not (on Shakey ?what)))
    )
    
    (:action switchOn
        :parameters (?which ?what)
        :precondition (and (box ?what) (on Shakey ?what) (at ?what ?which))
        :effect (turnedOn ?which)
    )
    
    (:action switchOff
        :parameters(?which ?what)
        :precondition (and (box ?what) (on Shakey ?what) (at ?what ?which))
        :effect (not (turnedOn ?which))
    )
)