local p = {}

local arrData = mw.loadData('Module:DataFactory')
local crops = mw.loadData('Module:DataCrops')
local animal = mw.loadData('Module:DataAnimal')
local tree = mw.loadData('Module:DataTree')
local materials = mw.loadData('Module:DataMaterials')
local buybase
local id

-- Карточка фабрики--
function p.getView(frame)

    id = frame.args[1]
    return path() .. infobox() .. description() .. placeBuy() .. location() .. material() .. hr() .. Factoryres() ..
               port()
end

-- путь под заголовоком--
function path()
    local root = mw.html.create('div'):css('font-size', '12px'):css('margin-bottom', '10px'):wikitext(
                     '[[Фабрики]] / ' .. id)
    return tostring(root)
end

-- Инфа о фабрики--
function infobox()
    local root = mw.html.create('div'):addClass('infobox-crop')
    root:tag('div'):addClass('infobox-crop-h'):wikitext(id)
    root:tag('div'):attr('id', 'img-tree'):wikitext('[[file:' .. id .. '.png|center]]')
    item = root:tag('div'):addClass('item-spacing'):addClass('item-border')
    item:tag('div'):addClass('item-label'):wikitext('Категория')
    item:tag('div'):addClass('item-data'):wikitext('[[Фабрики]]')
    item = root:tag('div'):addClass('item-spacing'):addClass('item-border')

    item:tag('div'):addClass('item-label'):wikitext('Строительство')
    item:tag('div'):addClass('item-data'):wikitext(arrData[id].materials and 'Требуется' or
                                                       'Не требуется')
    item = root:tag('div'):addClass('item-spacing'):addClass('item-border')

    item:tag('div'):addClass('item-label'):wikitext('Локация')
    item:tag('div'):addClass('item-data'):wikitext(arrData[id].location and '[[' .. arrData[id].location .. ']]' or
                                                       '[[Локации|Любая]]')
    root:tag('div'):tag('div'):addClass('infobox-crop-h-section'):wikitext('Продукция')
    item = root:tag('div'):addClass('item-spacing'):addClass('item-border')

    item:tag('div'):addClass('item-label'):wikitext('Время производства')
    item:tag('div'):addClass('item-data'):wikitext(arrData[id].tm .. ' мин')

    item = root:tag('div'):addClass('item-spacing'):addClass('item-border')

    item:tag('div'):addClass('item-label'):wikitext('Количество')
    item:tag('div'):addClass('item-data'):wikitext(arrData[id].c)
    return tostring(root)
end

function description()
    local text = '<h2>Описание</h2>' ..
                     '<div>Фабрика производит продукцию, которую можно продать за [[монеты]] или загрузить в качестве сырья на другую фабрику.</div>' ..
                     '<div>Для того чтобы фабрика заработала, ее необходимо:</div>' ..
                     '<ol>'
    text = text ..
               (arrData[id].shop and '<li>Купить или получить в подарок</li>' or
                   '<li>Купить</li>')

    if (pcall(function()
        if arrData[id].materials == nil then
            error()
        end
    end)) then
        text = text .. '<li>[[#Строительство|Построить]]</li>'
    end
    if (pcall(function()
        if arrData[id].friend == nil then
            error()
        end
    end)) then
        text = text .. '<li>[[#Нанять друзей|Нанять друзей]]</li>'
    end

    text = text .. '</ol>'
    if (arrData[id].level ~= 0 or arrData[id].levelagro ~= 0 or arrData[id].buy ~= 0 or arrData[id].buyagro ~= 0) then
        text = text .. '<div>Фабрику можно купить:' .. '<ul>'
        if (arrData[id].buy ~= 0 or arrData[id].level ~= 0) then
            text = text .. '<li>'

            if arrData[id].level ~= 0 then
                text = text .. 'с ' .. arrData[id].level .. ' уровня '
            end
            if arrData[id].buy ~= 0 then
                text = text .. 'за ' .. arrData[id].buy .. ' [[Файл:gold.png|15px]]'
            end
            text = text .. '</li>'
        end

        if (arrData[id].buyagro or arrData[id].levelagro) then
            text = text .. '<li>'

            if arrData[id].levelagro then
                text = text .. 'с ' .. arrData[id].levelagro .. ' уровня '
            end
            if arrData[id].buyagro then
                text = text .. 'за ' .. arrData[id].buyagro .. ' [[Файл:agro.png|15px]]'
            end
            text = text .. '</li>'
        end

        text = text .. '</ul></div>'
    end
    text = text .. '<div>Время производства 1 единицы продукции составлет ' ..
               arrData[id].tm .. ' мин.</div>' ..
               '<div>Одновременно на фабрику можно загрузить сырье для производства ' ..
               arrData[id].c .. ' единиц продукции.</div>'
    if arrData[id].exper ~= 0 then
        text = text .. '<div>При покупке фабрики начисляется опыт: ' ..
                   arrData[id].exper .. '<div class="star"></div>.</div>'
    end
    if arrData[id].del ~= 0 then
        text = text ..
                   '<div>При удалении фабрики начисляется компенсация в размере ' ..
                   arrData[id].del .. ' [[Файл:gold.png|15px]].</div>'
    end
    return text
