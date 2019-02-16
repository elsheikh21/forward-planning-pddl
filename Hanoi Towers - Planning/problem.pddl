(define (problem hanoi_task)
    
    (:domain hanoi_world)
    
    (:objects Disk1 Disk2 Disk3 Loc1 Loc2 Loc3)
    
    (:init (disk Disk1) (disk Disk2) (disk Disk3)
            (loc Loc1) (loc Loc2) (loc Loc3)
            (on Disk1 Disk2) (on Disk2 Disk3) (on Disk1 Loc1)
            (on Disk2 Loc1)
            (on Disk3 Loc1)
            (clear Disk1) (clear Loc2) (clear Loc3)
            (smaller Disk1 Disk2) (smaller Disk1 Disk3) (smaller Disk2 Disk3)
            (smaller Disk1 Loc1)  (smaller Disk1 Loc2) (smaller Disk1 Loc3)
            (smaller Disk2 Loc1)  (smaller Disk2 Loc2) (smaller Disk2 Loc3)
            (smaller Disk3 Loc1)  (smaller Disk3 Loc2) (smaller Disk3 Loc3)
    )
    
    (:goal (and (on Disk1 Disk2) (on Disk2 Disk3) (on Disk3 Loc2)))
)