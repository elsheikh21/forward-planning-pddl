(define (problem gripper_task)
    
    (:domain gripper_world)
    
    (:objects Room1 Room2 Ball1 Ball2 Ball3 Ball4 Gripper1 Gripper2)
    
    (:init (room Room1) (room Room2) (ball Ball1) (ball Ball2) (ball Ball3)
            (ball Ball4) (gripper Gripper1) (gripper Gripper2) (agent_at Room1)
            (at Ball1 Room1) (at Ball2 Room1) (at Ball3 Room1) (at Ball4 Room1)
            (gripper_free Gripper1) (gripper_free Gripper2))
    
    (:goal (and (at Ball1 Room2) (at Ball2 Room2) (at Ball3 Room2) (at Ball4 Room2)))
)