end

function placeBuy()
    local root = mw.html.create('div')
    root:tag('h2'):wikitext('Место покупки фабрики')
    root:tag('div'):wikitext(arrData[id].shop and '<div>' .. arrData[id].shop .. '</div>' or
                                 '<div>Фабрику можно купить в [[Магазин|Магазине]].</div>')

    return tostring(root)
end

function location()
    local root = mw.html.create('div')
    root:tag('h2'):wikitext('Локация')
    root:tag('div'):wikitext(arrData[id].location and
                                 'Фабрику можно построить только в локации [[' ..
                                 arrData[id].location .. ']].' or
                                 'Фабрику можно построить в любой [[Локации|локации]], в которой есть [[Промзона]] или зона [[Поле]].')
    return tostring(root)
end

-- найм персонала на фабрику--
function hr()
    if (not pcall(function()
        if arrData[id].friend == nil then
            error()
        end
    end)) then
        return ""
    end
    local root = mw.html.create('div')
    root:tag('h2'):wikitext('Нанять друзей')
    root:tag('div'):wikitext(
        'Фабрика начнет работать только после найма персонала.')
    root:tag('div'):wikitext('Пригласите своих друзей на должности:')
    local ul = root:tag('ul')
    for k, v in pairs(arrData[id].friend) do
        ul:tag('li'):wikitext(v)
    end
    root:tag('div'):wikitext(
        'Как только ваши друзья примут приглашения, вы сможете начать производить продукцию на вашей фабрике.')
    return tostring(root)
end

-- Улучшение в Порту--
function port()
    local root = mw.html.create('div')
    root:tag('h2'):wikitext('Улучшение в Торговом порту')
    root:tag('div'):wikitext(arrData[id].port and
                                 'Фабрику можно улучшить в [[Торговый порт|Торговом порту]].' or
                                 'Фабрику нельзя улучшить в [[Торговый порт|Торговом порту]].')
    if arrData[id].port == nil then
        return tostring(root)
    end
    root:tag('div'):wikitext('Что можно улучшить?')
    root:tag('div'):wikitext(arrData[id].port[1].tm == 0 and
                                 'Для данной фабрики можно увеличить количество загружаемого сырья с 3 до 6.' or
                                 'Для данной фабрики можно уменьшить время производства 1 ед. продукции.')
    root:tag('div'):wikitext('Всего можно улучшить 8 фабрик на одной локации.')
    local c = arrData[id].c
    local co = 1
    local tb = root:tag('table'):addClass('article-table')
    local thead = tb:tag('tr')
    thead:tag('th'):attr('width', '10%'):wikitext('Уровень')
    thead:tag('th'):attr('width', '15%'):wikitext('Цена&nbsp;[[Файл:gold.png|15px]] ')
    thead:tag('th'):attr('width', '15%'):wikitext('Цена&nbsp;[[Файл:port.png|15px]] ')
    thead:tag('th'):wikitext(arrData[id].port[1].tm == 0 and
                                 'Количество сырья, загружаемого за 1 раз' or
                                 'Время производства продукции в минутах')

    for i, v in ipairs(arrData[id].port) do
        trbody = tb:tag('tr')
        trbody:tag('td'):css('text-align', 'center'):wikitext(v.level)
        trbody:tag('td'):css('text-align', 'center'):wikitext(v.buy)
        trbody:tag('td'):css('text-align', 'center'):wikitext(v.buy1)
        trbody:tag('td'):css('text-align', 'center'):wikitext(v.tm == 0 and 3 + i or v.tm)
        co = i
    end

    return tostring(root) .. require("Module:Gallery").Gallery(id, co)
