program ohms_calc
implicit none

character(len=32) :: opt0
character(len=32) :: opt1
character(len=32) :: opt2
character(len=32) :: opt3
character(len=32) :: opt4
character(len=16) :: tab
character(len=32) :: zero_err
character(len=16) :: volts_out
character(len=16) :: ohms_out
character(len=16) :: amps_out

character(len=32) :: get_volts
character(len=32) :: get_ohms
character(len=32) :: get_amps

integer :: choice
real :: volts, ohms, amps

opt0 = "Select value to find"
opt1 = "1.	Volts"
opt2 = "2.	Ohms"
opt3 = "3.	Amps"
opt4 = "Choose (1-3):"
  tab = "	"
zero_err = "**** Divide by zero error ****"
volts_out = "Volts: "
ohms_out = "Ohms: "
amps_out = "Amps: "

get_volts = "Enter volts:"
get_ohms = "Enter ohms:"
get_amps = "Enter amps:"

call clear_screen()
call splash()
call options()
read *, choice

select case (choice)

case(1)
	call clear_screen()
	call splash()

	print *, get_ohms
	read *, ohms

	print *, get_amps
	read *, amps
	volts = ohms * amps

	call clear_screen()
	call splash()

	print *, ohms_out, ohms
	print *, amps_out, amps
	print *, volts_out, volts

case(2)
	call clear_screen()
	call splash()

	print *, get_volts
	read *, volts

	print *, get_amps
	read *, amps

	if(amps == 0.0) then
		print *, zero_err
		stop
	endif

	ohms = volts / amps

	call clear_screen()
	call splash()

	print *, volts_out, volts
	print *, amps_out, amps
	print *, ohms_out, ohms

case(3)
	call clear_screen()
	call splash()

	print *, get_volts
	read *, volts

	print *, get_ohms
	read *, ohms

	if(ohms == 0.0) then
		print *, zero_err
		stop
	endif

	amps = volts / ohms

	call clear_screen()
	call splash()

	print *, volts_out, volts
	print *, ohms_out, ohms
	print *, amps_out, amps

case default
	print *, "Invalid choice"

end select

	contains

		subroutine clear_screen()
			call system("clear")
		end subroutine clear_screen

		subroutine splash()
			print *, "---- ---- ---- ----"
			print *, "ohms"
			print *, "---- ---- ---- ----"
		end subroutine splash

		subroutine options()
			print *, opt0
			print *, opt1
			print *, opt2
			print *, opt3
			print *, opt4
		end subroutine options

end program ohms_calc
