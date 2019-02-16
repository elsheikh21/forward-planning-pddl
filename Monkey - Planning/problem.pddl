(define (problem monkey_task)
    
    (:domain monkey_world)
    
    (:objects Monkey Bananas Sissors Box Loc1 Loc2 Loc3 Loc4)
    
    (:init (monkey Monkey) (Box box) (Sissors sissors) (bananas Bananas)
            (loc Loc1) (loc Loc2) (loc Loc3) (loc Loc4)
            (at Monkey Loc1) (at Box Loc3) (at Bananas Loc2)
            (at Sissors Loc4))
    
    (:goal (and (holding Monkey Bananas) (at Monkey Loc1)))
)