end

-- Стройматериалы--
function material()
    local root = mw.html.create('div')
    root:tag('h2'):wikitext('Строительство')
    root:tag('div'):wikitext(arrData[id].materials and
                                 'После покупки фабрику необходимо еще построить, для этого нужно будет купить материалы.' or
                                 'Фабрика строится мгновенно, сразу же при покупке. [[Материалы]] для постройки фабрики не нужны.')
    if arrData[id].materials == nil then
        return ""
    end

    local tb = root:tag('table'):addClass('article-table'):addClass('fab')
    local thead = tb:tag('tr')
    thead:tag('th'):wikitext('')
    thead:tag('th'):wikitext('Материалы')
    thead:tag('th'):wikitext('Количество')
    thead:tag('th'):wikitext('Цена [[Файл:agro.png|15px]]')
    thead:tag('th'):wikitext('Стоимость [[Файл:agro.png|15px]]')
    local total = 0
    for i, v in ipairs(arrData[id].materials) do
        trbody = tb:tag('tr')
        trbody:tag('td'):wikitext(v.name and '[[Файл:' .. v.name .. '.png|50px]]' or '')
        trbody:tag('td'):css(v.name and "'text-align','center'" or "'color','red'"):wikitext(
            v.name or '[[Категория: Проверить]]')
        trbody:tag('td'):css('text-align', 'center'):wikitext(v.c or '')
        trbody:tag('td'):css('text-align', 'center'):wikitext(materials[v.name].buy or '')
        trbody:tag('td'):css('text-align', 'center'):wikitext(materials[v.name].buy * v.c or '')
        total = materials[v.name].buy * v.c + total
    end
    trbody = tb:tag('tr')
    trbody:tag('td'):attr('colspan', '4'):wikitext('Итого:')
    trbody:tag('td'):css('font-weight', 'bold'):css('text-align', 'center'):wikitext(total)

    return tostring(root)
