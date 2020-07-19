local p = {}
local arrData = mw.loadData( 'Module:DataTree' )
local common = require( "Module:Common" )
local id = ""
local tp = ""
local nameprod = ""
 --Список деревьев--*
      function p.list(frame)
		tp = frame.args[1]
		local root = common.getCreateTable()
		local arrHeadTable={
					'Уровень',
					'Название',
					'Покупка ',
					'Плоды',
					'Продажа [[Файл:gold.png|15px]]',
					'Рост, часы',
					'Доход в час [[Файл:gold.png|15px]]',
					}
		if tp=="all" then arrHeadTable[#arrHeadTable+1]='Категория' end
		arrHeadTable[#arrHeadTable+1]='Локация'
		arrHeadTable[#arrHeadTable+1]='Домик агронома'
		
		root: node(common.getCreateHeadTable(arrHeadTable))
		
		local data=getitems() 
		local width=50 
    	local j=0
    	for i, v in ipairs(data) do
			if tp=='all'or v.tp==tp
			then		
			trbody =root:tag('tr')
			trbody:tag('td')					
				:css('text-align', "center")
				:css('width', width+2)
				:wikitext(v.level..'[[Файл:'..v.name..'big.png|'..width..'px|center]]')
			trbody:tag('td')
				:wikitext('[['..v.name..']]')	
			trbody:tag('td')
				:css('text-align', 'center')
				:wikitext(v.buy)					
			trbody:tag('td')
				:css('text-align', 'center')
				:wikitext(v.prod)	
			trbody:tag('td')
				:css('text-align', 'center')
				:wikitext(v.sell)
			trbody:tag('td')
				:css('text-align', 'center')
				:wikitext(v.tm)
			trbody:tag('td')
				:css('text-align', 'center')
				:wikitext(v.rez)
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
   
	

	
		
	
	function infobox()
		local root = mw.html.create( 'div' )
				:addClass('infobox-crop')
		root:tag('div')
				:addClass('infobox-crop-h')
				:wikitext(id)	
		root:tag('div')
				:attr('id','img-tree')
				:wikitext('[[file:'..id..'tree.png|center]]')	
		local div1=root:tag('div')
		local item1_1=div1:tag('div')
				:addClass('item-spacing')
				:addClass('item-border')
			item1_1:tag('div')
				:addClass('item-label')
				:wikitext('Категория')	
			item1_1:tag('div')
				:addClass('item-data')
				:wikitext('[['..arrData[id].tp..']]')	
		local item1_2=div1:tag('div')
				:addClass('item-spacing')
				:addClass('item-border')		
			item1_2:tag('div')
				:addClass('item-label')
				:wikitext('Продукт')	
			item1_2:tag('div')
				:addClass('item-data')
				:wikitext(arrData[id].nameprod and arrData[id].nameprod or id)	
		
		local item1_3=div1:tag('div')
				:addClass('item-spacing')
				:addClass('item-border')		
			item1_3:tag('div')
				:addClass('item-label')
				:wikitext('Рост, часы')	
			item1_3:tag('div')
				:addClass('item-data')
				:wikitext(arrData[id].tm..' &#128336;')	
						
		local item1_4=div1:tag('div')
				:addClass('item-spacing')
				:addClass('item-border')		
			item1_4:tag('div')
				:addClass('item-label')
				:wikitext('Локация')	
			
			item1_4:tag('div')
				:addClass('item-data')
				:wikitext(arrData[id].location and '[['..arrData[id].location..']]' or '[[Локации|Любая]]')
		root:tag('div')
				:addClass('infobox-crop-h-section')
				:wikitext('Цена')	
		local div2=root:tag('div')
		local item2_1=div2:tag('div')
				:addClass('item-spacing')
				:addClass('item-border')		
			item2_1:tag('div')
				:addClass('item-label')
				:wikitext('Покупка')	
		local buy=(arrData[id].buy and arrData[id].buy..' [[Файл:gold.png|15px]]' or (arrData[id].buyagro and arrData[id].buyagro..' [[Файл:agro.png|15px]]'))
		item2_1:tag('div')
			:addClass('item-data')
			:wikitext(buy)
		local item2_2=div2:tag('div')
				:addClass('item-spacing')
				:addClass('item-border')		
			item2_2:tag('div')
				:addClass('item-label')
				:wikitext('Продажа')	
		item2_2:tag('div')
			:addClass('item-data')
			:wikitext(arrData[id].sell and arrData[id].sell..' [[Файл:gold.png|15px]]' or '')
		root:tag('div')
				:addClass('infobox-crop-h-section')
				:wikitext('Доход')	
		local div3=root:tag('div')
		local item3_1=div3:tag('div')
				:addClass('item-spacing')
				:addClass('item-border')		
			item3_1:tag('div')
				:addClass('item-label')
				:wikitext('Доход в час')	

		local rez=''		
		if arrData[id].tm and arrData[id].sell
		then
			   rez=(math.floor(arrData[id].sell/arrData[id].tm*100)/100)..' [[Файл:gold.png|15px]]'
		else
			   rez=''
		end
		item3_1:tag('div')
			:addClass('item-data')
			:wikitext(rez)	
		return tostring(root)
	end
	
	
	function description()
		local root = mw.html.create( 'div' )		
			root:tag('h2')
				:wikitext('Описание')
		local nameprod=arrData[id].nameprod and arrData[id].nameprod or id
			root:tag('div')
				:css('float','left')
				:wikitext('[[Файл:'..nameprod..'.png|50px]]')
			root:tag('')
				:wikitext('<div>Дерево сажается один раз, а урожай с него можно собирать многократно.</div>'..
		'<div>Собрать урожай можно только после того, как он достигнет зрелости (100%). У каждого дерева свое индивидуальное время роста. Наведите курсор мышки на дерево и увидите, сколько времени осталось до сбора урожая.</div>'..
		'<div>Для сбора урожая щелкните мышкой по дереву, крона дерева изменится (станет чуть поменьше размером или опустеет), а плоды дерева автоматически переместятся на [[склад]].</div>'..
		'<div>Собранный урожай можно продать, переработать на [[Фабрики|фабрике]] или скормить [[Животные|животным]].</div>')
		if arrData[id].tm~=0
		then
		local dvih=root:tag('div')
			:css('margin-bottom','10px')
			:wikitext('Время созревания плодов составляет <span style="font-size:20px; color:#187901;">  &#128336; '..arrData[id].tm..'  </span>час.')
		
			if arrData[id].sell
			then
				dvih:tag('')
					:wikitext(' При этом ваш доход в час составит <span style="font-size:20px; color:#866505;"> '..
					(math.floor(arrData[id].sell/arrData[id].tm*100)/100)..
					'</span> [[Файл:gold.png|15px]].')
				
			end
		
		end
		local tb=root:tag('table')
				:css('width','50%')
				:addClass('wikitable')
		local tr1 =tb:tag('tr')
			tr1:tag('td')
				:css('text-align','center')
				:wikitext('Покупка ('..id..')')
			tr1:tag('td')
				:css('text-align','center')
				:wikitext('Продажа ('..nameprod..')')
		local tr2 =tb:tag('tr')
			tr2:tag('td')
				:css('text-align','center')
				:css('font-size','20px')
				:css('color','#866505')
				:wikitext(arrData[id].buy and arrData[id].buy..' [[Файл:gold.png|15px]]' or (arrData[id].buyagro and arrData[id].buyagro..' [[Файл:agro.png|15px]]' or ""))
			
			tr2:tag('td')
				:css('text-align','center')
				:css('font-size','20px')
				:css('color','#866505')
			:wikitext(arrData[id].sell and arrData[id].sell..' [[Файл:gold.png|15px]]' or "")
  
		if (arrData[id].tm and arrData[id].buy and arrData[id].sell)
		then
		local ok='Покупка дерева окупится через <span style="font-size: 20px;color: green">'..(math.floor(arrData[id].buy/arrData[id].sell*arrData[id].tm/24*100)/100)..'</span> дней, для этого нужно снять <span style="font-size: 20px;">'..(math.floor(arrData[id].buy/arrData[id].sell*100)/100)..' </span> урожаев.'
		root:tag('div')
			:wikitext(ok or '')		
		end
		if arrData[id].buyagro and not arrData[id].buy
		then
		root:tag('div')
			:wikitext('Окупаемость дерева вычислить нельзя, т.к. дерево покупается за агробаксы.')
		end
local text=""
	
	
	
			
	
		return tostring( root )	..text
	end
	
	function getitems()

   local data={}
	local i=1
	for key, v in pairs(arrData) do
			data[i]={name=v.name, tp=v.tp}
			data[i].level=v.level and "<span style='color: green'>c "..v.level.." ур.</span><br> " or ''
			data[i].buy=v.buy and v.buy or (v.buyagro and v.buyagro..' [[Файл:agro.png|15px]]' or '') 
			data[i].tm=v.tm and v.tm or ''
			data[i].sell=v.sell and v.sell or ''
			data[i].rez=(v.sell and v.tm) and (math.floor(v.sell/v.tm*100)/100)  or ''
            data[i].prod=v.nameprod and v.nameprod or v.name
            data[i].location=v.location and '[['..v.location..']]' or '[[Локации|Любые]]'
            data[i].agronom=v.agronom and '[[Домик агронома]]' or ''
							
		i=i+1
	end
    	
	table.sort(data,function( a, b ) return a.name < b.name end )
  return data
  end
--Карточка растения (дерево) новая--
 
 function placeBuy()
	local root = mw.html.create( 'div' )
	    root:tag('h2'):wikitext('Место покупки растения')
		root:tag('div'):wikitext(arrData[id].agronom and agronom(id) or
			'Саженцы этого дерева продается в [[Магазин|Магазине]].')
	return tostring(root)
 end
 
 function location()
 local text=''
	text="<div><h2>Где можно выращивать?</h2>"
	if arrData[id].location 
	then text=text.."<div><span style='font-weight:bold'>Локация: <span>[["..arrData[id].location.."]]</div>"
	else
		text=text..'<div>Дерево "'..id..'" можно выращивать в любой [[локации]].</div>'
	end
		text=text..'<div>Посадить дерево можно в любой зоне: [[Поле]], [[Промзона]], [[Зона декора]].<div>'
	
	 return text
 end
 function del()
 local text=''
 text="<div><h2>Перемещение и удаление дерева</h2>"..
			"<div>Если дерево мешает в том месте, где вы его посадили, его можно передвинуть на другое, более удобное место, или удалить с игрового поля.</div>"
			
	
	if arrData[id].del
		then
		text=text..'<div>При удалении дерева вы получаете '..arrData[id].del..' [[Файл:gold.png|15px]].</div>'
		end
	return text.."</div>"
 end
 function experience()
	local text=""
	if arrData[id].exper
	then
		local root = mw.html.create( 'div' )
		root:tag('h2'):wikitext('Опыт')
		root:tag('div'):wikitext('За посадку и сбор урожая 1 дерева "'..id..'" начисляется [[опыт]] в размере '..arrData[id].exper..' <div class="star"></div>. ')
		text=tostring(root)
	end
	return text
end

function medal()
	local root = mw.html.create( 'div' )
	root:tag('h2'):wikitext('Медали')
	root:tag('div'):wikitext('За сбор урожая даются [[медали]]. Медали позволяют увеличить количество опыта за сбор 1 единицы растения. Чем больше урожая вы собираете, тем получаете больше медалей и опыта от сбора каждой единицы урожая. (Опыт, как вы помните, нужен для повышения игрового уровня).')
return tostring(root)


end
 function p.getView( frame )
	id = frame.args[1]
	nameprod=arrData[id].nameprod and arrData[id].nameprod or arrData[id].name
	return common.path(arrData[id].tp1, arrData[id].tp, id)	..
			infobox()..
			description()..			
			placeBuy()..
			del()..
			location()..
			'<h2>Загружается на фабрики</h2>'..(require("Module:Factory").fab(nameprod))..
			'<h2>Можно скормить животным</h2>'..(require("Module:Animal").fab(nameprod))..
			experience()..
			medal()..
			'[[Category:Деревья]]'..
			'[[Category:'..arrData[id].tp..']]'
end


 
function agronom(id)
--Подготовка списка с ценой продажи деревеьев--
local data={}
local j
for key, v in pairs(arrData) do
	j=v.nameprod and v.nameprod or v.name
	data[j]={sell=v.sell,name=v.name}
end
local root = mw.html.create( 'div' )
	root:tag('div')
		:wikitext('Семена этого растения создаются в [[Домик агронома|Домике агронома]].')
	
	if not  pcall(function ()
			if arrData[id].create==nil then
				error()
			end				
		end)
	then
	return tostring(root)
	end
	
	--Исследование семян-----------------
		root:tag('h3')
			:wikitext('Исследование семян')
		root:tag('div')
			:wikitext('Сначала в Домике агронома проводится исследование, для которого потребуется:')
		local t=root:tag( 'table' )
				:addClass('article-table')	
				:css('min-width', '400px')	
		local name1 = arrData[id].create[1].name or ""
		local name2 = arrData[id].create[2].name or ""
		local name3 = arrData[id].create[3].name or ""
		local t_tr1=t:tag('tr')
				t_tr1:tag('td')
					:css('min-width','100px')
					:css('text-align','center')
					:wikitext(data[name1].name and '[['..data[name1].name..'|'..name1..']]' or '[['..name1..']]')
				t_tr1:tag('td')
					:css('min-width','100px')
					:css('text-align','center')
					:wikitext(data[name2].name and '[['..data[name2].name..'|'..name2..']]' or '[['..name2..']]')
				t_tr1:tag('td')
					:css('min-width','100px')
					:css('text-align','center')
					:wikitext('[['..name3..']]')
		local t_tr2=t:tag('tr')
				t_tr2:tag('td')
					:css('text-align','center')
					:wikitext('[[File:'..name1..'.png|50px]]')
				t_tr2:tag('td')
					:css('text-align','center')
					:wikitext('[[File:'..name2..'.png|50px]]')
				t_tr2:tag('td')
					:css('text-align','center')
					:wikitext('[[File:'..name3..'.png|50px]]')
		local t_tr3=t:tag('tr')
				t_tr3:tag('td')
					:css('text-align','center')
					:css('color','#267F00')
					:wikitext(arrData[id].create[1].c.." шт. x "..data[name1].sell..' [[Файл:gold.png|15px]] = '..data[name1].sell*arrData[id].create[1].c..' [[Файл:gold.png|15px]]')
				t_tr3:tag('td')
					:css('text-align','center')
					:css('color','#267F00')
					:wikitext(arrData[id].create[2].c.." шт. x "..data[name2].sell..' [[Файл:gold.png|15px]] = '..data[name2].sell*arrData[id].create[2].c..' [[Файл:gold.png|15px]]')
				t_tr3:tag('td')
					:css('text-align','center')
					:css('color','#267F00')
					:wikitext(arrData[id].create[3].c.." шт.")
		
		root:tag( '' )
			:wikitext('<div>Как видно из таблицы, первые два ингредиента для исследования ([['..data[arrData[id].create[1].name].name..']] и [['..data[data[arrData[id].create[2].name].name].name..']]) – это плоды деревьев. Найти плоды можно на [[склад|складе]] (если, конечно, у вас на ферме посажены такие деревья).</div>'..
			'<div>Третий ингредиент для исследования – ([['..arrData[id].create[3].name..']]) – материал.</div>'..
			'<div>Обычно материалы покупаются за [[агробакс|агробаксы]]. Но материалы для исследования в Домике агронома можно также получить бесплатно у друзей. Для этого нажмите синий плюсик [[Файл:blueplus.png|15px]] в правом верхней углу картинки с материалом, откроется окошко с названием материала:</div>'..
			'[[Файл:'..arrData[id].create[3].name..'material1.png|200px|center]]'..
			'<div> нажмите в окошке кнопку «Попросить». После этого ваши друзья смогут совершенно бесплатно отправить вам необходимый материал.</div>'..
			'<div>Как только ваши друзья передадут вам достаточное количество материала, вместо синего плюсика в углу вы увидите зеленую галочку [[Файл:green.png|15px]].</div>'..
			'<div>Все ингредиенты собраны – можно начинать исследование. Нажмите на зеленую кнопку «Исследовать».</div>'..
			'[[Файл:'..id..'agronom1.png|200px|center]]'..
			'<div>Время исследования: '..arrData[id].createtm..' час.</div>'..
			'[[Файл:'..id..'agronom2.png|200px|center]]'..
			'<div>Исследование проводится только один раз - чтобы разблокировать создание семян.</div>')
		
		--Создание семян-----------------
	root:tag('h3')
			:wikitext('Создание семян')	
	root:tag('div')
			:wikitext('Когда исследование закончено, можно начинать создавать семена. Для создания 1 единицы семян потребуется:')	
	local t2=root:tag( 'table' )
				:addClass('article-table')	
				:css('min-width', '400px')	
	local name1 = arrData[id].agronom[1].name or ""
	local name2 = arrData[id].agronom[2].name or ""
	local name3 = arrData[id].agronom[3].name or ""
	local t2_tr1=t2:tag('tr')
				t2_tr1:tag('td')
					:css('min-width','100px')
					:css('text-align','center')
					:wikitext(data[name1].name and '[['..data[name1].name..'|'..name1..']]' or '[['..name1..']]')
				t2_tr1:tag('td')
					:css('min-width','100px')
					:css('text-align','center')
					:wikitext(data[name2].name and '[['..data[name2].name..'|'..name2..']]' or '[['..name2..']]')
				t2_tr1:tag('td')
					:css('min-width','100px')
					:css('text-align','center')
					:wikitext('[['..name3..']]')
	local t2_tr2=t2:tag('tr')
				t2_tr2:tag('td')
					:css('text-align','center')
					:wikitext('[[File:'..name1..'.png|50px]]')
				t2_tr2:tag('td')
					:css('text-align','center')
					:wikitext('[[File:'..name2..'.png|50px]]')
				t2_tr2:tag('td')
					:css('text-align','center')
					:wikitext('[[File:'..name3..'.png|50px]]')
	local t2_tr3=t2:tag('tr')
				t2_tr3:tag('td')
					:css('text-align','center')
					:css('color','#267F00')
					:wikitext(arrData[id].agronom[1].c.." шт. x "..data[name1].sell..' [[Файл:gold.png|15px]] = '..data[name1].sell*arrData[id].agronom[1].c..' [[Файл:gold.png|15px]]')
				t2_tr3:tag('td')
					:css('text-align','center')
					:css('color','#267F00')
					:wikitext(arrData[id].agronom[2].c.." шт. x "..data[name2].sell..' [[Файл:gold.png|15px]] = '..data[name2].sell*arrData[id].agronom[2].c..' [[Файл:gold.png|15px]]')
				t2_tr3:tag('td')
					:css('text-align','center')
					:css('color','#267F00')
					:wikitext(arrData[id].agronom[3].c.." шт.")
		root:tag( '' )
			:wikitext('<div>Первые ингредиента ('..arrData[id].agronom[1].name..' и '..arrData[id].agronom[2].name..') можно посадить у себя на ферме. </div>'..
			'<div>Третий ингредиент - '..arrData[id].agronom[3].name..' покупается за агробаксы.</div>'..
			'<div>Когда все ингредиенты собраны можно создавать семена. Нажмите на кнопку "Произвести" и получите 1 шт. растения.</div>'..
			'[[Файл:'..id..'agronom3.png|200px|center]]'..
			'<div>Созданные семена вы найдете на складе в разделе "Вещи".</div>')
return tostring(root)
end
-- function gal()

-- return '<h2>Галерея</h2>'..require("Module:Gallery").Gallery(id..'agronom',3)
-- end

  --Временная страница для контроля загрузки фоток--
	function p.photo()
    	local data=getitems()  	
    	local total=0
    	local text=''
    	
    	for i, v in ipairs(data) do
                text=text.."<tr>"..
				"<td>[["..v.name.."]]</td>"..
				"<td>[[File:"..v.prod..".png|50px]]</td>"..
				"<td>".."[[File:"..v.name.."big.png|50px]]".."</td>"..
				"<td>".."[[File:"..v.name.."tree.png|50px]]".."</td>"..
				"<td>".."[[File:"..v.name.."del.png|50px]]".."</td>"..
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
			"<th>прод</th>"..
			"<th>big</th>"..
			"<th>tree</th>"..
			"<th>вуд</th>"..
			"<th>бронза</th>"..
			"<th>сер</th>"..
			"<th>зол</th>"..
			"<th>пл</th>"..
			"<th>алм</th>"..
			"</tr>"..text..
			"</table>"
    	
    end
 
   
   
    
    return p

