local p = {}
 
local arrData = mw.loadData( 'Module:DataBuilding' )

--Общий список строений--
 function p.list()
    
	 local data=getBuilding()
	 local text='<ul>'
	 
	 for  i,v in ipairs(data) do
             text=text..'<li>[['..v..']]</li>'
    end
	 text=text..'</ul>'
	return text	 
 end
   
  
  
  function getBuilding()
       
      local data={}
      local i=1
     for  key,v in pairs(arrData) do
             data[i]=key
             i=i+1
    end
     
     table.sort(data, function(a, b) return a < b end)
      
      
      
      return data
  end
  
  
return p

