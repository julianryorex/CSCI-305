	PROGRAM firstFortran
		IMPLICIT NONE
		INTEGER, PARAMETER :: LUNK = 30, LOONT = 15, LITT = 5, POON = 1 
		INTEGER :: remainder, lunker, loonter, little, pooney, userInput  
		CHARACTER(LEN=8) :: date, time
		CHARACTER(LEN=4) :: year, month*2, day*2
		CHARACTER(LEN=2) :: hour, minute		

		CALL date_and_time(date, time)
		year = date(1:4)
		month = date(5:6)
		day = date(7:8)
		hour = time(1:2)
		minute = time(3:4)

		WRITE(*,*) "mo-dy-year, Hr:min"
		WRITE(*,*) month, "-", day, "-", year, ", ", hour, ":", minute
		WRITE(*,*)

		WRITE(*,*) "Please enter an integer from 1 to 99"
		READ(*,*) remainder
		IF(remainder < 0) THEN
			WRITE(*,*) "Please enter a positive integer from 1 to 99"
			CALL EXIT(123)
		END IF
		lunker = Count(LUNK)
		loonter = Count(LOONT)
		little = Count(LITT)
		pooney = Count(POON)	
						
		IF (lunker > 0) WRITE(*,*) lunker, " Lunker"
		IF (loonter > 0) WRITE(*,*) loonter, " Loonter"
		IF (little > 0) WRITE(*,*) little, " Little"
		IF (pooney > 0) WRITE(*,*) pooney, " Pooney"
		WRITE(*,*)

		CALL Print(lunker, loonter, little, pooney)
		
		!------------------------------------------------------------

		CONTAINS
			INTEGER FUNCTION Count(coin)
				IMPLICIT NONE
				INTEGER, INTENT(IN) :: coin
				INTEGER :: number
		
				number = remainder/coin
			
				remainder = remainder-(coin*number)
				Count = number
		
			END FUNCTION Count
			
			SUBROUTINE Print(lunker, loonter, little, pooney)
				IMPLICIT NONE
				INTEGER, INTENT(IN):: lunker, loonter, little, pooney
				CHARACTER(LEN=2) :: ans1, ans2, ans3, ans4
				CHARACTER(LEN=100) :: answer
				
				WRITE(ans1, '(i2)') lunker 
				WRITE(ans2, '(i2)') loonter
				WRITE(ans3, '(i2)') little
				WRITE(ans4, '(i2)') pooney
				
				IF (lunker > 0) THEN
					answer = ans1//" Lunker"
				END IF
				IF (loonter > 0) THEN
					answer = TRIM(answer)//ans2 // " Loonter"
					
				END IF
				IF (little > 0) THEN
					answer = TRIM(answer)//ans3//" Little"
				END IF
				IF(pooney > 0) THEN
					answer = TRIM(answer)//ans4//" Pooney "
				END IF
				WRITE(*,*) answer
				
				
			END SUBROUTINE Print

			
	END PROGRAM firstFortran
		 	
	 