end
-- Производимая продукция и ресурсы--
function Factoryres()
    -- Составляем массив для столбца с ресурсами--
    data = {}
    -- Преобразуем деревья--
    for key, v in pairs(tree) do

        if (pcall(function()
            if v.nameprod == nil then
                error()
            end
        end)) then
            data[v.nameprod] = {
                buy = v.sell,
                fab = key,
                name = v.nameprod
            }
        else
            data[key] = {
                buy = v.sell,
                fab = key,
                name = v.name
            }
        end

    end

    -- Преобразуем животных--
    for key, v in pairs(animal) do
        data[v.nameprod] = {
            buy = v.sell,
            fab = v.nameprod,
            name = v.nameprod
        }
    end
    -- Преобразуем продукцию фабрик--
    for key, v in pairs(arrData) do
        for i, v1 in ipairs(v.resources) do
            data[v1.nameprod] = {
                buy = v1.sell,
                name = v1.nameprod,
                fab = key
            }
        end
    end
    -- Добавляем семена--
    for key, v in pairs(crops) do
        data[key] = {
            name = v.name,
            fab = key
        }
        local ok, msg = pcall(function()
            if cropsp[key].agronom == nil then
                error()
            end
        end)
        data[key].buy = ok and v.buy or v.sell

    end
    local text = ''

    local total = 0
    text = text .. '<h2>Производство</h2>' ..
               '<div>Для того чтобы произвести продукцию, на фабрику загружается сырье, а затем собирается готовая продукция.</div>' ..
               '<div>В следующей таблице находится список сырья и производимых товаров.</div>'

    -- Добавляется основной ресурс--
    text = text .. baseres() .. '<table class="sortable article-table fab">' ..
               '<caption style="text-align:left">Всего: <b>total</b></caption>' .. '<tr>' ..
               '<th class="unsortable"></th>' .. '<th>Сырье</th>' .. '<th>Цена [[Файл:gold.png|15px]]</th>' ..
               '<th class="unsortable"></th>' .. '<th>Продукция</th>' ..
               '<th>Цена [[Файл:gold.png|15px]]</th>' .. '<th>Доход [[Файл:gold.png|15px]]</th>' ..
               '</tr>'

    -- Добавляются столбцы с ресурсами-
    for i, v in ipairs(arrData[id].resources) do
        local nameres1 = v.nameres1
        text = text .. '<tr>'
        -- Проверка на наличие ресурса в БД--
        if (pcall(function()
            if data[nameres1].name == nil then
                error()
            end
        end)) then
            text = text .. '<td>[[Файл:' .. data[nameres1].name .. '.png|50px]]</td>' .. '<td>[[' ..
                       data[nameres1].fab .. '|' .. data[nameres1].name .. ']]</td>' ..
                       '<td style="text-align: center">' .. (data[nameres1].buy and data[nameres1].buy or '!') ..
                       '</td>'
        else
            text = text .. '<td>[[Файл:' .. nameres1 .. '.png|50px]]</td>' .. '<td><span style="color: red">' ..
                       nameres1 .. '</span></td>' .. '<td style="text-align: center"> - </td>' ..
                       '[[Категория: Проверить]]'
        end

        -- Добавлется строка для фабрики с 3 ресурсами--
        if (pcall(function()
            if data[nameres2].name == nil then
                error()
            end
        end)) then

            text = text .. '<tr>' .. '<td>[[Файл:' .. data[nameres1].name .. '.png|50px]]</td>' .. '<td>[[' ..
                       data[nameres1].fab .. '|' .. data[nameres1].name .. ']]</td>' ..
                       '<td style="text-align: center">' .. data[nameres1].buy .. '</td>' .. '</tr>'
        end

        -- Добавляются столбцы с продукцией-

        text = text .. '<td>[[Файл:' .. v.nameprod .. '.png|50px]]</td>' .. '<td>' .. v.nameprod .. '</td>' ..
                   '<td style="text-align:center">' .. v.sell .. '</td>' .. '<td style="text-align: center">'
        if (pcall(function()
            if data[nameres1].name == nil then
                error()
            end
        end)) then
            text = text ..
                       (math.floor((v.sell - (data[nameres1].buy and data[nameres1].buy or 0) - buybase) * 100) / 100)
        else
            text = text .. '-'
        end
        text = text .. '</td></tr>'
        i = i + 1
        total = i - 1
    end

    text = string.gsub(text, "total", total) .. '</table>'

    return text
end
-- Добавляется основной ресурс--
function baseres()
    local text = ''
    buybase = 0
    -- Наличие базового ресурса--
    if (not pcall(function()
        if arrData[id].resourcebase == nil then
            error()
        end
    end)) then
        return text
    end
    text = text ..
               '<div>Для производства продукции на эту фабрику необходимо загружать два вида сырья: основное и сменяемое сырье. Основное сырье - сырье, которое требуется для производства каждой единицы продукции. Сменяемое сырье – сырье, которое меняется для производства каждого вида товара.</div>' ..
               '<table class="article-table">' .. '<tr>' .. '<th></th>' .. '<th>Основное сырье</th>' ..
               '<th slyle="text-align: center">Цена [[Файл:gold.png|15px]]</th>' .. '</tr>'

    for i, v in ipairs(arrData[id].resourcebase) do
        text = text .. '<tr>' .. '<td>[[Файл:' .. v.name .. '.png|50px]]</td>'
        if (pcall(function()
            if data[v.name].name == nil then
                error()
            end
        end)) then
            text = text .. '<td>[[' .. data[v.name].fab .. '|' .. v.name .. ']]</td>' ..
                       '<td slyle="text-align: center">' .. data[v.name].buy .. '</td>'
            buybase = buybase + data[v.name].buy
        else
            text = text .. '<td><span style="color: red">' .. v.name .. '</span></td>' ..
                       '<td slyle="text-align: center"> - </td>' .. '[[Категория: Проверить]]'
        end
        text = text .. '</tr>'
    end

    return text .. '<tr><td>Итого:</td><td></td><td slyle="text-align: center">' .. buybase .. '</td></tr></table>'
