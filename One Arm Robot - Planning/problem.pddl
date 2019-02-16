(define (problem one_arm_task)
    
    (:domain one_arm_domain)
    
    (:objects Gripper Ballr Ballb Ballg Loc1 Loc2 Loc3 Loc4)
    
    (:init  (gripper Gripper) (ball Ballg) (ball Ballb) (ball Ballr)
            (location Loc1) (location Loc2) (location Loc3) (location Loc4)
            (gripper_free Gripper) (location_empty Loc2)
            (at Ballg Loc1) (at Ballr Loc3) (at Ballb Loc4)
    )
    
    (:goal (and (at Ballr Loc1) (at Ballg Loc2) (at Ballb Loc3)))
)