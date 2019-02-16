(define (domain monkey_world)
    
    (:requirements :strips)
    
    (:predicates (at ?x ?y) (holding ?x ?y) (on ?x ?y) (box ?x) (monkey ?x) 
                 (bananas ?x) (sissors ?x) (loc ?x))

    (:action Move 
        :parameters (?who ?from ?to)
        :precondition (and (monkey ?who) (loc ?from) (loc ?to) (at ?who ?from))
        :effect (and (not (at ?who ?from)) (at ?who ?to))
    )
    
    (:action Push 
        :parameters (?who ?what ?from ?to)
        :precondition (and (monkey ?who) (loc ?from) (loc ?to) (box ?what) 
                            (at ?who ?from) (at ?what ?from) (not (on ?who ?what)))
        :effect (and (not (at ?who ?from)) (at ?who ?to) (not (at ?what ?from))
                    (at ?what ?to))
    )
    
    (:action ClimbUp
        :parameters (?who ?what ?loc)
        :precondition (and (monkey ?who) (box ?what) (at ?who ?loc)
                        (at ?what ?loc))
        :effect (and (on ?who ?what))
    )
    
    (:action ClimbDown
        :parameters (?who ?what)
        :precondition (and (monkey ?who) (box ?what) (on ?who ?what))
        :effect (and (not (on ?who ?what)))
    )
    
    (:action TakeSissors 
        :parameters (?who ?what ?from ?box)
        :precondition (and (monkey ?who) (sissors ?what) (box ?box) (loc ?from)
                            (at ?who ?from) (at ?box ?from) (at ?what ?from)
                            (on ?who ?box))
        :effect (and (holding ?who ?what))
    )

    (:action TakeBananas
        :parameters (?who ?what ?using ?loc ?box)
        :precondition (and (monkey ?who) (box ?box) (sissors ?using)
                            (bananas ?what) (loc ?loc) (at ?who ?loc)
                            (at ?what ?loc) (at ?box ?loc)
                            (holding ?who ?using) (on ?who ?box))
        :effect (and (holding ?who ?what))
    )

)