end

-- Список фабрик на которых можно переработать продукт frame--
function p.fab(frame)
    local id = type(frame) == 'string' and frame or frame.args[1]
    local arrData = mw.loadData('Module:DataFactory')
    local data = {}
    local j = 1
    for i, v in pairs(arrData) do
        for i2, v2 in pairs(v.resources) do
            if v2.nameres1 == id then
                data[j] = i
                j = j + 1
                break
            end
        end

        if v.resourcebase ~= nil then
            for i1, v1 in pairs(v.resourcebase) do
                if v1.name == id then
                    data[j] = i
                    j = j + 1
                end
            end
        end
    end

    local root = mw.html.create('div'):wikitext(data and
                                                    'Продукт можно переработать на фабриках: ')

    if #data > 0 then
        table.sort(data, function(a, b)
            return a < b
        end)
        local ul = root:tag('ul')
        local tab = root:tag('table')
        tr = tab:tag('tr')
        for i, v in ipairs(data) do
            ul:tag('li'):wikitext('[[' .. v .. ']]')

            td = tr:tag('td'):css('padding', '10px'):css('vertical-align', 'top')
            td:tag('div'):css('padding', '0 10px 0 0'):css('font-size', '16px'):wikitext('[[' .. v .. ']]')
            td:tag('div'):wikitext('[[file:' .. v .. '.png|200px|' .. v .. '|link=' .. v .. ']]')
            if math.fmod(i, 3) == 0 then
                tr = tab:tag('tr')
            end
        end
    else
        root:tag('div'):wikitext('Пока нет информации.')
    end

    return tostring(root)

end

-- Список продукции фабрик--

function p.product()
    local text = '<div class="column">'
    local product = {}
    local j = 1
    for key, v in pairs(arrData) do
        for i, v1 in ipairs(v.resources) do
            product[j] = {}
            product[j].fab = key
            product[j].name = v1.nameprod
            j = j + 1
        end
    end
    table.sort(product, function(a, b)
        return a.name < b.name
    end)
    for i, v in ipairs(product) do
        if i == 1 then
            text =
                text .. '<span style="color: #fe7e03;font-size: 24px; font-weight: 700">' .. string.sub(v.name, 1, 2) ..
                    '</span><br><ul>'
        else
            if string.sub(product[i].name, 1, 2) > string.sub(product[i - 1].name, 1, 2) then
                text = text .. '</ul>' ..
                           '<span style="color: #fe7e03;font-size: 24px; font-weight: 700; border: solid 1[x #fe7e03">' ..
                           string.sub(v.name, 1, 2) .. '</span><br><ul>'
            end
        end
        text = text .. '<li>[[' .. v.fab .. '|' .. v.name .. ']]</li>'
    end
    text = text .. '</ul></div>'
    return text
end
-- Общий список фабрик--
function p.list()

    local data1 = mw.loadData('Module:DatalistFactory')
    local data = {}
    for i, v in pairs(data1) do
        data[i] = v
    end

    table.sort(data, function(a, b)
        return a < b
    end)
    local text = '<ul>'

    for i, v in ipairs(data) do
        text = text .. '<li>[[' .. v .. ']]</li>'
    end
    text = text .. '</ul>'
    return text
end

return p
