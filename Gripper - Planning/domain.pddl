(define (domain gripper_world)
    
    (:requirements :strips)
    
    (:predicates (room ?x) (ball ?x) (gripper ?x) (agent_at ?x) (at ?x ?y) (gripper_free ?x) (carrying ?x ?y))
    
    (:action agent_move
        :parameters (?from ?to)
        :precondition (and (room ?from) (room ?to) (agent_at ?from))
        :effect (and (agent_at ?to) (not (agent_at ?from)))
    )
    
    (:action agent_pickUp
        :parameters (?what ?from ?gripper)
        :precondition (and (agent_at ?from) (room ?from) (ball ?what) (gripper ?gripper) (gripper_free ?gripper) (at ?what ?from))
        :effect (and (not (at ?what ?from)) (not (gripper_free ?gripper)) (carrying ?what ?gripper))
    )
    
    (:action agent_drop
        :parameters (?what ?in ?gripper)
        :precondition (and (agent_at ?in) (room ?in) (ball ?what) (gripper ?gripper) (not (gripper_free ?gripper)))
        :effect (and (at ?what ?in) (gripper_free ?gripper) (not (carrying ?what ?gripper)))
    )
)