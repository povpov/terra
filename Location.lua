local p={}
local id=''
local arrData

function p.getlist(frame)
    local text=""
    id = frame.args[1]
    text=text..
	'<h2>Семена</h2><div>В данной локации можно выращивать семена:</div>'..Htmllist('Module:DataCrops')..
    '<h2>Деревья</h2><div>В данной локации можно сажать деревья:</div>'..Htmllist('Module:DataTree')..
    '<h2>Животные</h2><div>В данной локации можно выращивать животных:</div>'..Htmllist('Module:DataAnimal')..
	'<h2>Загоны</h2>В данной локации можно построить загоны:<div></div>'..Htmllist('Module:DataCorall')..
    '<h2>Фабрики</h2><div>В данной локации можно построить фабрики:</div>'..Htmllist('Module:DataFactory')..
    '<h2>Строения</h2><div>В данной локации можно построить здания:</div>'..Htmllist('Module:DataBuilding')
    return text
end



--Обработка--
	function Htmllist(m)
	    
	    arrData = mw.loadData(m)
			data={}
			local j=1
			for  k,v in pairs(arrData) do
										
						if v.location==id and v.location~=''
						then
							data[j]=v.name
							j=j+1
						end
					
			end
		if #data==0 then return "<div><i>Пока информации нет.</i></div>" end
		if #data>1 then
			table.sort(data,function( a, b ) return a < b end )
		 end
		
		local root = mw.html.create( 'div' )
		
		local ul = root:tag('ul')
		local tab=root:tag('table')
		local tr=tab:tag('tr')
		
		for  i,v in ipairs(data) do
			--Список--
			ul:tag('li')
				:wikitext('[['..v..']]')
				
			--Картинки--
			if math.fmod(i, 4)==0 
    			then
    				tr=tab:tag('tr')			
    			end
			td=tr:tag('td')
			:css('padding','10px')
			:css('vertical-align','top')
			td:tag('div')
				:css('padding','0 10px 0 0')
				:css('font-size','16px')
				:wikitext('[['..v..']]')
			td:tag('div')
				:wikitext('[[file:'..v..'tree.png|200px|'..v..'|link='..v..']]')
		end

		return tostring( root )	
	end
return p

