local p = {}
--Список загонов--

 
local arrData = mw.loadData( 'Module:DataCorall' )
local animal = mw.loadData( 'Module:DataAnimal' )

local materials = mw.loadData( 'Module:DataMaterials' )

  function p.list()
  
	local data =getcorall()
	local total=0
	local text=''
	for key, v in pairs(data) do
		text=text.."<tr>"..
			"<td>[["..v.name.."]]</td>"..
			"<td style='text-align: center'>"..v.buy.."</td>"..
			"<td style='text-align: center'>"..v.level.."</td>"..
			"<td style='text-align: center'>"..v.buyagro.."</td>"..
			"<td style='text-align: center'>"..v.levelagro.."</td>"..
			"<td style='text-align: center'>"..v.c.."</td>"..
			"<td style='text-align: left'>"..v.location.."</td>"
		total=total+1
	end
	return "<table class='crop sortable'>"..
	"<caption class='text-align:left'>Всего: <b>"..total.."</b></caption><tr>"..
	"<th style='font-size: 80%'>Название </th>"..
	"<th style='font-size: 80%'>Цена [[Файл:gold.png|15px]] </th>"..
	"<th style='font-size: 80%'>Уровень для [[Файл:gold.png|15px]] </th>"..
	"<th style='font-size: 80%'>Цена [[Файл:agro.png|15px]] </th>"..
	"<th style='font-size: 80%'>Уровень для [[Файл:agro.png|15px]] </th>"..
	"<th style='font-size: 80%'>Количество животных </th>"..
	"<th style='font-size: 80%'>Локация </th>"..
	"</tr>"..text..
	"</table>"
    end	
--Массив для списка--
function getcorall()
local data={}
    local j=1
    for  key,v in pairs(arrData) do
		
		if pcall(function ()
			if v.buy==nil then
				error()
			end
		end)
		then
			data[j]={name=v.name,c=v.c}
			data[j].buy=(v.buy==0) and "" or v.buy
			data[j].level=(v.level==0) and "" or v.level
			data[j].buyagro=(v.buyagro==0) and "" or v.buyagro
			data[j].levelagro=(v.levelagro==0) and "" or v.levelagro
		else
		data[j]={name=v.name,c='',buy='',level='',buyagro='',levelagro=''}
		end
	local ok, msg = pcall(function ()
                if v.location==nil then
                    error()
                end
        end)
        if ok then
    		if v.location=='' then 
    		    data[j].location="[[Локации|Любые]]"
    	    else 
    	        data[j].location="[["..v.location.."]]"
    		end
		else 
			data[j].location=''
		end
	   j=j+1
    end
    
    table.sort(data,function( a, b ) return a.name < b.name end )
return data
end

 --Карточка загона--
function p.corall( frame )
 
	local id = frame.args[1]
	
	 local text='<div class="wrapper">[[Файл:'..arrData[id].name..'tree.png|240px]]</div>'..
            	'<div><b>Название: </b> '..arrData[id].name..'</div>'..
            	'<div><b>Тип: </b> [[Загоны]]</div>'
				--Цена и уровень-
					 text=text..'<div>Загон можно купить:'..
					 '<ul>'
					if arrData[id].buy~=0
					then
					   text=text..'<li>'
					  if arrData[id].level~=0
					  then
					      text=text..'с '..arrData[id].level..' уровня '
				      end
					   text=text..'за '..arrData[id].buy..' [[Файл:gold.png|15px]]</li>'
					end
				 
				 if arrData[id].buyagro~=0
					then
					   text=text..'<li>'
					  if arrData[id].levelagro~=0
					  then
					      text=text..'с '..arrData[id].levelagro..' уровня '
				      end
					   text=text..'за '..arrData[id].buyagro..' [[Файл:agro.png|15px]]</li>'
					end
				 
				 
				text=text..'</ul></div>'..
                '<div><b>Максимальное количество животных в загоне: </b> '..arrData[id].c..'</div>'..
                '<div style="clear: both"></div>'
					
					text=text..'<h2>Локация</h2>'
					if arrData[id].location =='' then
						text=text..'<div>Можно строить  в любой [[локации]].<div>'
					else
						text=text..'<div>Можно строить только в локации [['..arrData[id].location..']].</div>'							
                
			end
    	--Стройматериалы--
    text=text..build(id)
    --Животнеы в загоне--
    text=text..animalInCorall(id)
	
	return text
end
--
--Стройматериалы--
    function build(id)
        local text='<h2>Строительство</h2>'
        local ok, msg = pcall(function ()
                if arrData[id].materials==nil then
                    error()
                end
        end)
        if ok then
          text=text..'<p>После покупки загон необходимо еще построить, для этого нужно будет купить материалы.</p>'  
        
        else
            text=text..'Загон строится мгновенно, сразу же при покупке. [[Материалы]] для постройки загона не нужны.'
            return text
        end
        text=text..'<table class="article-table fab">'..
            	    '<tr>'..
            	    '<th></th>'..
            	    '<th>Материалы</th>'..
            	    '<th>Количество</th>'..
            	    '<th>Цена [[Файл:agro.png|15px]]</th>'..
            	    '<th>Стоимость [[Файл:agro.png|15px]]</th>'..
            	    '</tr>'
            
        local total=0
        for  i,v in ipairs(arrData[id].materials) do
		--Проверка на наличие материалов в модуле--
        	local ok, msg = pcall(function ()
                if materials[v.name].buy==nil then
                    error()
                end
            end)
           if ok then
            text= text..'<tr>'..
                        '<td>[[Файл:'..v.name..'.png|50px]]</td>'..
        	            '<td>'..v.name..'</td>'..
        	            '<td style="text-align:center">'..v.c..'</td>'..
        	            '<td style="text-align: center">'..materials[v.name].buy..'</td>'..
        	            '<td style="text-align: center">'..materials[v.name].buy*v.c..'</td>'..
        	            '</tr>'
        	            total=total+materials[v.name].buy*v.c
            else
                text= text..'<tr>'..
        	            '<td><span style="color: red">'..v.name..'</span></td>'..
        	            '<td style="text-align: center"></td>'..
        	            '<td style="text-align: center"></td>'..
        	            '</tr>'
            end
    	    i=i+1
        end 
        text= text..'<tr>'..
        	            '<td><b>Итого:</b></td>'..
        	            '<td style="text-align: center"> </td>'..
        	            '<td style="text-align: center"> </td>'..
        	            '<td style="text-align: center"> </td>'..
        	            '<td style="text-align: center; padding: 4px 0;"><b>'..total..'</b></td>'..
        	            '</tr>'
        text=text..'</table>'  
        return text
    end
 --Список животных для загона--
   function animalInCorall(frame)
       local id=''
       if type(frame)=='string'
       then
           id=frame
       elseif type(frame)=='table'
           then
           id= frame.args[1]  
       end
		local text='<h2>Животные для загона</h2>'..
		'<div>В загоне можно разместить животных:</div>'..
		'<ul>'
		
        for  key,v in pairs(animal) do
			if v.corall==id
			then
			text=text..'<li>[['..key..']]</li>'
			end
		end
		
       return text
     
   end
   

return p

