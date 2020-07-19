local p = {}
local arrData = mw.loadData( 'Module:DataTask' )
local common = require( "Module:Common" )
--Список заданий
function p.list()
	local text=""
    local root = common.getCreateTable()
    root:node("<tr><th width='20%'>Название задания</th><th width='40%'>Требуется выполнить</th><th>Награда</th></tr>")
	
	local data=getitems()  	
	for i, v in ipairs(data) do
		tr=root:tag("tr")
		tr:tag('td'):wikitext('[['..v.name..']]'..(v.nameP=="" and "" or " ([["..v.nameP.."]])")):css('vertical-align', 'top')
		tr:tag('td'):wikitext(v.task):css('vertical-align', 'top')	
		tr:tag('td'):wikitext(v.award):css('vertical-align', 'top')
	end
	
    return tostring( root )
end

--Получить список --
function getitems()
   local data={}
	local i=1
	for key, v in pairs(arrData) do
			data[i]={name=key, task=v.task,award=v.award,sortBy=v.sortBy}
			
			if v.nameP
			then data[i].nameP=v.nameP
			else
			data[i].nameP=""
			end
		i=i+1
	end
 
	table.sort(data,function( a, b ) return a.sortBy < b.sortBy end )
  return data
  end
  
  
  
 function p.getView()
     return ""
     end
     
    --Получить список заданий одной категории-- 
      function p.getListCat(frame)
        local nameP= frame.args[1]
       local data=getitems()  	
       local idata={}
       local j=1
	   local text="<ul>"
	   for i, v in ipairs(data) do
			if v.nameP==nameP
			then
		    	text=text.."<li>[["..v.name.."]]</li>"
			end
		j=j+1
	end
	   
     return text.."</ul>"
     end
  

return p

