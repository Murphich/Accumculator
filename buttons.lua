-------------------------------------------
--Create buttons class
-------------------------------------------

local class = {};
--this function creates a new generic button
function class.newBtn(params)
	--get parameters or set defaults
	local width = params.width or 90;
	local height = params.height or 90;
	local labelTxt = params.labelTxt or "";
	local bgColor = params.bgColor or {100,100,200};
	local txtColor = params.txtColor or {255,200,0};

	--our button display object
	local btn = display.newGroup();

	--button background
	local bg = display.newRoundedRect(0,0,width,height,5);
	bg:setFillColor(bgColor[1],bgColor[2],bgColor[3]);

	--position the bg
	bg:setReferencePoint(display.CenterReferencePoint);
	bg.x , bg.y = 0,0;
	--insert the background to the button group:insert
	btn:insert(bg);

	--create the button's label
	local label = display.newText(labelTxt,0,0, native.systemFont, 30)
	label:setTextColor(txtColor[1],txtColor[2],txtColor[3]);
        

	--position the label within the Button
	label:setReferencePoint(display.CenterReferencePoint);
	label.x , label.y = 0 , 0;

	--insert the label into the button group
	btn:insert(label);
	btn:setReferencePoint(display.CenterReferencePoint);
	return btn;      
        
end

--This function creates a numerical buttons
function class.newNumBtn(params)
	local numBtnParams = params or {};
	numBtnParams.bgColor = params.bgColor or {100,100,100};
	return class.newBtn(numBtnParams);
end

return class

