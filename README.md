-------------------------------------------
--the buttons handlers
-------------------------------------------
local function numBtnTapped(event)
--handles the number buttons ('1'-'9')
	local targetID = event.target.id;
	print("You pressed "..targetID);
	return true;
end

myText = display.newText("Accumculator", 40, 10, native.systemFont, 35)
myText:setFillColor(100,150,50)
-------------------------------------------
--the buttons panel
-------------------------------------------
--require the button constructor class
local btnClass = require "buttons";

--create the button panel
local buttonPanel = display.newGroup();
local bg = display.newRect(0,0,display.contentWidth -1,display.contentHeight - 100);
bg:setFillColor(50,50,50);
bg:setStrokeColor(0,255,255);
bg.strokeWidth = 1;
bg.x , bg.y = 0,0;
buttonPanel:insert(bg);

--position the button panel at the bottom center of the screen
buttonPanel:setReferencePoint(display.BottomCenterReferencePoint);
buttonPanel.x , buttonPanel.y = display.contentWidth * 0.5 , display.contentHeight - 2;

--array to hold all the buttons
local btns = {};
-------------------------------------------
--the number buttons
-------------------------------------------
--positioning variables
local padding = 20;
local rowSpacing = 100;
local colSpacing = 100;
local cols = 3; -- specify number of columns
local currentRow , currentCol = 0 , 3; --help us positioning the num buttons (4 gets rid of 0 rather than 3)

for i=0 , 9 do
	local btnParams = {};
        
        --add digits to layout
	btnParams.labelTxt = i;

	--create the button and put it in the array
	btns[#btns + 1] = btnClass.newNumBtn(btnParams);
        
        --we need to identify each button later, so we'll create a unique id for each one;
	btns[#btns].id = i;
        
        --add event listener to outline the number tapped.
        btns[#btns]:addEventListener("tap",numBtnTapped);
	    
	 --any other num button (1-9); 
         --Display col and row spacing
	btns[#btns].x, btns[#btns].y =  currentCol * colSpacing - 100, currentRow * rowSpacing + 245;
	
	--insert the new button into the panel
	buttonPanel:insert(btns[#btns]);
        
        --increment the columns
	currentCol = currentCol + 1;
	if currentCol >= cols then 
            currentCol = 0; 
        end

	if (currentCol % 3 == 0) then 
            currentRow = currentRow -1; 
        end
        
end