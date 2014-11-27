-------------------------------------------
--Quick Link Buttons
-------------------------------------------

local class = {};
--this function creates a new generic button
function class.newBtn(sets)
	--get parameters or set defaults
	local width = sets.width or 30;
	local height = sets.height or 75;
	local labelTxt = sets.labelTxt or "";
	local bgColor = sets.bgColor or {100,100,200};
	local txtColor = sets.txtColor or {255,200,0};

        --Create a new group for link buttons
        local btn = display.newGroup();

        --button background
	local bg1 = display.newRoundedRect(0,0,width,height,5);
	bg1:setFillColor(bgColor[1],bgColor[2],bgColor[3]);

        --Ref point for strings
	bg1.x , bg1.y = 0,0;
        btn:insert(bg1);
        
        --create the button's label
	local label = display.newText(labelTxt,0,0,native.systemFont, 10)
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
function class.newQlinkBtn(sets)
	local linkBtnParams = sets or {};
	linkBtnParams.bgColor = sets.bgColor or {100,100,100};
	return class.newBtn(linkBtnParams);
end

return class
