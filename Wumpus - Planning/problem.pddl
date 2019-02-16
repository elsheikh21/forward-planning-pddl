(define (problem wumpus_task)
    
    (:domain wumpus_world)
    
    (:objects Agent Gold Wumpus Arrow Pit s11 s12 s13 s21 s22 s23)
    
    (:init  (agent Agent) (arrow Arrow) (wumpus Wumpus) (gold Gold) (pit Pit)
            (loc s11) (loc s12) (loc s13) (loc s21) (loc s22) (loc s23) 
            (at Agent s11) (at Pit s12) (at Gold s13) (at Wumpus s23)
            (has Agent Arrow) (adj s11 s12) (adj s12 s11) (adj s11 s21) (adj s21 s11)
            (adj s21 s22) (adj s22 s21) (adj s12 s13) (adj s13 s12) (adj s22 s23)
            (adj s23 s22) (adj s13 s23) (adj s23 s13)
    )
    
    (:goal (and (has Agent Gold) (at Agent s11)))
)