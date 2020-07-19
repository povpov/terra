local p = {}
local arrData = mw.loadData( 'Module:DataMaterials' )

 --Список материалов--
   
    function p.list(frame)
		local tp = frame.args[1]
        local root = mw.html.create( 'div' )
		local tab = root:tag('table')
			:addClass( 'crop' )
			:addClass( 'sortable' )
			:attr('cellpadding', '0')
			:attr('cellspacing', '0')
		
		local width=50  
		local trhead = tab:tag('tr')
		trhead:tag('th')
			:addClass('unsortable')
		trhead:tag('th')
			:css('vertical-align', 'top')
			:css('text-align', "left")
			:css('font-size', '75%')
			:wikitext("Название ")	
		trhead:tag('th')
			:css('vertical-align', 'top')
			:css('font-size', '75%')
			:wikitext("Цена, [[file:agro.png|15px]] ")	
		trhead:tag('th')
			:addClass('unsortable')
		trhead:tag('th')
			:addClass('unsortable')
		trhead:tag('th')
			:css('vertical-align', 'top')
			:css('text-align', "left")
			:css('font-size', '75%')
			:wikitext("Название ")	
		trhead:tag('th')
			:css('vertical-align', 'top')
			:css('font-size', '75%')
			:wikitext("Цена, [[file:agro.png|15px]] ")	
		
		
		local data=getitems()  
		local j=0
		local trbody
    	for i, v in ipairs(data) do
			if (v.shop==tp)
			then
				j=j+1
				if math.fmod(j,2)~=0 then
					trbody =tab:tag('tr')
				else
					trbody:tag('td'):css('background', '#fadf9d')
				end
				trbody:tag('td')					
					:css('text-align', "center")
					:wikitext('[[Файл:'..v.name..'.png|'..width..'px|center]]')
				trbody:tag('td')
					:wikitext(v.name)
					:css('text-align', "left")
				trbody:tag('td')
					:wikitext(v.buy)
					:css('text-align', "center")
			end
    	    
        end
		local caption = tab:tag('caption')
			:css('text-align', 'left')
			:wikitext("Всего: "..j)
		
		return tostring( root )	
	
        end
      
      
	   function getitems()
	   local data={}
	   j=1
	   for k, v in pairs(arrData) do
           data[j]={name=v.name, buy=v.buy, shop=v.shop}
		   j=j+1
           end
       table.sort(data,function( a, b ) return a.name < b.name end )
		   
	   return data
	   
	   end
	   
	  
return p

