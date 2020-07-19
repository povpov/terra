local p = {}
local arrData = mw.loadData( 'Module:DataNews' )


 function p.getNews()
     local text=""
     for  i,v in ipairs(arrData) do
        
            
            
        if i==6 then 
             
             text=text..'<div>[[Архив новостей]]</div>'
             break 
        end
          text=text..'<div style="padding: 5px 0; border-bottom: 1px solid rgb(204, 204, 204);"><b>'..v[1]..'</b> '..v[2]..'</div>'
     end
     
     return text
     end

 function p.getoldNews()
     local text=''
     for  i,v in ipairs(arrData) do
         
         if i>=6 then 
             text=text..'<div style="padding: 5px 0;border-bottom: 1px solid rgb(204, 204, 204);"><b>'..v[1]..'</b> '..v[2]..'</div>'
             
        end
         
     end
     return text
 end 
 
 
return p

