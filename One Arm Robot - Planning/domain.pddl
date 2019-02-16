(define (domain one_arm_domain)
    
    (:requirements :strips)
    
    (:predicates (gripper ?x) (location ?x) (ball ?x) (gripper_free ?x)
                 (location_empty ?x) (at ?x ?y)
    )
    
    (:action PickUp
        :parameters (?gripper ?what ?from)
        :precondition (and (gripper ?gripper) (ball ?what) (location ?from)
                        (at ?what ?from) (gripper_free ?gripper)
                        (not (location_empty ?from))
                        )
        :effect (and (not (gripper_free ?gripper)) (not (at ?what ?from)) (location_empty ?from))
    )
    
    (:action PutDown
        :parameters (?gripper ?what ?in)
        :precondition (and (gripper ?gripper) (ball ?what) (location ?in)
                        (not (gripper_free ?gripper)) (location_empty ?in)
                        )
        :effect (and (at ?what ?in) (gripper_free ?gripper))
    )
)