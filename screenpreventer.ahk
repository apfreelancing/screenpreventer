^r:: {
	Loop {
		counter := 0
		stop := False
		Loop {
			IsDown := GetKeyState("+", "P")

			if (IsDown)
			{
				stop := True
				break
			}
			counter := counter + 1
			if (counter > 1000)
			{
				break			
			}
			Sleep(10)
		}
		if (stop)
		{
			break
		}
		MouseMove(1, 0 , 50, "R")
		Sleep(1)
		MouseMove(-1, 0 , 50, "R")
	}
	MsgBox("stopped!")
	return
}
