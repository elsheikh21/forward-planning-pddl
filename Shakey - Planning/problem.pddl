(define (problem shakey_problem)
    
    (:domain shakey_domain)
    
    (:objects Shakey Room1 Room2 Door1 Door2 Box1 Box2 Bx1 Bx2 Floor 
               START Corridor Switch1 Switch2)
    
    (:init (on Shakey Floor) (at Shakey START) (in START Room1)
           (box Box1) (at Box1 Bx1) (in Bx1 Room2)
           (box Box2) (at Box2 Bx2) (in Bx2 Room2)
           (in Door1 Room1) (in Door2 Room2) (in Door1 Corridor) (in Door2 Corridor)
           (in Switch1 Room1) (not (turnedOn Switch1)) 
           (in Switch2 Room2) (turnedOn Switch2)
    )
    
    (:goal (at Box2 Switch2))
)