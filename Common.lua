local p = {}
--Создает таблицу--*
function p.getCreateTable()
    return mw.html.create( 'table' )
			:addClass( 'crop' )
			:addClass( 'sortable' )
			:attr('cellpadding', '0')
			:attr('cellspacing', '0')
end
--Создает заголовки таблицы--*
function p.getCreateHeadTable(arrHeadTable)
	local t=arrHeadTable
	local text="<tr>"
	for i, v in ipairs( t ) do
		text=text.."<th style='vertical-align: top;'>"..v.."</th>"
	end
	return text.."</tr>"
end
--Строка нвигации в верхней части страницы--*
function p.path(tp1, tp,id)	
		local root = mw.html.create( 'div' )
				:css('font-size', '12px')
				:css('margin-bottom', '10px')
				:wikitext('[['..tp1..']] / [['..tp..']] / '..id)
		return tostring( root )	
	end

return p

