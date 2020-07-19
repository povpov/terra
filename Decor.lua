
local p = {}
 
local arrData = mw.loadData( 'Module:Datadecor')
 
 --Список декора--
function p.list(frame)
	local tp = frame.args[1]
	local width=50 
	local root = mw.html.create( 'div' )
	local tab = root:tag('table')
		:addClass( 'crop' )
		:attr('cellpadding', '0')
		:attr('cellspacing', '0')
	local trhead = tab:tag('tr')
		trhead:tag('th')
		trhead:tag('th')
			:css('vertical-align', 'top')
			:css('text-align', "left")
			:css('font-size', '75%')
			:wikitext("Название и цена")	
		trhead:tag('th')
			:css('vertical-align', 'top')
			:css('text-align', "left")
			:css('font-size', '75%')
			:wikitext("Опыт ")	
		trhead:tag('th')
		trhead:tag('th')
		trhead:tag('th')
			:css('vertical-align', 'top')
			:css('text-align', "left")
			:css('font-size', '75%')
			:wikitext("Название и цена")	
		trhead:tag('th')
			:css('vertical-align', 'top')
			:css('text-align', "left")
			:css('font-size', '75%')
			:wikitext("Опыт ")	
			
			
	local data=getitems()  
	local j=0
	local trbody
	for i, v in ipairs(data) do
			if (v.tp==tp)
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
				
				local buy=(v.buy==0) and '' or 'за '..v.buy..' [[file:gold.png|15px]]'..'<br>' 
				local level=(v.level==0) and '' or'с ур. '..v.level..' '
				local buyagro=(v.buyagro==0) and '' or'за '..v.buyagro..' [[file:agro.png|15px]]' 
				local levelagro=(v.levelagro==0) and '' or'с ур. '..v.levelagro..' '
				
				trbody:tag('td')
					:wikitext('<span style="font-weight:bold">'..v.name..'</span><br>'..level..buy..levelagro..buyagro)
					:css('text-align', "left")
				
				
				trbody:tag('td')
					:wikitext(v.exper)
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
local i=1
	for key, v in pairs(arrData) do
			data[i]={
				name=v.name,
				tp=v.tp,
				buy=v.buy,
				buyagro=v.buyagro,
				level=v.level,
				levelagro=v.levelagro,
				exper=(v.exper==0)and '' or v.exper
				}      	            
 
		i=i+1
	end
 
	table.sort(data,function( a, b ) return a.name < b.name end )

return data
end

return p

