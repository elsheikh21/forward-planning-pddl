(define (problem marsProblem)
    (:domain marsWorld)
    
    (:objects rover 
              wayport1 wayport2 wayport3 
              wayport4 wayport5 wayport6
              wayport7 wayport8 wayport9 
              sample1 sample2 sample3 
              sample4 sample5 sample6
              photo1 photo2 photo3 photo4
    )
    
    (:init (rover rover) 
    
            (sample sample1) (sample sample2) (sample sample3) 
            (sample sample4) (sample sample5) (sample sample6) 
            
            (wayport wayport1) (wayport wayport2) (wayport wayport3) 
            (wayport wayport4) (wayport wayport5) (wayport wayport6) 
            (wayport wayport7) (wayport wayport8) (wayport wayport9)
            
            (at rover wayport6)
            
            (photo photo1) (photo photo2) (photo photo3) (photo photo4)
            
            (traversable wayport1 wayport5) (traversable wayport1 wayport9)
            (traversable wayport2 wayport5)
            (traversable wayport3 wayport4) (traversable wayport3 wayport6)
            (traversable wayport4 wayport3) (traversable wayport4 wayport8) (traversable wayport4 wayport9)
            (traversable wayport5 wayport1) (traversable wayport5 wayport2)
            (traversable wayport6 wayport3) (traversable wayport6 wayport7) (traversable wayport6 wayport8)
            (traversable wayport7 wayport6)
            (traversable wayport8 wayport4) (traversable wayport8 wayport6)
            (traversable wayport9 wayport1) (traversable wayport9 wayport4)
            
            (not(have rover sample)) 
            
            (visible photo1 wayport2) (visible photo1 wayport3) (visible photo1 wayport4) 
            (visible photo2 wayport5) (visible photo2 wayport7)
            (visible photo3 wayport8)
            (visible photo4 wayport1) (visible photo4 wayport5)
            
            (sampleLocation wayport2) (sampleLocation wayport3) (sampleLocation wayport8)
            (sampleLocation wayport9)
            
            (dropLocation wayport7)
    )
    (:goal (and (at rover wayport1) (stored-sample rover sample1) 
                (stored-sample rover sample2) (stored-sample rover sample3) 
                (stored-sample rover sample4) (stored-sample rover sample5) 
                (stored-sample rover sample6)
                (taken-image rover photo1) (taken-image rover photo2) 
                (taken-image rover photo3) (taken-image rover photo4)
            )
    )
)