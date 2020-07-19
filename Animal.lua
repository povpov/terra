local p = {}
	local arrData = mw.loadData( 'Module:DataAnimal' ) 
	local common = require( "Module:Common" )
	local id = ""
	local tp = ""
	local nameprod = ""

        --Список животных одной категории--*
      function p.list1(frame)
		tp = frame.args[1]
    	local data=getitems()  	
        local width=50 
		local root = common.getCreateTable()
		local arrHeadTable={
					'Уровень',
					'Животные',
					'Покупка ',
					'Продукт ',
					'Продажа [[Файл:gold.png|15px]]',
					'Рост &#128336; ',
					'Доход в час [[Файл:gold.png|15px]]',
					'Загон',
					}
		if tp=="all" then arrHeadTable[#arrHeadTable+1]='Категория' end
		arrHeadTable[#arrHeadTable+1]='Корм'
		arrHeadTable[#arrHeadTable+1]='Локация'
		
	    root: node(common.getCreateHeadTable(arrHeadTable))
			
			
			local j=0
			for i, v in ipairs(data) do
				if tp=='all'or v.tp==tp
				then	
				trbody =root:tag('tr')
				trbody:tag('td')					
					:css('text-align', "center")
					:css('width', width+2)
					:wikitext((v.level~='' and '<span style="color: green">c '..data[i].level..' ур.</span><br>' or '')..'[[Файл:'..v.name..'big.png|'..width..'px|center]]')
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
					:wikitext((v.tm and v.tm>60 and (v.tm/60)..' час.' or v.tm..'  мин.' or ''))
				
				trbody:tag('td') 
					:css('text-align', 'center')
					:wikitext(v.rez)
				
				trbody:tag('td') :wikitext((v.corall=='' and '' or '[['..v.corall..']]'))
				
				if tp=="all"
				then trbody:tag('td')
					:wikitext('[['..v.tp..']]') end
				trbody:tag('td') :wikitext((v.res=='' and '' or '[['..v.res..']]'))
				trbody:tag('td') :wikitext((v.location=='' and '[[Локации|Любые]]' or '[['..v.location..']]'))
				
				j=j+1
				end
			end
			
    	
    	local caption = root:tag('caption')
			:css('text-align', 'left')
			:wikitext("Всего: "..j)
    	return tostring( root )	
    end
    --Получить список животных--
	function getitems()
   local data={}
	local i=1
	for key, v in pairs(arrData) do
		data[i]={name=v.name, tp=v.tp}
		data[i].res=v.res and v.res or ''
		data[i].buy =v.buy and v.buy or v.buyagro..'[[Файл:agro.png|15px]]'
		data[i].level =v.level and v.level or (v.levelagro and v.levelagro or '')
		data[i].tm =v.tm and v.tm or ''
		data[i].sell =v.sell and v.sell or ''
		data[i].prod =v.nameprod and v.nameprod or v.name
		data[i].corall =v.corall and v.corall or ''
		data[i].rez =(v.tm and v.sell) and math.floor(v.sell/v.tm*100)/100*60 or ''
		data[i].location =v.location and v.location or ''
		i=i+1
	end
    	
	table.sort(data,function( a, b ) return a.name < b.name end )
  return data
  end

  function p.getView( frame )
	id = frame.args[1]
	nameprod=arrData[id].nameprod and arrData[id].nameprod or arrData[id].name
	return path()..
			infobox()..
			description()..
			feed()..			
			placeBuy()..
			corall()..
			location()..
			'<h2>Загружается на фабрики</h2>'..(require("Module:Factory").fab(nameprod))..
			'[[Category:Животные]]'..
			'[[Category:'..arrData[id].tp..']]'
end
  
  function feed()	
	local text=''
	if arrData[id].res then		
		text=text..'Для производства продукции животное нужно кормить. Корм для животного: [['..arrData[id].res..']].'	
	else
		text=text..'Корм для животного не требуется. Продукция производится автоматически.'
	end
	local root = mw.html.create( 'div' )
		root:tag('h2'):wikitext('Корм для животного')
		root:tag('div')
			:wikitext(text)
	return tostring( root )
  end
  
  
  
  function path()	
		local root = mw.html.create( 'div' )
				:css('font-size', '12px')
				:css('margin-bottom', '10px')
				:wikitext('[['..arrData[id].tp1..']] / [['..arrData[id].tp..']] / '..id)
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
				:wikitext('Рост  &#128336;')	
			item1_3:tag('div')
				:addClass('item-data')
				:wikitext(arrData[id].tm>60 and (arrData[id].tm/60)..' час.' or arrData[id].tm..'  мин.')
		if (arrData[id].level)
		then
		local item1_31=div1:tag('div')
				:addClass('item-spacing')
				:addClass('item-border')		
			item1_31:tag('div')
				:addClass('item-label')
				:wikitext('Уровень')	
			item1_31:tag('div')
				:addClass('item-data')
				:wikitext(arrData[id].level)	
									
		end
						
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
		
		if (arrData[id].tm and arrData[id].sell)
		then
			local div3=root:tag('div')
			local item3_1=div3:tag('div')
				:addClass('item-spacing')
				:addClass('item-border')		
			item3_1:tag('div')
				:addClass('item-label')
				:wikitext('Доход в час')
			item3_1:tag('div')
				:addClass('item-data')
				:wikitext(((math.floor(arrData[id].sell/arrData[id].tm*100)/100)*60)..' [[Файл:gold.png|15px]]')
			
		end

		return tostring(root)
	end
  
  
  function description()
	local root = mw.html.create( 'div' )		
			root:tag('h2')
				:wikitext('Описание')
			root:tag('div')
				:wikitext('Животное покупается один раз, а продукцию с него можно собирать многократно.')
			root:tag('div')
				:wikitext('Продукцию можно собрать только после того, как только истечет время роста (производства продукции). У каждого животного свое индивидуальное время роста. Наведите курсор мышки на животное и увидите, сколько времени осталось до сбора продукции.')
			root:tag('div')
				:wikitext('Для сбора продукции щелкните мышкой по животному и продукция автоматически переместятся на [[склад]].')
			root:tag('div')
				:wikitext('Собранную продукцию можно продать или переработать на [[Фабрики|фабрике]].')
		local text=''
		if arrData[id].tm
		then
			text='Время производства продукции составляет <span style="font-size:20px; color:#187901;">  &#128336; '..(arrData[id].tm>60 and (arrData[id].tm/60)..' час.' or arrData[id].tm..'  мин.')..'  </span>'
		
		if arrData[id].sell
			then
				text=text..' При этом ваш доход в час составит <span style="font-size:20px; color:#866505;"> '..
					((math.floor(arrData[id].sell/arrData[id].tm*100)/100)*60)..
					'</span> [[Файл:gold.png|15px]].'
				
			end
		root:tag('div')
			:css('margin-bottom','10px')
			:wikitext(text)
		end
			 
	--Окупаемость--
	text=''
	if arrData[id].buy
	then
		
		text=arrData[id].tm and 'Покупка животного окупится через <span style="font-size: 20px;color: green">'..tm(arrData[id].tm)..'</span>' or ""
	else
	    if arrData[id].buyagro
		then
			text='Окупаемость животного вычислить нельзя, т.к. животное покупается за агробаксы.'
		end		
	end
	root:tag('div')
		:wikitext(text)
	--Уровень-
	root:tag('div')
		:wikitext('Животное можно купить:')
	local ul= root:tag('ul')
	
	
	 local text='<div>Животное можно купить:'..
	 '<ul>'
	 
	 if arrData[id].buy
	then
	   ul:tag('li')
		:wikitext((arrData[id].level and 'с '..arrData[id].level..' уровня ' or "")..'за '..arrData[id].buy..' [[Файл:gold.png|15px]]')
	end
	
	if arrData[id].buyagro
	then
	    ul:tag('li')
		:wikitext((arrData[id].levelagro and 'с '..arrData[id].levelagro..' уровня ' or "")..'за '..arrData[id].buyagro..' [[Файл:agro.png|15px]]')
	end
	
	if arrData[id].buyagro1 then
		ul:tag('li')
		:wikitext('с '..arrData[id].levelagro1..' уровня за '..arrData[id].buyagro1..' [[Файл:agro.png|15px]]')
	end
	root:tag('div')
	:wikitext('Можно выращивать в [[Поле|поле]] и [[Промзона|промзоне]].')

	return tostring( root )
  end
  
  
  function tm(data)
	local text=''
		text=arrData[id].buy/arrData[id].sell*data/60
	
	if text<60
	then
		text=(math.floor(text*100)/100)..' час.'
	else
		text=text/24
		text=(math.floor(text*100)/100)..' дней.'
	end
	
	
	  return text
	
  end
  
  function placeBuy()
  return ""
  end
  
  function corall()
	local corall=arrData[id].corall and arrData[id].corall or""
	if arrData[id].yncorall
	then
		if arrData[id].yncorall==1 then
			corall='Животное можно выращивать только в загоне [['..corall..']].'
		end

		if arrData[id].yncorall==2 then
			corall='Животное можно выращивать как в загоне [['..corall..']], так и без него.'
		end

		if arrData[id].yncorall==0 then
			corall='Животное выращивается без загона.'
		end
	else
		return ''
	end
	local root = mw.html.create( 'div' )
		root:tag('h2'):wikitext('Выращивается в загонах')
		root:tag('div')
			:wikitext(corall)
  return tostring(root)
  end

  
  function location()
	local root = mw.html.create( 'div' )
		root:tag('h2'):wikitext('Локация')
		root:tag('div'):wikitext(arrData[id].location and 'Можно выращивать только в локации [['..arrData[id].location..']].' or'Можно выращивать в любой [[локации]].')
	 return tostring(root)
 end
  
    
	
    --Список животных,которые едят корм--
   function p.fab(frame)
      
       local id=type(frame)=='string'and frame or frame.args[1] 
		local arrData = mw.loadData( 'Module:DataAnimal' )
		local data={}
		local i=1
 
        for  key,v in pairs(arrData) do
			if v.res==id then
				data[i]={name=v.name}
				i=i+1
			end
		end
		local text='<div>Можно скормить животным: '
		if pcall(function ()
				if data[1].name==nil then
					error()
				end
			end)
		then
			text=text..'<ul>'
			table.sort(data,function( a, b ) return a.name < b.name end )
			for  i,v in ipairs(data) do
				text=text..'<li>[['..v.name..']]</li>'
            end
			text=text..'</ul>'
		else
			text=text..'<span style="font-style: italic">Пока никому</span></div>'
		end
       return text
 
   end
    --Список продукци животных--
     
   function p.product()
   local text='<div class="column"><ul>'
  data={}
  local j=1
    for  key,v in pairs(arrData) do
		data[j]={fab=key, name=v.nameprod}
	   j=j+1
    end
    table.sort(data,function( a, b ) return a.name < b.name end )
	
	for  i,v in ipairs(data) do
		if i==1 then
			text=text..'<span style="color: #fe7e03;font-size: 24px; font-weight: 700">'..string.sub (v.name, 1,2)..'</span><br><ul><li>[['..v.name..']]</li>'
		else
			if string.sub (data[i].name, 1,2)>string.sub (data[i-1].name, 1,2) 
			then
				text=text..'</ul>'..'<span style="color: #fe7e03;font-size: 24px; font-weight: 700; ">'..string.sub (v.name, 1,2)..'</span><br><ul>'
			end
				if data[i-1].name~=data[i].name
					then
				text=text..'<li>[['..v.name..']]</li>'
					
					end
			
		end
	end
      text=text..'</ul>'
    return text
    end
function p.list(frame)
    	local id = frame.args[1]
		local data=getitems() 
		  
		if #data==0 then return '' end
		local root = mw.html.create( 'div' )
			root:tag('div')
				:wikitext('Продукт производится животными:')
		local ul=root:tag('ul')
		local tab=root:tag('table')
		tr=tab:tag('tr')	
		local j=0
    	for i, v in ipairs(data) do
			if v.prod==id
			then
			j=j+1
			ul:tag('li')
				:wikitext('[['..v.name..']]')
			
			if math.fmod(j, 4)==0 
			then
				tr=tab:tag('tr')			
			end
			td=tr:tag('td')
				:css('padding','10px')
				:css('vertical-align','top')
			td:tag('div')
				:css('padding','0 10px 0 0')
				:css('font-size','16px')
				:wikitext('[['..v.name..']]')
			td:tag('div')
				:wikitext('[[file:'..v.name..'tree.png|200px|'..v.name..'|link='..v.name..']]')
			
			
			end
        end
		
    	return tostring( root )	
    end
    
return p

