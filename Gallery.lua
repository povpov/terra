local p = {}
function p.Gallery(frame,h)
    local id=''
    local text=''
   if type(frame)=='string'
       then
           id=frame
           h=3
       elseif type(frame)=='table'
           then
           id= frame.args[1]
           h= frame.args[2]  
       end
     text='<div style="padding: 20px 0 20px 0">'
   
    
    for i = 1, h do
       text=text..'<div style="float: left;padding: 10px">[[File:'..id..i..'.png|200px]]</div>' 
    end
    text=text..'<div style="Clear: both"></div>'..
    '</div>'
    
   
    return text
    end
return p

