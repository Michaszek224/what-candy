(deftemplate UI-state
   (slot id (default-dynamic (gensym*)))
   (slot display)
   (slot relation-asserted (default none))
   (slot response (default none))
   (multislot valid-answers)
   (slot state (default middle)))
   
(deftemplate state-list
   (slot current)
   (multislot sequence))
  
(deffacts startup
   (state-list))

;;;****************
;;;* STARTUP RULE *
;;;****************

(defrule system-banner ""

  =>
  
  (assert (UI-state (display WelcomeMessage)
                    (relation-asserted start)
                    (state initial)
                    (valid-answers))))

;;;***************
;;;* QUERY RULES *
;;;***************

(defrule determine-japan ""

   (logical (start))

   =>

   (assert (UI-state (display StartQuestion)
                     (relation-asserted japan)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-movies ""

   (logical (japan No))

   =>

   (assert (UI-state (display StartQuestion)
                     (relation-asserted movies)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-depression ""

   (logical (movies No))

   =>

   (assert (UI-state (display DepressionQuestion)
                     (relation-asserted depression)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-wyld ""

   (logical (depression No))

   =>

   (assert (UI-state (display WyldQuestion)
                     (relation-asserted wyld)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-fair ""

   (logical (wyld No))

   =>

   (assert (UI-state (display FairQuestion)
                     (relation-asserted fair)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-teeth ""

   (logical (fair No))

   =>

   (assert (UI-state (display TeethQuestion)
                     (relation-asserted teeth)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-thurgood ""

   (logical (teeth Yes))

   =>

   (assert (UI-state (display ThurgoodQuestion)
                     (relation-asserted thurgood)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-charlie ""

   (logical (thurgood No))

   =>

   (assert (UI-state (display CharlieQuestion)
                     (relation-asserted charlie)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-machine""

   (logical (charlie No))

   =>

   (assert (UI-state (display VendingQuestion)
                     (relation-asserted machine)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-undersixteen ""

   (logical (machine No))

   =>

   (assert (UI-state (display UnderQuestion)
                     (relation-asserted undersixteen)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-underten ""

   (logical (undersixteen Yes))

   =>

   (assert (UI-state (display UnderTenQuestion)
                     (relation-asserted underten)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-chalk ""

   (logical (undersixteen No))

   =>

   (assert (UI-state (display ChalkQuestion)
                     (relation-asserted chalk)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-play ""

   (logical (chalk No))

   =>

   (assert (UI-state (display PlayQuestion)
                     (relation-asserted play)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-fruity ""

   (logical (play No))

   =>

   (assert (UI-state (display FruityQuestion)
                     (relation-asserted fruity)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-rainbow ""

   (logical (fruity Yes))

   =>

   (assert (UI-state (display RainbowQuestion)
                     (relation-asserted rainbow)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-lincorice ""

   (logical (fruity No))

   =>

   (assert (UI-state (display LicoriceQuestion)
                     (relation-asserted lincorice)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-real ""

   (logical (lincorice Yes))

   =>

   (assert (UI-state (display LiquoriceQuestion)
                     (relation-asserted real)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-easter ""

   (logical (lincorice No))

   =>

   (assert (UI-state (display EasterQuestion)
                     (relation-asserted easter)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-diet ""

   (logical (easter No))

   =>

   (assert (UI-state (display DietQuestion)
                     (relation-asserted diet)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-truck ""

   (logical (diet No))

   =>

   (assert (UI-state (display TruckQuestion)
                     (relation-asserted truck)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-coconut ""

   (logical (truck No))

   =>

   (assert (UI-state (display CoconutQuestion)
                     (relation-asserted coconut)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-cushions ""

   (logical (coconut No))

   =>

   (assert (UI-state (display CushionsQuestion)
                     (relation-asserted cushions)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-toothpaste ""

   (logical (cushions No))

   =>

   (assert (UI-state (display ToothpasteQuestion)
                     (relation-asserted toothpaste)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-sundae ""

   (logical (toothpaste No))

   =>

   (assert (UI-state (display SundaeQuestion)
                     (relation-asserted sundae)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-nothink ""

   (logical (sundae No))

   =>

   (assert (UI-state (display NothinkelseQuestion)
                     (relation-asserted nothink)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-old ""

   (logical (nothink No))

   =>

   (assert (UI-state (display OldQuestion)
                     (relation-asserted old)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-classic ""

   (logical (old Yes))

   =>

   (assert (UI-state (display ClassicQuestion)
                     (relation-asserted classic)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-time ""

   (logical (old No))

   =>

   (assert (UI-state (display TimeQuestion)
                     (relation-asserted time)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-nuts ""

   (logical (time No))

   =>

   (assert (UI-state (display NutsQuestion)
                     (relation-asserted nuts)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-chocolate ""

   (logical (nuts No))

   =>

   (assert (UI-state (display ChocolateQuestion)
                     (relation-asserted chocolate)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-bite ""

   (logical (chocolate Yes))

   =>

   (assert (UI-state (display BiteQuestion)
                     (relation-asserted bite)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-love ""

   (logical (bite No))

   =>

   (assert (UI-state (display LoveQuestion)
                     (relation-asserted love)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-christmas""

   (logical (love No))

   =>

   (assert (UI-state (display ChristmasQuestion)
                     (relation-asserted christmas)
                     (response No)
                     (valid-answers No Yes))))


;;;****************
;;;* REPAIR RULES *
;;;****************

(defrule normal-engine-state-conclusions ""

   (logical (runs-normally Yes))
   
   =>

   (assert (UI-state (display NoRepair)
                     (state final))))

(defrule engine-sluggish ""

   (logical (engine-sluggish Yes))
   
   =>

   (assert (UI-state (display FuelLineRepair)
                     (state final))))

(defrule engine-misfires ""

   (logical (engine-misfires Yes))

   =>

   (assert (UI-state (display PointGapRepair)
                     (state final))))

(defrule engine-knocks ""

   (logical (engine-knocks Yes))

   =>

   (assert (UI-state (display AdjustTimingRepair)
                     (state final))))

(defrule tank-out-of-gas ""

   (logical (tank-has-gas No))

   =>

   (assert (UI-state (display AddGasRepair)
                     (state final))))
   
(defrule battery-dead ""

   (logical (battery-has-charge No))
   
   =>

   (assert (UI-state (display ReplaceBatteryRepair)
                     (state final))))
   
(defrule point-surface-state-burned ""

   (logical (point-surface-state Burned))

   =>

   (assert (UI-state (display ReplacePointsRepair)
                     (state final))))
                     
(defrule point-surface-state-contaminated ""
   
   (logical (point-surface-state Contaminated))
   
   =>

   (assert (UI-state (display CleanPointsRepair)
                     (state final))))

(defrule conductivity-test-positive-yes ""

   (logical (conductivity-test-positive Yes))
   
   =>

   (assert (UI-state (display LeadWireRepair)
                     (state final))))
                     
(defrule conductivity-test-positive-no ""

   (logical (conductivity-test-positive No))
      
   =>

   (assert (UI-state (display CoilRepair)
                     (state final))))
                     
(defrule no-repairs ""

   (declare (salience -10))
  
   (logical (UI-state (id ?id)))
   
   (state-list (current ?id))
     
   =>
  
   (assert (UI-state (display MechanicRepair)
                     (state final))))


;;;*************************
;;;* GUI INTERACTION RULES *
;;;*************************

(defrule ask-question

   (declare (salience 5))
   
   (UI-state (id ?id))
   
   ?f <- (state-list (sequence $?s&:(not (member$ ?id ?s))))
             
   =>
   
   (modify ?f (current ?id)
              (sequence ?id ?s))
   
   (halt))

(defrule handle-next-no-change-none-middle-of-chain

   (declare (salience 10))
   
   ?f1 <- (next ?id)

   ?f2 <- (state-list (current ?id) (sequence $? ?nid ?id $?))
                      
   =>
      
   (retract ?f1)
   
   (modify ?f2 (current ?nid))
   
   (halt))

(defrule handle-next-response-none-end-of-chain

   (declare (salience 10))
   
   ?f <- (next ?id)

   (state-list (sequence ?id $?))
   
   (UI-state (id ?id)
             (relation-asserted ?relation))
                   
   =>
      
   (retract ?f)

   (assert (add-response ?id)))   

(defrule handle-next-no-change-middle-of-chain

   (declare (salience 10))
   
   ?f1 <- (next ?id ?response)

   ?f2 <- (state-list (current ?id) (sequence $? ?nid ?id $?))
     
   (UI-state (id ?id) (response ?response))
   
   =>
      
   (retract ?f1)
   
   (modify ?f2 (current ?nid))
   
   (halt))

(defrule handle-next-change-middle-of-chain

   (declare (salience 10))
   
   (next ?id ?response)

   ?f1 <- (state-list (current ?id) (sequence ?nid $?b ?id $?e))
     
   (UI-state (id ?id) (response ~?response))
   
   ?f2 <- (UI-state (id ?nid))
   
   =>
         
   (modify ?f1 (sequence ?b ?id ?e))
   
   (retract ?f2))
   
(defrule handle-next-response-end-of-chain

   (declare (salience 10))
   
   ?f1 <- (next ?id ?response)
   
   (state-list (sequence ?id $?))
   
   ?f2 <- (UI-state (id ?id)
                    (response ?expected)
                    (relation-asserted ?relation))
                
   =>
      
   (retract ?f1)

   (if (neq ?response ?expected)
      then
      (modify ?f2 (response ?response)))
      
   (assert (add-response ?id ?response)))   

(defrule handle-add-response

   (declare (salience 10))
   
   (logical (UI-state (id ?id)
                      (relation-asserted ?relation)))
   
   ?f1 <- (add-response ?id ?response)
                
   =>
      
   (str-assert (str-cat "(" ?relation " " ?response ")"))
   
   (retract ?f1))   

(defrule handle-add-response-none

   (declare (salience 10))
   
   (logical (UI-state (id ?id)
                      (relation-asserted ?relation)))
   
   ?f1 <- (add-response ?id)
                
   =>
      
   (str-assert (str-cat "(" ?relation ")"))
   
   (retract ?f1))   

(defrule handle-prev

   (declare (salience 10))
      
   ?f1 <- (prev ?id)
   
   ?f2 <- (state-list (sequence $?b ?id ?p $?e))
                
   =>
   
   (retract ?f1)
   
   (modify ?f2 (current ?p))
   
   (halt))
   
