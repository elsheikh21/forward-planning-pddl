(define (domain marsWorld)
    (:requirements :STRIPS)
    
    (:predicates (wayport ?loc) (at ?what ?loc) (rover ?x) (sample ?x) 
                (traversable ?from ?to) (have ?x ?what) (visible ?x ?wp)
                (dropLocation ?wp) (sampleLocation ?wp) (taken-image ?x ?photo)
                (stored-sample ?x ?sample) (photo ?x)
    )
    
    (:action move
        :parameters (?from ?to ?what)
        :precondition (and (rover ?what) (wayport ?from) (wayport ?to) 
                        (traversable ?from ?to))
        :effect (and (not(at ?what ?from)) (at ?what ?to))
    )
    
    (:action take-picture
        :parameters (?what ?at ?photo)
        :precondition (and (wayport ?at) (rover ?what) (at ?what ?at) (visible ?photo ?at))
        :effect (and (taken-image ?what ?photo) (not (visible ?photo ?at)))
    )
    
    (:action collect-sample
        :parameters (?what ?at ?sample)
        :precondition (and (rover ?what) (wayport ?at) (not(have ?what ?sample))
                        (at ?what ?at) (sampleLocation ?at) (sample ?sample))
        :effect (and (have ?what ?sample) (not(at ?at ?sample)))
    )
    
    (:action drop-sample
        :parameters (?what ?at ?sample)
        :precondition (and (rover ?what) (wayport ?at) (have ?what ?sample)
                        (at ?what ?at) (dropLocation ?at) (sample ?sample))
        :effect (and (not(have ?what ?sample)) (stored-sample ?what ?sample))
    )
)