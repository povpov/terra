local p = {}
 

 local arrData = mw.loadData( 'Module:DataCrops' )
 local common = require( "Module:Common" )
 local id = ""
 local tp=""
 
 --Список семян выбранного типа--
    function p.list(frame)
		
    	local data=getitems()  	
		local width=50 
		tp = frame.args[1]
		-- создание таблицы--

		local root = common.getCreateTable()
		
		local arrHeadTable={
					'Уровень',
					'Название',
					'Рост, часы ',
					'Покупка [[Файл:gold.png|15px]] ',
					'Продажа [[Файл:gold.png|15px]] ',
					'Рост, часы',
					'Доход [[Файл:gold.png|15px]] ',
					"Доход в час [[Файл:gold.png|15px]] ",
					}
		if tp=="all" then arrHeadTable[#arrHeadTable+1]='Категория' end
		arrHeadTable[#arrHeadTable+1]='Локация'
		arrHeadTable[#arrHeadTable+1]='Домик агронома'
		
		root: node(common.getCreateHeadTable(arrHeadTable))
		
		
		local j=0
		
		for i, v in ipairs(data) do
			if tp=='all'or v.tp==tp
			then		
			trbody =root:tag('tr')
			trbody:tag('td')					
				:css('text-align', "center")
				:css('width', width+2)
				:wikitext(v.level..'[[Файл:'..v.name..'.png|'..width..'px|center]]')
			trbody:tag('td')
				:wikitext('[['..v.name..']]')	
			trbody:tag('td')
				:css('text-align', 'center')
				:wikitext(v.tm)
			trbody:tag('td')
				:css('text-align', 'center')
				:wikitext(v.buy)		
			trbody:tag('td')
				:css('text-align', 'center')
				:wikitext(v.sell)	
			trbody:tag('td')
				:css('text-align', 'center')
				:wikitext(v.rez1)	
			trbody:tag('td')
				:css('text-align', 'center')
				:wikitext(v.rez2)
			
			if tp=="all"
			then trbody:tag('td')
				:wikitext('[['..v.tp..']]') end
			trbody:tag('td')
				:wikitext(v.location)
			trbody:tag('td')
				:wikitext(v.agronom)
			j=j+1
			end
        end
    	local caption = root:tag('caption')
			:css('text-align', 'left')
			:wikitext("Всего: "..j)
		
		
		return tostring( root )	
    	
    end
 
   
   --Временная страница для контроля загрузки фоток--
	function p.photo()
    	local data=getitems()  	
    	local total=0
    	local text=''
    	
    	for i, v in ipairs(data) do
                text=text.."<tr>"..
				"<td>[["..v.name.."]]</td>"..
				"<td>[[File:"..v.name..".png|50px]]</td>"..
				"<td>"..
				"[[File:"..v.name.."tree.png|50px]]"..
				"</td>"..
				
				"<td>"..
"[[file:"..v.name.."bronze.png|50px]]"..
				"</td>"..
				"<td>"..
"[[file:"..v.name.."silver.png|50px]]"..
				"</td>"..
				"<td>"..
"[[file:"..v.name.."gold.png|50px]]"..
				"</td>"..
				"<td>"..
"[[file:"..v.name.."platinum.png|50px]]"..
				"</td>"..
				"<td>"..
"[[file:"..v.name.."diamond.png|50px]]"..
				"</td>".."</tr>"		
				
				
        end
    	
    	return "<table class='crop'>"..
			"<tr>"..
			"<th>Имя</th>"..
			"<th>big</th>"..
			"<th>tree</th>"..
		
			"<th>Имя</th>"..
			"<th>бРО</th>"..
			"<th>сер</th>"..
			"<th>зол</th>"..
			"<th>пл</th>"..
			"<th>алм</th>"..
			"</tr>"..text..
			"</table>"
    	
    end

	--Получить список семян--
function getitems()
   local data={}
	local i=1
	for key, v in pairs(arrData) do
			data[i]={name=v.name,tm=v.tm,tp=v.tp, bronze=v.bronze, silver=v.silver, gold=v.gold,platinum=v.platinum, diamond=v.diamond}
			data[i].sell=(v.sell==0) and '' or v.sell
			data[i].buy=(v.buy==0 or v.buy=='vip') and '' or v.buy
			data[i].level=(v.level==0) and '' or "<span style='color: green'>c "..v.level.." ур.</span><br> "
			data[i].location=(v.location=='') and '[[Локации|Любые]]' or '[['..v.location..']]'
			data[i].rez1=(data[i].buy~='' and data[i].sell~='' ) and (v.sell-v.buy) or ''
			data[i].rez2=(v.tm~=0 and data[i].sell~='' ) and (math.floor((v.sell-v.buy)/v.tm*100)/100) or ''
		if pcall(function () 
			if v.agronom==nil then
                    error()
                end 
			end) 
		then
		    if v.location=='Остров динозавров'
		    then
		        data[i].agronom='[[Доисторический агроном]]'
	        else
	             data[i].agronom='[[Домик агронома]]'
	        end
		else data[i].agronom='' end
		
		
		
		
		i=i+1
	end
    	
	table.sort(data,function( a, b ) return a.name < b.name end )
  return data
  end
      
    --Карточка растения (семена)--
function p.getView( frame )
 
	id = frame.args[1]

	return path()..
		infobox()..
		description()..
		placeBuy()..
		level()..
		location()..	
		'<h2>Загружается на фабрики</h2>'..(require("Module:Factory").fab(id))..	
		'<h2>Можно скормить животным</h2>'..(require("Module:Animal").fab(id))..
		experience()..
		medal()..
		'[[Category:Семена]]'..
		'[[Category:'..arrData[id].tp..']]'
	
end
function path()	
	return '<div style="font-size:12px; margin-bottom:10px">[['..arrData[id].tp1..']] / [['..arrData[id].tp..']] / '..id..'</div>'
	end

function infobox()

local text='<div class="infobox-crop" >'..
		'<div class="infobox-crop-h">'..id..'</div>'..
		'<div id ="img-tree">[[file:'..id..'tree.png|center]]</div>'..
	'<div>'..
		'<div class="item-spacing item-border">'..
		  '<div class="item-label">Категория</div>'..
		  '<div class="item-data">[['..arrData[id].tp..']]</div>'..
			'</div>'..
			'<div class="item-spacing item-border">'..
			  '<div class="item-label">Рост, часы</div>'..
			  '<div class="item-data">'..arrData[id].tm..' &#128336;</div>'..
			'</div>'..
			'<div class="item-spacing item-border">'..
				  '<div class="item-label">Уровень</div>'..
				  '<div class="item-data">'
			if 	  arrData[id].level~=0
			then
				text=text..arrData[id].level 
			end  
			text=text..'</div>'..
			'</div>'..
		'</div>'..
	'<div >'..
    '<div class="infobox-crop-h-section">Цена</div>'..
    '<div class="item-spacing item-border">'
	text=text..'<div class="item-label">Покупка</div>'..
      '<div class="item-data">'
	 if pcall(function ()
                if arrData[id].vip==nil then
                    error()
                end	
			
            end) 
	then
		text=text..'требуются vip - жетоны'
	  
	else
		if arrData[id].buy~=0 then 	
			text=text..arrData[id].buy..' [[Файл:gold.png|15px]]'
		end
	end 
	  text=text..'</div>'..
    '</div>'..
    '<div class="item-spacing item-border">'..
      '<div class="item-label">Продажа</div>'..
      '<div class="item-data">'
  if arrData[id].sell~=0
	then
	   text=text..arrData[id].sell..' [[Файл:gold.png|15px]]'
	end
	  text=text..'</div>'..
		'</div>'..
	  '</div>'..
	 '<div >'..
    '<div class="infobox-crop-h-section">Доход</div>'..
    '<div class="item-spacing item-border">'..
      '<div class="item-label">Доход</div>'..
      '<div class="item-data">'
	if arrData[id].buy~=0 and arrData[id].sell~=0
	then
	  text=text..(arrData[id].sell - arrData[id].buy)..' [[Файл:gold.png|15px]]'
	
	end  
	text=text..'</div>'..
    '</div>'..
    '<div class="item-spacing item-border">'..
      '<div class="item-label">Доход в час</div>'..
      '<div class="item-data">'
	  if arrData[id].tm~=0 and arrData[id].sell~=0
		then
		   text=text..(math.floor((arrData[id].sell-arrData[id].buy)/arrData[id].tm*100)/100)..' [[Файл:gold.png|15px]]'		
		end
	  text=text..'</div>'..
    '</div>'..
  '</div>'..
'</div>'


return text
end

function description()
local text='<h2>Описание</h2>'..
	'<div style="float:left;padding: 0 10px 0 0">[[file:'..id..'.png|center|50px]]</div>'..
	'<div>Растение относится к категории [['..arrData[id].tp..']] и поэтому, как и все [[семена]], выращивается в зоне [[Поле]]. </div>'
	if (pcall(function ()
                if arrData[id].agronom==nil then
                    error()
                end				
            end))
	then
	text=text..'<div>Чтобы вырастить растение, надо вскопать грядку в зоне [[Поле]],  затем создать семена в [[Домик агронома|Домике агронома]]  и  посадить их на грядку.</div>'
	else
	text=text..'<div>Чтобы вырастить растение, надо вскопать грядку в зоне [[Поле]],  затем купить семена в [[Магазин|Магазине]]  и  посадить их на грядку.</div>'
	end
	text=text..'<div>Собрать урожай можно только после того, как он достигнет зрелости (100%).  У каждого растения свое индивидуальное время роста. Наведите курсор мышки на растение и увидите, сколько времени осталось до сбора урожая.</div>'..
	'<div>Для сбора урожая щелкните мышкой по растению, грядка опустеет, а растение автоматически переместится на [[склад]].</div>'..
	'<div>Собранный урожай можно продать, переработать на [[Фабрики|фабрике]] или скормить [[Животные|животным]].</div>'

return text
end
function placeBuy()
local text='<h2>Место покупки растения</h2>'
	
	if (pcall(function ()
                if arrData[id].agronom==nil then
                    error()
                end				
            end))
	then
	text=text..p.agronom(id) 
	else
	text=text..'<div>Семена этого растения продаются в [[Магазин|Магазине]].</div>'
	end

return text
end
function level()
local text=""
text=text..'<h2>Уровень</h2>'
	if 	  arrData[id].level~=0
		then
			text=text..' <div>Семена этого растения могут сажать игроки '..arrData[id].level..' уровня и выше.  </div>' 
			
		else
		text=text..' <div>Информацмя об уровне, с  которого можно сажать это растение, отсутствует. </div>' 
		end  

return text
end

function location()
local text=""
text=text..'<h2>Локация</h2>'
	if arrData[id].location =='' then
		text=text..'<div>Можно выращивать в любой [[локации]], в которой есть зона [[Поле]].<div>'
	else
		text=text..'<div>Можно выращивать только в локации [['..arrData[id].location..']].</div>'
	end

return text
end

function experience()
local text=""
text=text..'<h2>Опыт</h2>'..
	'<div>За посадку и сбор урожая 1 единицы  растения начисляется опыт, который необходим для перехода к следующему уровню игры.</div>'
return text
end

function medal()
local text=""
text=text..'<h2>Медали</h2>'..
'<div>За сбор урожая даются медали. Медали позволяют увеличить количество опыта за сбор 1 единицы растения.</div>'
if arrData[id].bronze~=0
then
	text=text..'<div>Для получения медали требуется собрать на игровом поле определенное количество растений:</div>'
	local root = mw.html.create('table'):addClass('crop')
	local head =root:tag('tr')
	local body=root:tag('tr')
	head: tag('th'):wikitext("")
	head: tag('th'):wikitext("Бронзовая медаль")
	body: tag('td'):wikitext('Количество растений')
	body: tag('td'):wikitext(arrData[id].bronze):css('text-align', 'center')

	head: tag('th'):wikitext("Серебрянная медаль")
	body: tag('td'):wikitext((arrData[id].silver==0) and "" or arrData[id].silver):css('text-align', 'center')

	head: tag('th'):wikitext("Золотая медаль")
	body: tag('td'):wikitext((arrData[id].gold==0) and "" or arrData[id].gold):css('text-align', 'center')

	head: tag('th'):wikitext("Платиновая медаль")
	body: tag('td'):wikitext((arrData[id].platinum==0) and "" or arrData[id].platinum):css('text-align', 'center')

	head: tag('th'):wikitext("Алмазная медаль")
	body: tag('td'):wikitext((arrData[id].diamond==0) and "" or arrData[id].diamond):css('text-align', 'center')
	text=text..tostring(root)
end

return text
end

function p.agronom(id)
local text='<div>Семена этого растения создаются в [[Домик агронома|Домике агронома]].</div>'


if not  pcall(function ()
		if arrData[id].create==nil then
			error()
		end				
	end)
then
return text
end

	text=text..'<div>Сначала в Домике агронома проводится исследование, для которого потребуется:</div><table class="article-table" style="min-width: 400px;">'
	local td1=""
	local td2=""
	local td3=""
	for key, v in pairs(arrData[id].create) do
		td1=td1..'<td style="min-width: 100px; text-align: center">[['..v.name..']]</td>'
		td2=td2..'<td style="text-align: center">[[File:'..v.name..'.png|50px]]</td>'
		td3=td3..'<td style="text-align: center;color: #267F00; font-size: 16px">'..v.c
		if v.name~='Монеты' then
		td3=td3..' шт.'
		end
		if pcall(function ()
			if arrData[v.name].buy==nil then
				error()
			end				
		end)
		then
			td3=td3..' = '..arrData[v.name].buy*v.c..' [[Файл:gold.png|15px]]'
		end
		td3=td3..'</td>'
	end
	text=text..
	'<tr>'..td1..'</tr>'..
	'<tr>'..td2..'</tr>'..
	'<tr>'..td3..'</tr>'..
	'</table>'

	text=text..'<div>Время исследования: '..arrData[id].createtm..' час.</div>'..
'<div>Исследование проводится только один раз - чтобы разблокировать создание семян.</div>'..
'<div>Когда исследование закончено, можно начинать создавать семена. Для создания 1 единицы семян потребуется:</div>'..
'<table  class="article-table" style="min-width: 400px;">'
text=text..'<tr>'
local td1=""
	local td2=""
	local td3=""
	for key, v in pairs(arrData[id].agronom) do
		td1=td1..'<td style="min-width: 100px; text-align: center">[['..v.name..']]</td>'
		td2=td2..'<td style="text-align: center">[[File:'..v.name..'.png|50px]]</td>'
		td3=td3..'<td style="text-align: center;color: #267F00; font-size: 16px">'..v.c
		if v.name~='Монеты' then td3=td3..' шт.' end
		if pcall(function ()
			if arrData[v.name].buy==nil then
				error()
			end				
		end)
		then
			td3=td3..' = '..arrData[v.name].buy*v.c..' [[Файл:gold.png|15px]]'
		end
		td3=td3..'</td>'
	end
	text=text..
	'<tr>'..td1..'</tr>'..
	'<tr>'..td2..'</tr>'..
	'<tr>'..td3..'</tr>'..
	'</table>'


return text
end
--Временная таблица для сверки опыта
function p.medallist()
    local data=getitems()

    local text="<table><tr><th>Семена</th><th>брон</th><th>серебро</th><th>золото</th><th>Платина</th><th>Алмаз</th></tr>"
    for i, v in ipairs(data) do
        text=text.."<tr>"..
        "<td>"..data[i].name.."</td>"..
        "<td>"..data[i].bronze.."</td>"..
        "<td>"..data[i].silver.."</td>"..
        "<td>"..data[i].gold.."</td>"..
        "<td>"..data[i].platinum.."</td>"..
        "<td>"..data[i].diamond.."</td>"
        
        
        text=text.."</tr>"
        end
    
    
    
    return text.."</table>"
    end
   
return p

