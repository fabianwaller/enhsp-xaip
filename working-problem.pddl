(define
	(problem beluga-db)
	(:domain beluga)
  (:objects
		bt1 - truck
		bt2 - truck
		ft1 - truck
		ft2 - truck

		rack1 - rack
		rack2 - rack
		rack3 - rack

		jig0c - jig
		jig0b - jig
		jig0t - jig
		jig0wl - jig
		; jig0wr - jig

		jig1c - jig
		jig1b - jig
		jig1t - jig
		jig1wl - jig
		jig1wr - jig

		beluga1 - beluga
		beluga2 - beluga
		beluga3 - beluga

		hanger1 - hanger

		plA1 - production-line
	)
  (:init

		; TRUCKS
		(empty bt1)
		(atside bt1 bside)

		; (empty bt2)
		; (atside bt2 bside)

		(empty ft1)
		(atside ft1 fside)

		; (empty ft2)
		; (atside ft2 fside)

		(empty hanger1)

		; ARRIVAL SHEDULE
		(is-phase beluga1)
		( = (to-process-parts beluga1) 0)
		(next-arrival beluga1 beluga2)
		( = (to-process-parts beluga2) 0)
		(next-arrival beluga2 beluga3)
		( = (to-process-parts beluga3) 0)

		(= (unload-process beluga1) 3)
		(= (load-process beluga1) 2)

		(= (unload-process beluga2) 3)
		(= (load-process beluga2) 4)

		(= (unload-process beluga3) 1)
		(= (load-process beluga3) 3)
		

		; JIGS
		; airplaine 0 (all empty)
        ; (empty jig0wr)
        ; (outgoing jig0wr beluga1)
		; (= (size jig0wr) 4)
		; (= (empty-size jig0wr) 4)
        ; (= (load-order jig0wr) 3)		
		; (= (swap-unstack-count jig0wr bside) 0)
		; (= (swap-unstack-count jig0wr fside) 1)
		; (= (swap-stack-count jig0wr bside) 1)
		; (= (swap-stack-count jig0wr fside) 0)

		(empty jig0c)
		(outgoing jig0c beluga2)
		(= (size jig0c) 2)
		(= (empty-size jig0c) 2)
		(= (load-order jig0c) 3)
		(= (swap-unstack-count jig0c bside) 0)
		(= (swap-unstack-count jig0c fside) 1)
		(= (swap-stack-count jig0c bside) 1)
		(= (swap-stack-count jig0c fside) 0)

		(empty jig0b)
		(outgoing jig0b beluga1)
		(= (size jig0b) 2)
		(= (empty-size jig0b) 2)
		(= (load-order jig0b) 2)		
		(= (swap-unstack-count jig0b bside) 0)
		(= (swap-unstack-count jig0b fside) 1)
		(= (swap-stack-count jig0b bside) 1)
		(= (swap-stack-count jig0b fside) 0)

        ; incoming in beluga1
        (in jig0wl beluga1)
		(part-of jig0wl plA1)
        (outgoing jig0wl beluga2)
		(= (size jig0wl) 6)
		(= (empty-size jig0wl) 4)
		(= (unload-order jig0wl) 3)
        (= (load-order jig0wl) 4)	
		(= (process-order jig0wl) 7)
		(= (swap-unstack-count jig0wl bside) 1)
		(= (swap-unstack-count jig0wl fside) 0)
		(= (swap-stack-count jig0wl bside) 0)
		(= (swap-stack-count jig0wl fside) 1)

        (in jig1b beluga1)
		(part-of jig1b plA1)
		(outgoing jig1b beluga1)
		(= (size jig1b) 3)
		(= (empty-size jig1b) 2)
		(= (unload-order jig1b) 2)
		(= (load-order jig1b) 1)
		(= (process-order jig1b) 5)
		(= (swap-unstack-count jig1b bside) 1)
		(= (swap-unstack-count jig1b fside) 0)
		(= (swap-stack-count jig1b bside) 0)
		(= (swap-stack-count jig1b fside) 1)

        (in jig0t beluga1)
		(part-of jig0t plA1)
		(outgoing jig0t beluga2)
		(= (size jig0t) 2)
		(= (empty-size jig0t) 1)
		(= (unload-order jig0t) 1)
		(= (load-order jig0t) 2)
		(= (process-order jig0t) 6)
		(= (swap-unstack-count jig0t bside) 1)
		(= (swap-unstack-count jig0t fside) 0)
		(= (swap-stack-count jig0t bside) 0)
		(= (swap-stack-count jig0t fside) 1)



        ; incoming in beluga2
        (in jig1c beluga2)
		(part-of jig1c plA1)
		(outgoing jig1c beluga3)
		(= (size jig1c) 3)
		(= (empty-size jig1c) 2)
		(= (unload-order jig1c) 3)
		(= (load-order jig1c) 1)
		(= (process-order jig1c) 3)
		(= (swap-unstack-count jig1c bside) 1)
		(= (swap-unstack-count jig1c fside) 0)
		(= (swap-stack-count jig1c bside) 0)
		(= (swap-stack-count jig1c fside) 1)

		(in jig1wl beluga2)
		(part-of jig1wl plA1)
		(outgoing jig1wl beluga3)
		(= (size jig1wl) 6)
		(= (empty-size jig1wl) 4)
		(= (unload-order jig1wl) 2)
		(= (load-order jig1wl) 2)
		(= (process-order jig1wl) 2)
		(= (swap-unstack-count jig1wl bside) 1)
		(= (swap-unstack-count jig1wl fside) 0)
		(= (swap-stack-count jig1wl bside) 0)
		(= (swap-stack-count jig1wl fside) 1)

        (in jig1t beluga2)
		(part-of jig1t plA1)
		(outgoing jig1t beluga2)
		(= (size jig1t) 2)
		(= (empty-size jig1t) 1)
		(= (unload-order jig1t) 1)
		(= (load-order jig1t) 1)
		(= (process-order jig1t) 4)
		(= (swap-unstack-count jig1t bside) 1)
		(= (swap-unstack-count jig1t fside) 0)
		(= (swap-stack-count jig1t bside) 0)
		(= (swap-stack-count jig1t fside) 1)


        ; incoming in beluga3
		(in jig1wr beluga3)
		(part-of jig1wr plA1)
		(outgoing jig1wr beluga3)
		(= (size jig1wr) 6)
		(= (empty-size jig1wr) 4)
		(= (unload-order jig1wr) 1)
		(= (load-order jig1wr) 3)
		(= (process-order jig1wr) 1)
		(= (swap-unstack-count jig1wr bside) 1)
		(= (swap-unstack-count jig1wr fside) 0)
		(= (swap-stack-count jig1wr bside) 0)
		(= (swap-stack-count jig1wr fside) 1)

		; RACKS
		(atside rack1 bside)
		(atside rack1 fside)
		(empty rack1)
		(= (level rack1) 0)
		(= (max-level rack1) 6)
		(= (rack-in-use rack1) 0)

		(atside rack2 bside)
		(atside rack2 fside)
		; (empty rack2)
		(= (level rack2) 1)
		(= (max-level rack2) 6)
		(= (rack-in-use rack2) 1)

		; (atside rack3 bside)
		; (atside rack3 fside)
		; (empty rack3)
		; (= (level rack3) 0)
		; (= (max-level rack3) 6)
		; (= (rack-in-use rack3) 0)

		; (atside rack4 bside)
		; (atside rack4 fside)
		; (empty rack4)
		; (= (level rack4) 0)
		; (= (max-level rack4) 12)
		; (= (rack-in-use rack4) 0)

		; init rack
		(in jig0c rack2)
		(in jig0b rack2)
		; (in jig0wr rack2)

		(clear jig0c bside)
		(clear jig0b fside)

		; (on jig0wr jig0c bside)
		(on jig0c jig0b bside)
		(on jig0b jig0c fside)
		; (on jig0c jig0wr fside)

		;Production Lines
		(= (delivery-process plA1) 7)

		(= (total-cost) 0)

		(= (total-swaps) 0)


	)
  (:goal (and

		(empty jig0wl)
		(empty jig1b)
		(empty jig0t)

		(in jig0b beluga1)
		(in jig1b beluga1)

		(empty jig1c)
		(empty jig1wl)
		(empty jig1t)

		(in jig0wl beluga2)
		(in jig0c beluga2)
		(in jig0t beluga2)
		(in jig1t beluga2)

		; (in jig1wr beluga3)
		; (in jig1wl beluga3)
		; (in jig1c beluga3)

		; (<= (total-swaps) 1)
		; (<= (total-swaps) 2)
		; (<= (total-swaps) 3)
		; (<= (total-swaps) 4)
		; (<= (total-swaps) 5)
		; (<= (total-swaps) 6)
		; (<= (total-swaps) 7)
		; (<= (total-swaps) 8)
		; (<= (total-swaps) 9)
		; (<= (total-swaps) 10)
		; (<= (total-swaps) 11)
		; (<= (total-swaps) 12)
		; (<= (total-swaps) 13)
		; (<= (total-swaps) 14)
		; (<= (total-swaps) 15)
		; (<= (total-swaps) 16)
        ; (<= (+ (rack-in-use rack1) (+ (rack-in-use rack2) (rack-in-use rack3))) 3)

        ; (<= (+ (rack-in-use rack1) (+ (rack-in-use rack2) (+ (rack-in-use rack3) (rack-in-use rack4)))) 4)
		
	))
  (:metric minimize (total-cost))
)