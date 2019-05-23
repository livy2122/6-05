
display.setDefault("background", 0, 250, 0)



local Butta = display.newImageRect( "Butta.png", 200, 200 )
Butta.x = display.contentCenterX
Butta.y = 600
Butta.id = "Butta" 

local MyageTextField = native.newTextField( display.contentCenterX, display.contentCenterY - 100, 600, 100 )
MyageTextField.id = "Ageeeeeeee"

local enterAgeText = display.newText( "How Old Are You?" , 500, 100, native.systemFont, 60)
enterAgeText.id = "Aggggge"
enterAgeText:setFillColor( 1, 1, 1)


local dayTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 50, 600, 100 )
dayTextField.id = "Dattte"

local enterDayText = display.newText( "What Day IS it Today?" , 500, 250, native.systemFont, 60)
enterDayText.id = "Datewewee"
enterDayText:setFillColor( 1, 1, 1)



local output = display.newText( " " , 500,400, native.systemFont, 40)
output.id = "output "
output:setFillColor( 255, 0, 255)


local function ButtaButtonTouch( event )

	local Myage = tonumber(MyageTextField.text)
	local day = tostring(dayTextField.text)
	if day == "Saturday" or day == "Sunday" then
		output.text = "You can Sleep now"
	elseif (Myage <= 17) and (day == "monday" or day == "tuesday" or day == "wednesday" or day == "thursday" or day == "friday") then
		output.text = "Time to Wake up"
	elseif (Myage >= 18) and (day == "monday" or day == "tuesday" or day == "wednesday" or day == "thursday" or day == "friday") then
		output.text = "Go to Work"
	else
		output.text = "Try Again"
	end
		

end

Butta:addEventListener( 'touch' , ButtaButtonTouch)