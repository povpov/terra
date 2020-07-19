return {
    --name - название завода--
    --buy - цена в монетах--
    --level - уровень, с которго можно купить за монеты--
    --buyagro - цена в агробаксах--
    --levelagro - уровень, с которого можно купить за агробаксы--
    --tm время производства одного товара--
    --c - количество одновременно загружаемых ресурсов--
    --nameres1 - сырье--
    --nameprod - товар--
    --exper - опыт за покупку фабрики--    
    --materials - список материалов для постройки фабрики (name - название, c - количество)--
    --del - опыт при удалении --
    --location - локации установки завода--
['Виноградный завод']={
name='Виноградный завод', 
buy=15500, 
level=30, 
buyagro=9, 
levelagro=15, 
tm=1, 
c=3, 

resources={
    {nameres1='Виноград', nameprod='Виноградный напиток', sell=155}
},
exper=0, 
port={
    {level=1, buy=62000, buy1=39, vol=1, tm=0},
    {level=2, buy=372000, buy1=74, vol=1, tm=0},
    {level=3, buy=651000, buy1=126, vol=1, tm=0},
    },

del=150,


},
--******************************************************************--
['Водяная мельница']={
    name='Водяная мельница', 
    buy=12000,
    level=23,
    buyagro=7,
    levelagro=10,
    tm=1,
    c=3,
    
    resources={
        {nameres1='Подсолнух', nameprod='Подсолнечное масло', sell=128}
        },
    exper=128,
    port={
        {level=1, buy=48000, buy1=30, vol=1, tm=0},
        {level=2, buy=288000, buy1=58, vol=1, tm=0},
        {level=3, buy=504000, buy1=108, vol=1, tm=0},
    },
    
    del=0,
    materials={
        {name='Балка', c=5},
        {name='Жернов', c=1},
        {name='Зубчатое колесо', c=1},
        {name='Кирпичи', c=10},
        {name='Лопасть', c=6},
        {name='Черепица', c=10},
        {name='Штифт', c=1}
    },
    
    },
--******************************************************************--
['Гриль']={
name='Гриль', 
buy=15000, 
level=28, 
buyagro=5, 
levelagro=8, 
tm=25, 
c=6, 

resources={
	{nameres1='Свинина', nameprod='Жареное мясо', sell=288},
	{nameres1='Мясо гуся', nameprod='Жареное мясо гуся', sell=125},
    {nameres1='Мясо индюка', nameprod='Жареное мясо индюка', sell=100},
    {nameres1='Говядина', nameprod='Ростбиф', sell=590},
    {nameres1='Баранина', nameprod='Жареная баранина', sell=375},
    {nameres1='Мясо лося', nameprod='Жареное мясо лося', sell=1300},
    {nameres1='Мясо бизона', nameprod='Жареное мясо бизона', sell=225},
    {nameres1='Нежная баранина', nameprod='Стейк из нежной баранины', sell=175},
    {nameres1='Зайчатина', nameprod='Жареная зайчатина', sell=212},
    {nameres1='Оленина', nameprod='Жареная оленина', sell=247},
    {nameres1='Мясо рябчика', nameprod='Жареное мясо рябчика', sell=910},
    {nameres1='Мясо глухаря', nameprod='Жареное мясо глухаря', sell=1080},
    {nameres1='Крольчатина', nameprod='Жареная крольчатина', sell=930},
    {nameres1='Курятина', nameprod='Жареная курица', sell=360},
    {nameres1='Мясо лобстера', nameprod='Жареное мясо лобстера', sell=710},
    {nameres1='Мясо дюгоня', nameprod='Жареное мясо дюгоня', sell=980},
    {nameres1='Мясо тапира', nameprod='Жареное мясо тапира', sell=440},
    {nameres1='Мясо морской коровы', nameprod='Жареное мясо морской коровы', sell=1150},
    {nameres1='Мясо ската', nameprod='Жареное мясо ската', sell=660},
    {nameres1='Мясо куропатки', nameprod='Жареное мясо куропатки', sell=0},
    {nameres1='Щупальца осьминога', nameprod='Жареные щупальца осьминога', sell=0}
    
},
exper=75, 
 port={
        {level=1, buy=45000,    buy1=20, vol=0, tm=20},
        {level=2, buy=60000,    buy1=25, vol=0, tm=15},
        {level=3, buy=90000,    buy1=29, vol=0, tm=12},
        {level=4, buy=120000,   buy1=34, vol=0, tm=10},
        {level=5, buy=150000,   buy1=42, vol=0, tm=8},
    },

del=50,
materials={
    {name='Пластиковые трубы', c=4},
    {name='Провода', c=4},
    {name='Электромотор', c=1},
    {name='Шестеренки', c=6},
    {name='Крепления', c=4},
    {name='Нагревательные элементы', c=2}
    },

},
--******************************************************************--
['Джем машина']={
    name='Джем машина', 
    buy=7000,
    level=23,
    buyagro=7,
    levelagro=4,
    tm=1,
    c=3,
    resourcebase={
        {name='Мед'},
    },
    resources={
        {nameres1='Виноград', nameprod='Виноградный джем', sell=135},
        {nameres1='Яблоко', nameprod='Яблочный джем', sell=37},
        {nameres1='Апельсин', nameprod='Апельсиновый джем', sell=57},
        {nameres1='Вишня', nameprod='Вишневый джем', sell=45},
        {nameres1='Черника', nameprod='Черничный джем', sell=97},
        {nameres1='Ежевика', nameprod='Ежевичный джем', sell=145},
        {nameres1='Малина', nameprod='Малиновый джем', sell=157},
        {nameres1='Гранат', nameprod='Гранатовый джем', sell=45},
        {nameres1='Груша', nameprod='Грушевый джем', sell=40},
        {nameres1='Ананас', nameprod='Ананасовый джем', sell=160},
        {nameres1='Клубника', nameprod='Клубничный джем', sell=104},
        {nameres1='Фейхоа', nameprod='Джем фейхоа', sell=35},
        {nameres1='Грейпфрут', nameprod='Грейпфрутовый джем', sell=45},
        {nameres1='Нектарин', nameprod='Джем нектар', sell=178},
        {nameres1='Оранжело', nameprod='Джем оранж', sell=120},
        {nameres1='Омская ночка', nameprod='Джем мультивитаминный', sell=145},
        {nameres1='Тайберри', nameprod='Джем лесные ягоды', sell=409},
        {nameres1='Калина', nameprod='Джем из калины', sell=32},
        {nameres1='Жимолость', nameprod='Джем из жимолости', sell=22},
        {nameres1='Розелла', nameprod='Джем из розеллы', sell=50},
        {nameres1='Боярышник', nameprod='Джем из боярышника', sell=130},
        
        {nameres1='Мака перуанская', nameprod='Джем из маки', sell=210},
        {nameres1='Кактус', nameprod='Кактусовый джем', sell=175},
        {nameres1='Хурма', nameprod='Джем из хурмы', sell=55},

        },
    exper=39,
    port={
        {level=1, buy=28000, buy1=30, vol=1, tm=0},
        {level=2, buy=168000, buy1=58, vol=1, tm=0},
        {level=3, buy=294000, buy1=108, vol=1, tm=0},
    },
    
    del=140,
    
    },
--******************************************************************--
['Завод йогуртов']={
    name='Завод йогуртов', 
    buy=8000,
    level=19,
    buyagro=7,
    levelagro=10,
    tm=0.5,
    c=3,
    resourcebase={
        {name='Молоко'},
    },
    resources={
        {nameres1='Апельсин', nameprod='Апельсиновый йогурт', sell=61},
        {nameres1='Вишня', nameprod='Вишневый йогурт', sell=52},
        {nameres1='Черника', nameprod='Черничный йогурт', sell=133},
        {nameres1='Ежевика', nameprod='Ежевичный йогурт', sell=184},
        {nameres1='Малина', nameprod='Малиновый йогурт', sell=150},
        {nameres1='Груша', nameprod='Грушевый йогурт', sell=58},
        {nameres1='Ананас', nameprod='Ананасовый йогурт', sell=190},
        {nameres1='Нектарин', nameprod='Йогурт нектар', sell=204},
        {nameres1='Оранжело', nameprod='Йогурт оранж', sell=146},
       
        {nameres1='Омская ночка', nameprod='Йогурт мультивитаминный', sell=169},
        {nameres1='Тайберри', nameprod='Йогурт лесные ягоды', sell=435},
        {nameres1='Черешня', nameprod='Йогурт с черешней', sell=67},
        {nameres1='Абрикос', nameprod='Йогурт с абрикосом', sell=70},
        {nameres1='Плод анноны', nameprod='Йогурт с плодами анноны', sell=115},
        {nameres1='Курага', nameprod='Йогурт с курагой', sell=75},
        {nameres1='Чернослив', nameprod='Йогурт с черносливом', sell=80},
        {nameres1='Изюм', nameprod='Йогурт с изюмом', sell=195},
        
        },
    exper=38,
    port={
        {level=1, buy=32000, buy1=25, vol=1, tm=0},
        {level=2, buy=192000, buy1=50, vol=1, tm=0},
        {level=3, buy=336000, buy1=98, vol=1, tm=0},
    },
    
    del=90,
    
    },
--******************************************************************--
['Завод мороженого']={
    name='Завод мороженого', 
    buy=25000,
    level=44,
    buyagro=5,
    levelagro=26,
    tm=1,
    c=3,
    resourcebase={
        {name='Молоко'},
    },
    resources={
        {nameres1='Банан', nameprod='Банановое мороженое', sell=78},
        {nameres1='Киви', nameprod='Мороженое из киви', sell=220},
        {nameres1='Манго', nameprod='Мороженое из манго', sell=115},
        {nameres1='Маракуйя', nameprod='Мороженое из маракуйи', sell=330},
        {nameres1='Мята', nameprod='Мятное мороженое', sell=242},
        {nameres1='Грейпфрут', nameprod='Грейпфрутовое мороженое', sell=74},
        {nameres1='Нектарин', nameprod='Сорбет', sell=204},
        {nameres1='Кленовый сироп', nameprod='Кленовое мороженое', sell=200},
        {nameres1='Грецкий орех', nameprod='Ореховое мороженое', sell=70},
        {nameres1='Лесной орех', nameprod='Мороженое с лесными орехами', sell=550},
        {nameres1='Черная малина', nameprod='Малиновое мороженое', sell=140},
        {nameres1='Физалис', nameprod='Мороженое с физалисом', sell=215},
        {nameres1='Плод анноны', nameprod='Сорбет из плодов анноны', sell=135},
        
        },
    exper=114,
    port={
        {level=1, buy=100000, buy1=28, vol=1, tm=0},
        {level=2, buy=600000, buy1=104, vol=1, tm=0},
        {level=3, buy=1050000, buy1=162, vol=1, tm=0},
    },
    
    del=0,
    materials={
        {name='Пластиковые трубы', c=5},
        {name='Насос', c=1},
        {name='Провода', c=5},
        {name='Электромотор', c=1},
        {name='Шестеренки', c=10},
        {name='Крепления', c=10},
    },
    
    },
--******************************************************************--
['Завод соков']={
name='Завод соков', 
buy=4000,
level=11,
buyagro=5,
levelagro=6,
tm=1,
c=3,

resources={
    {nameres1='Лайм', nameprod='Сок лайма', sell=40},
    {nameres1='Кумкват', nameprod='Сок кумквата', sell=75},
    {nameres1='Апельсин', nameprod='Апельсиновый сок', sell=35},
    {nameres1='Яблоко', nameprod='Яблочный сок', sell=48},
    {nameres1='Гранат', nameprod='Гранатовый сок', sell=59},
    {nameres1='Виноград', nameprod='Виноградный сок', sell=133},
    {nameres1='Вишня', nameprod='Вишневый сок', sell=37},
    {nameres1='Груша', nameprod='Грушевый сок', sell=40},
    {nameres1='Ананас', nameprod='Ананасовый сок', sell=155},
    {nameres1='Помидор', nameprod='Томатный сок', sell=50},
    {nameres1='Мангостан', nameprod='Сок мангостана', sell=53},
    {nameres1='Цветная капуста', nameprod='Сок цветной капусты', sell=125},
    {nameres1='Грейпфрут', nameprod='Грейпфрутовый сок', sell=48},
    {nameres1='Нектарин', nameprod='Сок нектар', sell=165},
    {nameres1='Оранжело', nameprod='Сок оранж', sell=110},
    {nameres1='Омская ночка', nameprod='Сок мультивитамин', sell=131},
    {nameres1='Тайберри', nameprod='Сок лесные ягоды', sell=387},
    {nameres1='Черешня', nameprod='Черешневый сок', sell=34},
    {nameres1='Кизил', nameprod='Кизиловый сок', sell=43},
    {nameres1='Помело', nameprod='Сок из помело', sell=165},
    {nameres1='Жимолость', nameprod='Сок жимолость', sell=14},
    {nameres1='Лимон', nameprod='Лимонный сок', sell=40},
    {nameres1='Априум', nameprod='Сок фруктовый', sell=240},
    {nameres1='Бойзенова ягода', nameprod='Сок ягодный', sell=460},
    {nameres1='Клюква', nameprod='Клюквенный морс', sell=60},
    {nameres1='Тыква', nameprod='Тыквенный сок', sell=168},
    {nameres1='Гуава', nameprod='Сок гуавы', sell=50},
    {nameres1='Кактус', nameprod='Кактусовый сок', sell=160},
    {nameres1='Барбарис', nameprod='Барбарисовый сок', sell=100},
    {nameres1='Плод анноны', nameprod='Сок из плодов анноны', sell=75},
    {nameres1='Карамбола', nameprod='Сок карамболы', sell=90},
    {nameres1='Манговый нектарин', nameprod='Сок «Экзотика»', sell=140},
    {nameres1='Морковь', nameprod='Морковный сок', sell=95},
    {nameres1='Облепиха', nameprod='Облепиховый сок', sell=0},
    {nameres1='Ирга', nameprod='Сок из ирги', sell=0},
},
exper=40, 
port={
        {level=1, buy=15000, buy1=15, vol=1, tm=0},
        {level=2, buy=96000, buy1=32, vol=1, tm=0},
        {level=3, buy=168000,buy1=76, vol=1, tm=0},
        
    },

del=0,


},
--******************************************************************--
['Завод солений']={
    name='Завод солений', 
    buy=3500,
    level=9,
    buyagro=0,
    levelagro=0,
    tm=0.5,
    c=3,
    resourcebase={
        {name='Помидор'},
    },
    resources={
        {nameres1='Баклажан', nameprod='Икра баклажанная', sell=75},
        {nameres1='Кабачок', nameprod='Икра кабачковая', sell=80},
        {nameres1='Огурцы', nameprod='Соления', sell=85},
        {nameres1='Патиссон', nameprod='Соленые патиссоны', sell=162},
       {nameres1='Базилик', nameprod='Соленые помидоры', sell=113},
        {nameres1='Огурдыня', nameprod='Соленые огурдыни', sell=750},
        {nameres1='Томтато', nameprod='Соленые томтаты', sell=370},
        {nameres1='Карела', nameprod='Соленая карела', sell=220},
        {nameres1='Подберезовики', nameprod='Соленые подберезовики', sell=125},
        {nameres1='Опята', nameprod='Соленые опята', sell=80},
        {nameres1='Лисички', nameprod='Соленые лисички', sell=210},
        {nameres1='Подосиновики', nameprod='Соленые подосиновики', sell=171},
        },
    exper=35,
    port={
        {level=1, buy=14000, buy1=12, vol=1, tm=0},
        {level=2, buy=84000, buy1=28, vol=1, tm=0},
        {level=3, buy=147000, buy1=72, vol=1, tm=0},
    },
    
    del=90,
   
    
    },


['Кетчуп машина']={
name='Кетчуп машина', 
buy=3000, 
level=21, 
buyagro=3, 
levelagro=13, 
tm=0.75, 
c=3, 

resources={
    {nameres1='Помидор', nameprod='Кетчуп', sell=55}
},
exper=30,
port={
        {level=1, buy=12000, buy1=28, vol=1, tm=0},
        {level=2, buy=82000, buy1=54, vol=1, tm=0},
        {level=3, buy=126000,buy1=102, vol=1, tm=0},
        
    },

del=60,


},

['Кондитерская фабрика']={
name='Кондитерская фабрика', 
buy=18000, 
level=27, 
buyagro=0, 
levelagro=0, 
tm=1, 
c=3, 
resourcebase={
    {name='Мука'},
    {name='Сахар'},
    },
resources={
    {nameres1='Виноградный джем', nameprod='Виноградный пирог', sell=354},
    {nameres1='Яблочный джем', nameprod='Яблочный пирог', sell=249},
    {nameres1='Апельсиновый джем', nameprod='Апельсиновый пирог', sell=254},
    {nameres1='Вишневый джем', nameprod='Вишневый пирог', sell=246},
    {nameres1='Черничный джем', nameprod='Черничный пирог', sell=285},
    {nameres1='Ежевичный джем', nameprod='Ежевичный пирог', sell=339},
    {nameres1='Малиновый джем', nameprod='Малиновый пирог', sell=309},
    {nameres1='Гранатовый джем', nameprod='Гранатовый пирог', sell=247},
    {nameres1='Грушевый джем', nameprod='Грушевый пирог', sell=235},
    {nameres1='Ананасовый джем', nameprod='Ананасовый пирог', sell=350},
    {nameres1='Клубничный джем', nameprod='Клубничный пирог', sell=343},
    {nameres1='Джем из калины', nameprod='Пирог c калиной', sell=220},
},
exper=75, 
del=140,
materials={
        {name='Бетонные блоки', c=10},
        {name='Дозатор', c=15},
    },

},

['Маслоотделяющий пресс']={
name='Маслоотделяющий пресс', 
buy=16000, 
level=24, 
buyagro=4, 
levelagro=15, 
tm=2, 
c=3, 

resources={
    {nameres1='Кокос', nameprod='Кокосовое масло', sell=29},
    {nameres1='Кешью', nameprod='Масло кешью', sell=110},
    {nameres1='Авокадо', nameprod='Масло авокадо', sell=118},
    {nameres1='Миндаль', nameprod='Миндальное масло', sell=54},
    {nameres1='Мускатный орех', nameprod='Мускатное масло', sell=45},
    {nameres1='Оливки', nameprod='Оливковое масло', sell=33},
    {nameres1='Папайя', nameprod='Масло папайи', sell=57},
    {nameres1='Укроп', nameprod='Масло укропа', sell=185},
    {nameres1='Арахис', nameprod='Арахисовое масло', sell=180},
    {nameres1='Финики', nameprod='Финиковое масло', sell=85},
    {nameres1='Горчица', nameprod='Горчичное масло', sell=95},
    {nameres1='Соя', nameprod='Соевое масло', sell=160},
    {nameres1='Рапс', nameprod='Рапсовое масло', sell=295},
    {nameres1='Тмин', nameprod='Масло тмина', sell=260},
    {nameres1='Лен', nameprod='Льняное масло', sell=190},
    
},
exper=31, 
port={
        {level=1, buy=64000, buy1=32, vol=1, tm=0},
        {level=2, buy=384000, buy1=60, vol=1, tm=0},
        {level=3, buy=672000,buy1=110, vol=1, tm=0},
        
    },
 
del=0,
materials={
        {name='Генератор', c=1},
        {name='Дозатор', c=5},
        {name='Провода', c=3},
        {name='Шнек', c=15},
    },

},


['Мельница']={
name='Мельница', 
buy=12000, 
level=23, 
buyagro=7, 
levelagro=10, 
tm=1, 
c=3, 

resources={
    {nameres1='Пшеница', nameprod='Мука', sell=62}
},
exper=20,
port={
        {level=1, buy=23000, buy1=30, vol=1, tm=0},
        {level=2, buy=180000, buy1=44, vol=1, tm=0},
        {level=3, buy=315000,buy1=92, vol=1, tm=0},
        
    },

del=32,
materials={
        {name='Балка', c=5},
        {name='Жернов', c=1},
        {name='Зубчатое колесо', c=1},
        {name='Кирпичи', c=10},
        {name='Лопасть', c=6},
        {name='Черепица', c=10},
        {name='Штифт', c=1}
    },

},

['Молокозавод']={
name='Молокозавод', 
buy=11000, 
level=33, 
buyagro=3, 
levelagro=24, 
tm=1, 
c=3, 

resources={
    {nameres1='Молоко', nameprod='Творог', sell=34},
    {nameres1='Молоко', nameprod='Масло', sell=38},
    {nameres1='Молоко', nameprod='Сметана', sell=36},
    {nameres1='Молоко', nameprod='Сливки', sell=40},
    {nameres1='Молоко', nameprod='Топленое молоко', sell=35},
},
exper=19, 
port={
        {level=1, buy=44000, buy1=43, vol=1, tm=0},
        {level=2, buy=264000, buy1=80, vol=1, tm=0},
        {level=3, buy=462000,buy1=134, vol=1, tm=0},
        
    },

del=110,

},

['Мукомольная фабрика']={name='Мукомольная фабрика', buy=23000, level=20, buyagro=4, levelagro=11, tm=2, c=3,
resources={
{nameres1='Кукуруза', nameprod='Кукурузная мука', sell=95},
{nameres1='Топинамбур', nameprod='Мука топинамбура', sell=100},
{nameres1='Просо', nameprod='Мука просо', sell=215},
{nameres1='Таро', nameprod='Мука таро', sell=1210},
{nameres1='Черный рис', nameprod='Черная рисовая мука', sell=880},
{nameres1='Рис', nameprod='Рисовая мука', sell=198},
{nameres1='Рожь', nameprod='Ржаная мука', sell=170},
{nameres1='Миндаль', nameprod='Миндальная мука', sell=56},
{nameres1='Кокос', nameprod='Кокосовая мука', sell=27},
}, 
exper=35, 
port={
{level=1, buy=92000, buy1=26, vol=1, tm=0},
{level=2, buy=552000, buy1=52, vol=1, tm=0},
{level=3, buy=966000, buy1=100, vol=1, tm=0},

},
del=500, 
materials={
{name='Перемалывающий диск', c=15},
{name='Электромотор', c=1},
{name='Жернов', c=1},
{name='Шестеренки', c=4},

},
},



['Мясокомбинат']={
name='Мясокомбинат', 
buy=40000, 
level=34, 
buyagro=4, 
levelagro=25, 
tm=60, 
c=3, 
resources={
    {nameres1='Жареное мясо', nameprod='Бекон', sell=495},
    {nameres1='Говядина', nameprod='Сосиски', sell=760},
    {nameres1='Баранина', nameprod='Колбаса', sell=500},
    {nameres1='Мясо лося', nameprod='Котлеты', sell=1580},
    {nameres1='Жареное мясо индюка', nameprod='Консервы из индейки', sell=235},
    {nameres1='Жареное мясо гуся', nameprod='Гусиные консервы', sell=295},
    {nameres1='Жареное мясо бизона', nameprod='Тушенка', sell=360},
    {nameres1='Жареная оленина', nameprod='Консервы из оленины', sell=457},
    {nameres1='Жареная крольчатина', nameprod='Тефтели', sell=1100},
    {nameres1='Курятина', nameprod='Вареная курица', sell=380},
    {nameres1='Мясо глухаря', nameprod='Вареный глухарь', sell=980},
    {nameres1='Мясо фазана', nameprod='Филе фазана', sell=220},
    {nameres1='Зайчатина', nameprod='Фарш', sell=1060},
    {nameres1='Мясо лобстера', nameprod='Вареный лобстер', sell=0},
},

exper=25,
port={
        {level=1, buy=120000, buy1=24, vol=0, tm=50},
        {level=2, buy=160000, buy1=29, vol=0, tm=40},
        {level=3, buy=240000,buy1=34, vol=0, tm=30},
        {level=4, buy=315000,buy1=92, vol=0, tm=25},
        {level=5, buy=315000,buy1=92, vol=0, tm=20},
        
    },

del=0,
materials={
        {name='Генератор', c=1},
        {name='Дозатор', c=8},
        {name='Мясорубка', c=15},
    },

},

['Осенний костер']={
name='Осенний костер', 
buy=0 , 
level=0, 
buyagro=0, 
levelagro=0, 
tm=30, 
c=3, 
shop="Фабрику можно получить в подарок за выполнение задания или найти при очистке на [[Остров технологий|Острове технологий]].",
resourcebase={
    {name='Лук'},
    {name='Морковь'},
    },
resources={
    {nameres1='Баранина', nameprod='Шурпа', sell=365},
    {nameres1='Свинина', nameprod='Борщ на костре', sell=306},
    {nameres1='Горбуша', nameprod='Уха', sell=4280},
    {nameres1='Говядина', nameprod='Кулеш', sell=535},
    {nameres1='Оленина', nameprod='Шулюм', sell=290},
    {nameres1='Просо', nameprod='Полевая каша', sell=340},
},

exper=0, 
del=800,

materials={
        {name='Кирпичи', c=14},
{name='Масло для факела', c=11},
{name='Песок', c=10},
{name='Опилки', c=8},
{name='Свечка', c=7},

    },
},


['Парфюмерный завод']={
name='Парфюмерный завод', 
buy=20500 , 
level=36, 
buyagro=7, 
levelagro=22, 
tm=1, 
c=3, 

resources={
    {nameres1='Миддлемист', nameprod='Духи Аромат тайны', sell=320},
{nameres1='Лилия', nameprod='Духи Лилия', sell=100},
{nameres1='Апельсин', nameprod='Духи Апельсин', sell=35},
{nameres1='Лимон', nameprod='Духи Лимон', sell=32},
{nameres1='Мускатный орех', nameprod='Духи Мускат', sell=44},
{nameres1='Нарцисс', nameprod='Духи Нарцисс', sell=128},
{nameres1='Орхидея', nameprod='Духи Орхидея', sell=158},
{nameres1='Роза', nameprod='Духи Роза', sell=80},
{nameres1='Ваниль', nameprod='Духи Ваниль', sell=175},
{nameres1='Альстремерия', nameprod='Духи Альстремерия', sell=344},
{nameres1='Хризантема сибирская', nameprod='Духи Сибирская Свежесть', sell=188},
{nameres1='Колорадо', nameprod='Духи Колорадо', sell=429},
{nameres1='Лантана', nameprod='Духи Офелия', sell=90},
{nameres1='Ликаста', nameprod='Духи Иокаста', sell=150},
{nameres1='Канна', nameprod='Духи тропические', sell=180},
{nameres1='Бейонс', nameprod='Духи Бейонс', sell=200},
{nameres1='Канна Ореол', nameprod='Духи Ореол', sell=440},
{nameres1='Фиалка пренебреженная', nameprod='Духи фиалка', sell=700},
{nameres1='Пихтовое масло', nameprod='Духи хвойный лес', sell=30},
{nameres1='Древесина секвойи', nameprod='Духи Великая секвойя', sell=150},
{nameres1='Лаванда', nameprod='Духи Лаванда', sell=130},
{nameres1='Жасмин', nameprod='Духи Жасмин', sell=55},
},
exper=42, 
port={
        {level=1, buy=82000, buy1=47, vol=1, tm=0},
        {level=2, buy=492000, buy1=86, vol=1, tm=0},
        {level=3, buy=861000,buy1=142, vol=1, tm=0},
        
    },

del=70,


},

['Пивзавод']={
name='Пивзавод', 
buy=18000, 
level=32, 
buyagro=6, 
levelagro=7, 
tm=1, 
c=3, 

resources={
    {nameres1='Хмель', nameprod='Пиво', sell=120}
},
exper=32, 

del=32,

},

['Прялка']={
name='Прялка', 
buy=10500, 
level=16, 
buyagro=5, 
levelagro=10, 
tm=1, 
c=3, 

resources={
    {nameres1='Черная шерсть', nameprod='Черный свитер', sell=109},
{nameres1='Черная ангорская шерсть', nameprod='Черный ангорскии свитер', sell=136},
{nameres1='Шерсть ламы', nameprod='Коричневый свитер', sell=108},
{nameres1='Овечья шерсть', nameprod='Шерстяной свитер', sell=95},
{nameres1='Шерсть белого верблюда', nameprod='Белый свитер', sell=90},
{nameres1='Ангорская шерсть', nameprod='Ангорский свитер', sell=118},
{nameres1='Шерсть бурого верблюда', nameprod='Бурый свитер', sell=125},
{nameres1='Шерсть песочного верблюда', nameprod='Песочный свитер', sell=108},
{nameres1='Шерсть альпаки', nameprod='Бежевый свитер', sell=870},

},
exper=27,
port={
        {level=1, buy=42000, buy1=21, vol=1, tm=0},
        {level=2, buy=252000, buy1=42, vol=1, tm=0},
        {level=3, buy=441000, buy1=90, vol=1, tm=0},
        
    },
del=210,

},

['Сахарный завод']={
name='Сахарный завод', 
buy=21000, 
level=29, 
buyagro=5, 
levelagro=24, 
tm=1, 
c=3, 

resources={
    {nameres1='Сахарный тростник', nameprod='Сахар', sell=70}
},
exper=25, 
port={
        {level=1, buy=84000, buy1=38, vol=1, tm=0},
        {level=2, buy=504000, buy1=72, vol=1, tm=0},
        {level=3, buy=882000,buy1=124, vol=1, tm=0},
        
    },

del=50,

},

['Сыроварка']={
name='Сыроварка', 
buy=4500, 
level=13, 
buyagro=7, 
levelagro=8, 
tm=0.5, 
c=3, 

resources={
    {nameres1='Молоко', nameprod='Сыр', sell=32}
},
exper=45, 
del=90,

},

['Текстильная фабрика']={
name='Текстильная фабрика', 
buy=55000, 
level=31, 
buyagro=3, 
levelagro=24, 
tm=0.5, 
c=3, 
resources={
     {nameres1='Лен', nameprod='Льняное полотно', sell=185},
     {nameres1='Хлопок', nameprod='Хлопковое полотно', sell=71},
     {nameres1='Кашемировый пух', nameprod='Кашемир', sell=1020},
     {nameres1='Джут', nameprod='Джутовое волокно', sell=90},
     {nameres1='Крапива', nameprod='Крапивное волокно', sell=70},
     {nameres1='Шерсть альпаки', nameprod='Пряжа альпаки', sell=830},
     {nameres1='Папирус', nameprod='Папирусовое волокно', sell=960},
},

exper=180, 
del=450,
materials={
        {name='Рулетка', c=1},
        {name='Электроника', c=1},
        {name='Шлихтовальная машина', c=15},
		{name='Красильная машина', c=10},
    },

},

['Фабрика блинов']={
name='Фабрика блинов',
buy=20000,
level=18,
buyagro=0,
levelagro=0,
 tm=0.33,
 c=3,
 resourcebase={
    {name='Мука'},
    {name='Подсолнечное масло'},
    },
 resources={
	{nameres1='Мед', nameprod='Блинчики с медом', sell=210},
	{nameres1='Картофель', nameprod='Блинчики с картошкой', sell=260},
	{nameres1='Сыр', nameprod='Блинчики с сыром', sell=237},
	{nameres1='Клубничный джем', nameprod='Блинчики с джемом', sell=309},
	{nameres1='Черная икра', nameprod='Блинчики с черной икрой', sell=879},
	{nameres1='Красная икра', nameprod='Блинчики с красной икрой', sell=707},
	{nameres1='Кленовый сироп', nameprod='Блинчики с кленовым сиропом', sell=400},
	{nameres1='Голубика', nameprod='Блинчики с голубикой', sell=480},
	{nameres1='Бузина черная', nameprod='Блинчики с бузиной', sell=605},
	{nameres1='Маринованные рыжики', nameprod='Блинчики с рыжиками', sell=530},
	{nameres1='Таро', nameprod='Блинчики с таро', sell=1420},
	{nameres1='Персиковое варенье', nameprod='Блинчики с персиковым вареньем', sell=410},
	{nameres1='Вишневое варенье', nameprod='Блинчики с вишневым вареньем', sell=365},
	{nameres1='Малиновое варенье', nameprod='Блинчики с малиновым вареньем', sell=490},
 },
 exper=110,
 port={
        {level=1, buy=80000, buy1=24, vol=1, tm=0},
        {level=2, buy=480000, buy1=48, vol=1, tm=0},
        {level=3, buy=840000,buy1=94, vol=1, tm=0},
    },
del=250,
 materials={
	{name='Бетонные блоки', c=5},
	{name='Печь', c=10},
	{name='Провода', c=7},
	{name='Электромотор', c=1},
 },
 
 },

['Фабрика вареников']={
name='Фабрика вареников',
 buy=41500,
 level=31,
 buyagro=3,
 levelagro=20,
 tm=0.5,
 c=3,
 resourcebase={
    {name='Мука'},
    },
 resources={
	{nameres1='Творог', nameprod='Вареники', sell=116},
	{nameres1='Вишня', nameprod='Вареники с вишней', sell=102},
	{nameres1='Черника', nameprod='Вареники с черникой', sell=173},
	{nameres1='Клубника', nameprod='Вареники с клубникой', sell=172},
	{nameres1='Клюква', nameprod='Вареники с клюквой', sell=135},
	{nameres1='Морошка', nameprod='Вареники с морошкой', sell=190},
	{nameres1='Тайберри', nameprod='Вареники с лесными ягодами', sell=483},
	{nameres1='Черешня', nameprod='Вареники с черешней', sell=108},
	{nameres1='Брусника', nameprod='Вареники с брусникой', sell=280},
	{nameres1='Йошта', nameprod='Вареники с йоштой', sell=250},
	{nameres1='Манговый нектарин', nameprod='Экзотические вареники', sell=235},
	{nameres1='Маринованные сыроежки', nameprod='Вареники с сыроежками', sell=370},
	{nameres1='Черный рис', nameprod='Вареники с черным рисом', sell=950},
 },
 exper=166,
del=337,
 materials={
	{name='Провода', c=8},
	{name='Электромотор', c=2},
	{name='Крепления', c=7},
	{name='Нагревательные элементы', c=2},
	{name='Элементы вентиляции', c=7},
	{name='Клин', c=8},
 },
 
 },

['Фабрика варенья']={
name='Фабрика варенья', 
buy=84000, 
level=32, 
buyagro=4, 
levelagro=8, 
tm=0.5, 
c=3, 

resourcebase={
    {name='Сахар'},
    },
resources={
    {nameres1='Черемуха', nameprod='Варенье из черемухи', sell=130},
    {nameres1='Вишня', nameprod='Вишневое варенье', sell=100},
    {nameres1='Красная смородина', nameprod='Варенье из смородины', sell=120},
    {nameres1='Персик', nameprod='Персиковое варенье', sell=135},
    {nameres1='Малина', nameprod='Малиновое варенье', sell=200},
    {nameres1='Клубника', nameprod='Клубничное варенье', sell=180},
    {nameres1='Шиповник', nameprod='Варенье из шиповника', sell=130},
    {nameres1='Кавбуз', nameprod='Варенье из кавбуза', sell=550},
    {nameres1='Клюква', nameprod='Клюквенное варенье', sell=135},
    {nameres1='Шишки воллемии', nameprod='Варенье из воллемии', sell=320},
    {nameres1='Роза', nameprod='Варенье из лепестков роз', sell=162},
    {nameres1='Кактус', nameprod='Варенье из кактуса', sell=250},
    {nameres1='Физалис', nameprod='Варенье из физалиса', sell=265},
    {nameres1='Ревень', nameprod='Варенье из ревеня', sell=271},
	
    {nameres1='Барбарис', nameprod='Варенье из барбариса', sell=188},
},
exper=0, 
del=600,
materials={
        {name='Доски', c=10},
        {name='Лампочка', c=10},
        {name='Дозатор', c=6},
        {name='Электромотор', c=3},
        {name='Насос', c=3},
        
    },

},


['Фабрика кофе']={
name='Фабрика кофе', 
buy=2500, 
level=31, 
buyagro=3, 
levelagro=22, 
tm=1, 
c=3, 

resources={
     {nameres1='Кофе', nameprod='Банка кофе', sell=49},
},

exper=100, 
port={
        {level=1, buy=10000, buy1=41, vol=1, tm=0},
        {level=2, buy=600000, buy1=76, vol=1, tm=0},
        {level=3, buy=1050000,buy1=128, vol=1, tm=0},
        
    },
 
del=500,
materials={
        {name='Бетонные блоки', c=4},
        {name='Провода', c=3},
        {name='Нагревательные элементы', c=2},
		{name='Полипропилен', c=5},
		{name='Генератор', c=2},
        
        
    },

},

['Фабрика красителей']={
name='Фабрика красителей', 
buy=41000, 
level=35, 
buyagro=3, 
levelagro=26, 
tm=0.5, 
c=3, 

resources={
    {nameres1='Ежевика', nameprod='Синий краситель', sell=170},
    {nameres1='Слива', nameprod='Красный краситель', sell=65},
    {nameres1='Груша', nameprod='Коричневый краситель', sell=60},
    {nameres1='Желуди', nameprod='Зеленый краситель', sell=57},
    {nameres1='Лук', nameprod='Желтый краситель', sell=48},
    {nameres1='Черника', nameprod='Фиолетовый краситель', sell=126},
    {nameres1='Шафран', nameprod='Оранжевый краситель', sell=310},
    {nameres1='Малина', nameprod='Розовый краситель', sell=120},
    {nameres1='Голубой мак', nameprod='Голубой краситель', sell=70},
},
exper=172,
port={
        {level=1, buy=164000, buy1=33, vol=1, tm=0},
        {level=2, buy=984000, buy1=62, vol=1, tm=0},
        {level=3, buy=1722000,buy1=112, vol=1, tm=0},
    },
del=310,
materials={
        {name='Краска', c=5},
        {name='Нагревательные элементы', c=5},
		{name='Пластиковые трубы', c=5},
        {name='Электромотор', c=5},
        {name='Элементы вентиляции', c=5},
    },


},

['Фабрика круп']={name='Фабрика круп', buy=20000, level=16, buyagro=2, levelagro=9, tm=0.5, c=3, 
resources={
{nameres1='Пшеница', nameprod='Манная крупа', sell=57},
{nameres1='Ячмень', nameprod='Перловая крупа', sell=123},
{nameres1='Чечевица', nameprod='Чечевичная крупа', sell=109},
{nameres1='Овес', nameprod='Овсяная крупа', sell=149},
{nameres1='Гречиха', nameprod='Гречневая крупа', sell=137},
{nameres1='Рис', nameprod='Рисовая крупа', sell=197},
{nameres1='Кукуруза', nameprod='Кукурузная крупа', sell=101},
{nameres1='Просо', nameprod='Крупа просо', sell=205},
{nameres1='Маниок', nameprod='Крупа тапиока', sell=120},
{nameres1='Тритикале', nameprod='Пшенично-ржаная крупа', sell=275},
{nameres1='Саговник', nameprod='Крупа саги', sell=160},
{nameres1='Черный рис', nameprod='Черная крупа', sell=880},

},
exper=150, 
port={
{level=1, buy=80000, buy1=21, vol=1, tm=0},
{level=2, buy=480000, buy1=42, vol=1, tm=0},
{level=3, buy=840000, buy1=90, vol=1, tm=0},

},
del=200, 
materials={
{name='Печь', c=5},
{name='Шестеренки', c=5},
{name='Перемалывающий диск', c=5},
{name='Стамеска', c=3},
{name='Солнечная батарея', c=3},
{name='Дозатор', c=4},

},
},


['Фабрика лимонадов']={
name='Фабрика лимонадов', 
buy=48000, 
level=29, 
buyagro=3, 
levelagro=18, 
tm=0.5, 
c=3,
resources={
    {nameres1='Лимон', nameprod='Классический лимонад', sell=38},
    {nameres1='Имбирь', nameprod='Имбирный лимонад', sell=253},
    {nameres1='Клубника', nameprod='Клубничный лимонад', sell=107},
    {nameres1='Дыня', nameprod='Лимонад с ароматом дыни', sell=164},
    {nameres1='Абрикос', nameprod='Абрикосовый лимонад', sell=41},
    {nameres1='Грейпфрут', nameprod='Грейпфрутовый лимонад', sell=46},
    {nameres1='Оранжело', nameprod='Лимонад Джунгли', sell=114},
    {nameres1='Нэши', nameprod='Лимонад Экзотик', sell=100},
    {nameres1='Йошта', nameprod='Ягодный лимонад', sell=150},
    {nameres1='Манговый нектарин', nameprod='Лимонад Тропик', sell=145},
    {nameres1='Кактус', nameprod='Кактусовый лимонад', sell=165},
    {nameres1='Барбарис', nameprod='Барбарисовый лимонад', sell=100},
    {nameres1='Плод анноны', nameprod='Экзотический лимонад', sell=95},
},
exper=800,
del=300,
materials={
        
        {name='Провода', c=10},
        {name='Шестеренки', c=5},
        {name='Крепления', c=5},
        {name='Элементы вентиляции', c=5},
        {name='Клин', c=5},
    },


},


['Фабрика одежды']={
name='Фабрика одежды', 
buy=35000, 
level=32, 
buyagro=3, 
levelagro=24, 
tm=0.5, 
c=3, 
resourcebase={
    {name='Хлопок'},
    {name='Лен'},
    },
resources={
    {nameres1='Красный краситель', nameprod='Красное платье', sell=324},
    {nameres1='Фиолетовый краситель', nameprod='Фиолетовое платье', sell=385},
    {nameres1='Коричневый краситель', nameprod='Коричневый костюм', sell=319},
    {nameres1='Зеленый краситель', nameprod='Зеленый костюм', sell=316},
    {nameres1='Желтый краситель', nameprod='Желтое платье', sell=307},
    {nameres1='Синий краситель', nameprod='Синий костюм', sell=429},
    {nameres1='Кашемир ', nameprod='Кашемировое платье', sell=1370},
    {nameres1='Розовый краситель', nameprod='Розовое платье', sell=440},
    {nameres1='Голубой краситель', nameprod='Голубой костюм', sell=375},
},
exper=240,
del=300,
materials={
        {name='Лампы', c=8},
        {name='Балка', c=8},
        {name='Провода', c=8},
        {name='Шестеренки', c=8},
        {name='Крепления', c=8},
    },


},


['Фабрика сухофруктов']={
name='Фабрика сухофруктов', 
buy=15000, 
level=19, 
buyagro=4, 
levelagro=8, 
tm=1, 
c=3, 
resources={
    {nameres1='Яблоко', nameprod='Сушеные яблоки', sell=39},
    {nameres1='Груша', nameprod='Сушеные груши', sell=32},
{nameres1='Банан', nameprod='Сушеные бананы', sell=45},
{nameres1='Дуриан', nameprod='Сушеный дуриан', sell=220},
{nameres1='Красная смородина', nameprod='Сушеная красная смородина', sell=139},
{nameres1='Черная смородина', nameprod='Сушеная черная смородина', sell=58},
{nameres1='Грейпфрут', nameprod='Сушеный грейпфрут', sell=44},
{nameres1='Тайберри', nameprod='Сушеный тайберри', sell=392},
{nameres1='Кизил', nameprod='Сушеный кизил', sell=45},
{nameres1='Плуот', nameprod='Сушеный плуот', sell=80},
{nameres1='Помело', nameprod='Сушеное помело', sell=160},
{nameres1='Финики', nameprod='Сушеные финики', sell=80},
{nameres1='Калина', nameprod='Сушеная калина', sell=23},
{nameres1='Бузина черная', nameprod='Сушеная бузина', sell=300},
{nameres1='Голубика', nameprod='Сушеная голубика', sell=190},
{nameres1='Жимолость', nameprod='Сушеная жимолость', sell=15},
{nameres1='Плод кивано', nameprod='Сушеный кивано', sell=40},
{nameres1='Мака перуанская', nameprod='Сушеная мака', sell=190},
{nameres1='Орех пекан', nameprod='Сушеный пекан', sell=150},
{nameres1='Клюква', nameprod='Сушеная клюква', sell=60},
{nameres1='Физалис', nameprod='Сушеный физалис', sell=170},
{nameres1='Слива', nameprod='Чернослив', sell=39},
{nameres1='Виноград', nameprod='Изюм', sell=135},
{nameres1='Абрикос', nameprod='Курага', sell=35},
{nameres1='Плод анноны', nameprod='Сушеные плоды анноны', sell=85},
{nameres1='Плод миробалана', nameprod='Сушеные плоды миробалана', sell=80},
{nameres1='Айва', nameprod='Сушеная айва', sell=40},
{nameres1='Инжир', nameprod='Сушеный инжир', sell=17},
{nameres1='Клубника', nameprod='Сушеная клубника', sell=105},


},
exper=90,
port={
    {level=1, buy=60000, buy1=25, vol=1, tm=0},
    {level=2, buy=360000, buy1=60, vol=1, tm=0},
    {level=3, buy=630000, buy1=98, vol=1, tm=0},
    },
del=0,
materials={
        {name='Бетонные блоки', c=5},
        {name='Провода', c=5},
        {name='Печь', c=5},
		{name='Сушка для сухофруктов', c=10},
        
    },


},


['Чипсовый завод']={
name='Чипсовый завод', 
buy=3000, 
level=5, 
buyagro=0, 
levelagro=0, 
tm=0.33, 
c=3, 
resourcebase={
    {name='Картофель'},
    },
resources={
    {nameres1='Помидор', nameprod='Чипсы с томатом', sell=105},
    {nameres1='Перец', nameprod='Чипсы с перцем', sell=107},
    {nameres1='Острый перец', nameprod='Чипсы с перцем чили', sell=150},
    {nameres1='Сыр', nameprod='Чипсы с сыром', sell=100},
    {nameres1='Белые грибы', nameprod='Чипсы с грибами', sell=95},
    {nameres1='Сушеный укроп', nameprod='Чипсы с укропом', sell=290},
    {nameres1='Лук душистый', nameprod='Чипсы душистые', sell=520},
    {nameres1='Романеско', nameprod='Чипсы полезные', sell=700},
    {nameres1='Бекон', nameprod='Чипсы с беконом', sell=570},
    {nameres1='Филе дальневосточной кеты', nameprod='Чипсы с рыбой', sell=1115},
    {nameres1='Крабовое мясо', nameprod='Чипсы с крабом', sell=0},
    {nameres1='Сметана', nameprod='Чипсы со сметаной', sell=110},
    {nameres1='Жареная курица', nameprod='Чипсы с курицей', sell=490},
    
},
exper=30,
port={
    {level=1, buy=12000, buy1=7, vol=1, tm=0},
    {level=2, buy=72000, buy1=18, vol=1, tm=0},
    {level=3, buy=126000, buy1=60, vol=1, tm=0},
    },
del=75,


},


['Фабрика молочных коктейлей']={name='Фабрика молочных коктейлей', buy=800000, level=60, buyagro=0, levelagro=0, tm=0.5, c=3,
    resourcebase={
    {name='Молоко'},
{name='Сахар'},

    },
    resources={
        {nameres1='Апельсиновый сироп', nameprod='Апельсиновый коктейль', sell=310},
{nameres1='Яблочный сироп', nameprod='Яблочный коктейль', sell=300},
{nameres1='Ананасовый сироп', nameprod='Ананасовый коктейль', sell=420},
{nameres1='Шоколад', nameprod='Шоколадный коктейль', sell=260},
{nameres1='Кленовое мороженое', nameprod='Кленовый коктейль', sell=360},
{nameres1='Ореховое мороженое', nameprod='Ореховый коктейль', sell=230},
{nameres1='Мороженое из киви', nameprod='Коктейль из киви', sell=370},
{nameres1='Малиновое мороженое', nameprod='Малиновый коктейль', sell=300},
{nameres1='Сироп гуавы', nameprod='Коктейль из гуавы', sell=279},
{nameres1='Сорбет из плодов анноны', nameprod='Экзотический коктейль', sell=300},
{nameres1='Мороженое с физалисом', nameprod='Коктейль из физалиса', sell=390},
{nameres1='Персиковое варенье', nameprod='Персиковый коктейль', sell=295},
{nameres1='Вишневое варенье', nameprod='Вишневый коктейль', sell=250},

        },
exper=120,
port={
{level=1, buy=240000, buy1=42, vol=0, tm=25},
{level=2, buy=320000, buy1=49, vol=0, tm=20},
{level=3, buy=400000, buy1=55, vol=0, tm=15},
{level=4, buy=640000, buy1=61, vol=0, tm=12},
{level=5, buy=800000, buy1=72, vol=0, tm=10},
    
    },
del=600, 
materials={
    {name='Дозатор', c=10},
{name='Резиновая прокладка', c=10},
{name='Кирпичи', c=10},
{name='Пульт управления', c=5},
{name='Провода', c=5},
{name='Насос', c=3},

    },
},

['Фабрика майонеза']={name='Фабрика майонеза', buy=32000, level=21, buyagro=3, levelagro=10, tm=0.5, c=3,
   resourcebase={
    {name='Подсолнечное масло'},

},
    resources={
        {nameres1='Страусиное яйцо', nameprod='Диетический майонез', sell=330},
{nameres1='Яйцо', nameprod='Классический майонез', sell=276},
{nameres1='Перепелиное яйцо', nameprod='Легкий майонез', sell=245},
{nameres1='Яйцо цесарки', nameprod='Пикантный майонез', sell=275},

        },
exper=150,
port={
    {level=1, buy=140000, buy1=28, vol=1, tm=0},
{level=2, buy=840000, buy1=54, vol=1, tm=0},
{level=3, buy=1470000, buy1=102, vol=1, tm=0},

    },
del=300, 
materials={
    {name='Провода', c=5},
{name='Печь', c=5},
{name='Дозатор', c=5},
{name='Пульт управления', c=2},
{name='Электроника', c=2},

    
    }},

['Фабрика чая']={name='Фабрика чая', buy=47000, level=29, buyagro=3, levelagro=14, tm=0.5, c=3, resources={
{nameres1='Ройбос', nameprod='Чай "Ройбос"', sell=53},
{nameres1='Листья чая', nameprod='Чай классический', sell=26},
{nameres1='Мята', nameprod='Мятный чай', sell=225},
{nameres1='Черемуха', nameprod='Чай из черемухи', sell=70},
{nameres1='Розелла', nameprod='Чай Каркаде', sell=40},
{nameres1='Боярышник', nameprod='Чай из боярышника', sell=110},
{nameres1='Ярета', nameprod='Чай из яреты', sell=250},
{nameres1='Сушеная мака', nameprod='Чай из маки', sell=220},
{nameres1='Сушеные плоды миробалана', nameprod='Тибецкий чай', sell=92},
{nameres1='Кардамон', nameprod='Чай с кардамоном', sell=290},


},
exper=150, del=300, 
materials={
{name='Гвозди', c=5},
{name='Шнек', c=5},
{name='Перемалывающий диск', c=15},

}},

['Дубильная фабрика']={name='Дубильная фабрика', buy=32000, level=28, buyagro=3, levelagro=12, tm=3, c=3, resources={
{nameres1='Мех белки', nameprod='Дубленый мех белки', sell=495},
{nameres1='Мех шиншиллы', nameprod='Дубленый мех шиншиллы', sell=95},
{nameres1='Мех песца', nameprod='Дубленый мех песца', sell=203},
{nameres1='Мех нутрии', nameprod='Дубленый мех нутрии', sell=232},
{nameres1='Мех куницы', nameprod='Дубленый  мех куницы', sell=251},
{nameres1='Мех калана', nameprod='Дубленый мех калана', sell=302},
{nameres1='Мех лисы', nameprod='Дубленый  мех лисицы', sell=295},
{nameres1='Мех норки', nameprod='Дубленый  мех норки', sell=205},
{nameres1='Мех соболя', nameprod='Дубленый мех соболя', sell=240},
{nameres1='Мех енота', nameprod='Дубленый мех енота', sell=275},
{nameres1='Мех бобра', nameprod='Дубленый мех бобра', sell=224},
{nameres1='Мех опоссума', nameprod='Дубленый мех опоссума', sell=261},
{nameres1='Мех выдры', nameprod='Дубленый мех выдры', sell=395},
{nameres1='Мех оленя', nameprod='Дубленый мех оленя', sell=850},
{nameres1='Козья шкура', nameprod='Дубленая козья шкура', sell=650},
{nameres1='Мех хорька', nameprod='дубленый мех хорька', sell=450},
{nameres1='Змеиная кожа', nameprod='Дубленая змеиная кожа', sell=920},
{nameres1='Шкура пекари', nameprod='Дубленая шкура пекари', sell=850},

}, 
exper=0, 
port={
{level=1, buy=128000, buy1=37, vol=1, tm=0},
{level=2, buy=768000, buy1=70, vol=1, tm=0},
{level=3, buy=1344000, buy1=120, vol=1, tm=0},

},del=0, 
materials={
{name='Дозатор', c=7},
{name='Электроника', c=1},
{name='Красильная машина', c=15},
{name='Крепления', c=5},

}, 
},
['Упаковочная фабрика']={name='Упаковочная фабрика', buy=9500, level=25, buyagro=5, levelagro=12, tm=0.5, c=3, resources={
{nameres1='Помидор', nameprod='Упакованные помидоры', sell=48},
{nameres1='Огурцы', nameprod='Упакованные корнишоны', sell=45},
{nameres1='Морковь', nameprod='Упакованная морковь', sell=109},
{nameres1='Перец', nameprod='Упакованный перец', sell=52},
{nameres1='Виноград', nameprod='Упакованный виноград', sell=150},
{nameres1='Цветная капуста', nameprod='Упакованная цветная капуста', sell=117},
{nameres1='Патиссон', nameprod='Упакованные патиссоны', sell=135},
{nameres1='Салат', nameprod='Упакованный салат', sell=265},
{nameres1='Щавель', nameprod='Упакованный щавель', sell=280},
{nameres1='Черемуха', nameprod='Упакованная черемуха', sell=65},
{nameres1='Сельтус', nameprod='Упакованный сельтус', sell=600},
{nameres1='Редис', nameprod='Упакованный редис', sell=185},
{nameres1='Рябина', nameprod='Упакованная рябина', sell=35},
{nameres1='Желуди', nameprod='Упакованные желуди', sell=30},
{nameres1='Кедровые орешки', nameprod='Упакованные кедровые орешки', sell=32},
{nameres1='Карела', nameprod='Упакованная карела', sell=165},
{nameres1='Тмин', nameprod='Упакованный тмин', sell=265},
{nameres1='Карамбола', nameprod='Упакованная карамбола', sell=45},
{nameres1='Кардамон', nameprod='Упакованный кардамон', sell=265},


}, 
exper=0, port={
{level=1, buy=38000, buy1=33, vol=1, tm=0},
{level=2, buy=228000, buy1=62, vol=1, tm=0},
{level=3, buy=399000, buy1=112, vol=1, tm=0},

},del=70},
['Фабрика газировки']={name='Фабрика газировки', buy=600000, level=58, buyagro=0, levelagro=0, tm=60, c=3, 
     resourcebase={
    {name='Газированная вода'},

},
    
    resources={
{nameres1='Полынь', nameprod='Тархун', sell=790},
{nameres1='Апельсиновый сироп', nameprod='Апельсиновая газировка', sell=905},
{nameres1='Яблочный сироп', nameprod='Яблочная газировка', sell=890},
{nameres1='Вишневый сироп', nameprod='Вишневая газировка', sell=895},
{nameres1='Ананасовый сироп', nameprod='Ананасовая газировка', sell=1000},
{nameres1='Мятный сироп', nameprod='Мятная газировка', sell=1030},
{nameres1='Грейпфрутовый сироп', nameprod='Грейпфрутовая газировка', sell=900},
{nameres1='Мандариновый сироп', nameprod='Мандариновая газировка', sell=180},
{nameres1='Хина', nameprod='Газировка «Тоник»', sell=1085},

}, exper=0, port={
{level=1, buy=1800000, buy1=41, vol=0, tm=50},
{level=2, buy=2400000, buy1=48, vol=0, tm=40},
{level=3, buy=3600000, buy1=53, vol=0, tm=30},
{level=4, buy=4800000, buy1=59, vol=0, tm=25},
{level=5, buy=6000000, buy1=70, vol=0, tm=20},

},del=600, materials={
{name='Дозатор', c=10},
{name='Насос', c=3},
{name='Трубы', c=10},
{name='Резиновая прокладка', c=10},
{name='Лампочка', c=5},
{name='Бетонные блоки', c=20},

}},

['Фабрика сиропов']={name='Фабрика сиропов', buy=75000, level=44, buyagro=4, levelagro=30, tm=0.5, c=3, 
    
    
    resourcebase={
    {name='Сахар'},
    },
resources={
{nameres1='Апельсиновый сок', nameprod='Апельсиновый сироп', sell=151},
{nameres1='Яблочный сок', nameprod='Яблочный сироп', sell=138},
{nameres1='Вишневый сок', nameprod='Вишневый сироп', sell=140},
{nameres1='Ананасовый сок', nameprod='Ананасовый сироп', sell=261},
{nameres1='Мята', nameprod='Мятный сироп', sell=295},
{nameres1='Грейпфрутовый сок', nameprod='Грейпфрутовый сироп', sell=146},
{nameres1='Кизиловый сок', nameprod='Кизиловый сироп', sell=133},
{nameres1='Кленовый сок', nameprod='Кленовый сироп', sell=145},
{nameres1='Брусника', nameprod='Брусничный сироп', sell=280},
{nameres1='Мандарин', nameprod='Мандариновый сироп', sell=180},
{nameres1='Лимонный сок', nameprod='Лимонный сироп', sell=135},
{nameres1='Барбарисовый сок', nameprod='Барбарисовый сироп', sell=205},
{nameres1='Сок гуавы', nameprod='Сироп гуавы', sell=145},


}, exper=0, del=0, 
materials={
{name='Электромотор', c=3},
{name='Нагревательные элементы', c=3},
{name='Шестеренки', c=5},
{name='Дозатор', c=5},
{name='Инструменты', c=5},


}},


['Фабрика копчения']={name='Фабрика копчения', buy=210000, level=36, buyagro=6, levelagro=21, tm=30, c=3, 
    resourcebase={
    {name='Жгучий чили'},
{name='Древесина ольхи'},

    },
    
    resources={
{nameres1='Свинина', nameprod='Копченая свинина', sell=410},
{nameres1='Баранина', nameprod='Копченая баранина', sell=470},
{nameres1='Говядина', nameprod='Копченая говядина', sell=640},
{nameres1='Оленина', nameprod='Копченая оленина', sell=400},
{nameres1='Крольчатина', nameprod='Копченая крольчатина', sell=1160},
{nameres1='Курятина', nameprod='Копченые куриные крылышки', sell=600},
{nameres1='Мясо тапира', nameprod='Копченое мясо тапира', sell=730},
{nameres1='Мясо морской коровы', nameprod='Копченое мясо морской коровы', sell=1471},
{nameres1='Филе меч-рыбы', nameprod='Копченая меч-рыба', sell=3330},
{nameres1='Филе кампечинского луциана', nameprod='Копченый кампечинский луциан', sell=2835},
{nameres1='Филе европейского удильщика', nameprod='Копченый европейский удильщик', sell=2340},
{nameres1='Филе углохвостого спинорога', nameprod='Копченый углохвостый спинорог', sell=2100},
{nameres1='Филе лосося Кларка', nameprod='Копченый лосось Кларка', sell=1720},
{nameres1='Филе бурого скалозуба', nameprod='Копченый бурый скалозуб', sell=1535},
{nameres1='Филе дальневосточной кеты', nameprod='Копченая дальневосточная кета', sell=1223},
{nameres1='Филе атлантического лосося', nameprod='Копченый атлантический лосось', sell=1161},
{nameres1='Филе красноперого опаха', nameprod='Копченый красноперый опах', sell=0},
{nameres1='Филе желтоперого тунца', nameprod='Копченый желтоперый тунец', sell=0},
{nameres1='Мясо ската', nameprod='Копченое мясо ската', sell=0},

}, exper=0, port={
{level=1, buy=630000, buy1=26, vol=0, tm=25},
{level=2, buy=840000, buy1=31, vol=0, tm=20},
{level=3, buy=1260000, buy1=35, vol=0, tm=15},
{level=4, buy=1680000, buy1=41, vol=0, tm=12},
{level=5, buy=2100000, buy1=50, vol=0, tm=10},


},del=400, materials={
{name='Нагревательные элементы', c=5},
{name='Насос', c=3},
{name='Вентилятор', c=5},
{name='Стекло', c=5},
{name='Кирпичи', c=10},
{name='Элементы вентиляции', c=10},

}},
['Фабрика пряностей']={name='Фабрика пряностей', buy=30000, level=21, buyagro=3, levelagro=12, tm=0.5, c=3, resources={

{nameres1='Корица', nameprod='Молотая корица', sell=55},
{nameres1='Ваниль', nameprod='Ароматная ваниль', sell=158},
{nameres1='Острый перец', nameprod='Жгучий чили', sell=91},
{nameres1='Мускатный орех', nameprod='Душистый мускат', sell=49},
{nameres1='Имбирь', nameprod='Пряность «Вкус имбиря»', sell=261},
{nameres1='Шпинат', nameprod='Пряность «Полезный шпинат»', sell=137},
{nameres1='Розмарин', nameprod='Пряность «Свежий розмарин»', sell=139},
{nameres1='Мята', nameprod='Мятная приправа', sell=228},
{nameres1='Шафран', nameprod='Золотая пряность', sell=305},
{nameres1='Базилик', nameprod='Сушеный базилик', sell=75},
{nameres1='Укроп', nameprod='Сушеный укроп', sell=200},
{nameres1='Петрушка', nameprod='Сушеная петрушка', sell=235},
{nameres1='Лук душистый', nameprod='Пряность «Шашлычная»', sell=431},
{nameres1='Кориандр', nameprod='Сушеный кориандр', sell=225},

{nameres1='Горчица', nameprod='Горчица «Русская»', sell=105},
{nameres1='Водяной перец', nameprod='Пикантный перец', sell=870},

{nameres1='Тмин', nameprod='Сушеный тмин', sell=260},
{nameres1='Кардамон', nameprod='Сушеный кардамон', sell=265},


}, exper=0, port={
{level=1, buy=120000, buy1=28, vol=1, tm=0},
{level=2, buy=720000, buy1=54, vol=1, tm=0},
{level=3, buy=1260000, buy1=102, vol=1, tm=0},

},del=300, materials={
{name='Скоба', c=5},
{name='Солнечная батарея', c=5},
{name='Дозатор', c=5},
{name='Печь', c=5},
{name='Перемалывающий диск', c=10},

}},


['Завод одеял']={name='Завод одеял', buy=40000, level=34, buyagro=4, levelagro=17, tm=30, c=6, 
resourcebase={
    {name='Хлопок'},

    },
resources={
{nameres1='Пух яка', nameprod='Одеяло из пуха яка', sell=430},
{nameres1='Козий пух', nameprod='Одеяло из пуха козы', sell=260},
{nameres1='Кашемировый пух', nameprod='Кашемировое одеяло', sell=1100},
{nameres1='Крапивное волокно', nameprod='Одеяло из крапивы', sell=155},
{nameres1='Джутовое волокно', nameprod='Плед из джута', sell=175},
{nameres1='Бурая верблюжья шерсть', nameprod='Верблюжье одеяло', sell=190},
{nameres1='Пух лебедя', nameprod='Одеяло с пухом лебедя', sell=700},

},
 exper=100, port={

{level=1, buy=120000, buy1=24, vol=0, tm=25},
{level=2, buy=160000, buy1=29, vol=0, tm=20},
{level=3, buy=240000, buy1=34, vol=0, tm=15},
{level=4, buy=320000, buy1=40, vol=0, tm=12},
{level=5, buy=400000, buy1=48, vol=0, tm=10},

},del=0, materials={
{name='Шлихтовальная машина', c=12},
{name='Пластиковые трубы', c=5},
{name='Лампы', c=4},
{name='Электроника', c=4},

}},

 

['Мастерская перьев']={name='Мастерская перьев', buy=200000, level=57, buyagro=5, levelagro=24, tm=240, c=3, 
   resourcebase={
    {name='Перо'},

}, 
resources={
{nameres1='Шелк', nameprod='Платье из павлиньих перьев', sell=1450},
{nameres1='Кашемир', nameprod='Маска из павлиньих перьев', sell=1420},
{nameres1='Шелковая нить', nameprod='Веер из павлиньих перьев', sell=1200},
{nameres1='Колокольчик', nameprod='Изящный букет', sell=205},
{nameres1='Льняное полотно', nameprod='Колье из павлиньих перьев', sell=450},
{nameres1='Хлопковое полотно', nameprod='Серьги из павлиньих перьев', sell=320},
{nameres1='Серебряный слиток', nameprod='Диадема из павлиньих перьев', sell=10750},
{nameres1='Золотой слиток', nameprod='Брошь из павлиньих перьев', sell=13460},
{nameres1='Железный слиток', nameprod='Заколка из павлиньих перьев', sell=8650},


}, exper=120, port={
{level=1, buy=600000, buy1=40, vol=0, tm=220},
{level=2, buy=800000, buy1=47, vol=0, tm=200},
{level=3, buy=1200000, buy1=52, vol=0, tm=120},
{level=4, buy=1600000, buy1=59, vol=0, tm=100},
{level=5, buy=2000000, buy1=69, vol=0, tm=80},

},del=600, materials={
{name='Зеркало', c=10},
{name='Элементы вентиляции', c=5},
{name='Инструменты', c=10},
{name='Охотничий нож', c=10},
{name='Красильная машина', c=5},


}},


--******************************************************************--

['Фабрика шелка']={name='Фабрика шелка', buy=75000, level=48, buyagro=5, levelagro=31, tm=0.5, c=3, resources={
{nameres1='Шелковая нить', nameprod='Шелк', sell=1050},

}, exper=105, del=370, materials={

{name='Лампы', c=5},
{name='Рефлекторы', c=5},
{name='Пластиковые трубы', c=5},
{name='Солнечная батарея', c=5},
{name='Зубило', c=5},
{name='Штифт', c=5},
{name='Электромотор', c=5},


}},



--******************************************************************--

['Металлургический завод']={name='Металлургический завод', buy=500000, level=56, buyagro=0, levelagro=0, tm=120, c=3, 
    resourcebase={
    {name='Уголь'},

}, 
    
    resources={
{nameres1='Железо', nameprod='Железный слиток', sell=7250},
{nameres1='Серебро', nameprod='Серебряный слиток', sell=9100},
{nameres1='Золото', nameprod='Золотой слиток', sell=11400},



}, exper=120, port={
{level=1, buy=1500000, buy1=40, vol=0, tm=100},
{level=2, buy=2000000, buy1=46, vol=0, tm=80},
{level=3, buy=3000000, buy1=52, vol=0, tm=60},
{level=4, buy=4000000, buy1=58, vol=0, tm=50},
{level=5, buy=5000000, buy1=68, vol=0, tm=40},


},del=800, materials={
{name='Литейная машина', c=10},
{name='Печь', c=10},
{name='Каменная опора', c=10},
{name='Кирпичи', c=10},
{name='Генератор', c=5},
{name='Пульт управления', c=5},


}},

--******************************************************************--
['Фабрика минеральной воды']={name='Фабрика минеральной воды', buy=500000, level=0, buyagro=4, levelagro=0, tm=60, c=3, resources={
{nameres1='Минеральная вода', nameprod='Газированная вода', sell=600},


}, exper=0, del=0, materials={
{name='Бетонные блоки', c=5},
{name='Пульт управления', c=5},
{name='Пластиковые трубы', c=5},
{name='Насос', c=4},

}, 
friend={'Эколог','Лаборант'},
location='Горная долина',
shop='Фабрика покупается прямо на локации [[Горная долина]] и строится только в строго определенном месте. Фабрику нельзя переставить в другое место в пределах локации или перенести в другугю локацию.'
},
--******************************************************************--
['Угольная шахта']={name='Угольная шахта', buy=700000, level=0, buyagro=4, levelagro=0, tm=72, c=10, resources={
{nameres1='', nameprod='Уголь', sell=3500},


}, exper=0, del=0, materials={
{name='Колонна', c=15},
{name='Шахтерская каска', c=10},
{name='Цепь', c=10},
{name='Рельс', c=5},
{name='Генератор', c=5},

}, location='Горная долина'},
--******************************************************************--
['Фабрика паштетов']={name='Фабрика паштетов', buy=36000, level=26, buyagro=0, levelagro=0, tm=0.5, c=3, 
resources={
    {nameres1='Мясо фазана', nameprod='Паштет из фазана', sell=150},
{nameres1='Мясо куропатки', nameprod='Паштет из куропатки', sell=220},
{nameres1='Мясо глухаря', nameprod='Паштет из глухаря', sell=910},
{nameres1='Крольчатина', nameprod='Паштет из кролика', sell=750},
{nameres1='Плотва', nameprod='Рыбный паштет из плотвы', sell=310},
{nameres1='Горбуша', nameprod='Рыбный паштет из горбуши', sell=3350},
{nameres1='Тунец', nameprod='Рыбный паштет из тунца', sell=2980},
{nameres1='Палтус', nameprod='Рыбный паштет из палтуса', sell=2900},

    },
exper=70,
port={
    {level=1, buy=144000, buy1=34, vol=1, tm=0},
{level=2, buy=864000, buy1=64, vol=1, tm=0},
{level=3, buy=1512000, buy1=116, vol=1, tm=0},

    },
del=250,
materials={
    {name='Мясорубка', c=10},
{name='Провода', c=6},
{name='Печь', c=5},
{name='Электроника', c=3},

    
    },
},
--******************************************************************--
['Фабрика спагетти']={name='Фабрика спагетти', buy=41000, level=29, buyagro=4, levelagro=18, tm=0.5, c=3,
resourcebase={
    {name='Оливковое масло'},
    {name='Яйцо'},
}, 

resources={
    {nameres1='Мука', nameprod='Классические спагетти', sell=247},
{nameres1='Мука топинамбура', nameprod='Диетические спагетти', sell=288},
{nameres1='Кукурузная мука', nameprod='Спагетти из топинамбура', sell=250},
{nameres1='Мука просо', nameprod='Спагетти из проса', sell=400},


    },
exper=85,

del=400,
materials={
    {name='Провода', c=7},
{name='Резиновая прокладка', c=7},
{name='Нагревательные элементы', c=4},
{name='Электромотор', c=1},

    },
},

--******************************************************************--
['Фабрика попкорна']={name='Фабрика попкорна', buy=35000, level=28, buyagro=3, levelagro=20, tm=0.5, c=3, 
    resourcebase={
    {name='Кукуруза'},
    
}, 
resources={
    {nameres1='Подсолнечное масло', nameprod='Классический попкорн', sell=228},
{nameres1='Сахар', nameprod='Сладкий попкорн', sell=170},
{nameres1='Сыр', nameprod='Попкорн с сыром', sell=132},
{nameres1='Шоколад', nameprod='Шоколадный попкорн', sell=370},
{nameres1='Клубника', nameprod='Клубничный попкорн', sell=350},

    },
exper=95,
del=320,
materials={
    {name='Нагревательные элементы', c=5},
{name='Провода', c=5},
{name='Термический экран', c=5},
{name='Элементы вентиляции', c=5},
{name='Крепления', c=5},

    },
},

--******************************************************************--
['Фруктовый завод']={name='Фруктовый завод', buy=45000, level=44, buyagro=5, levelagro=31, tm=0.5, c=3, 
    resourcebase={
    {name='Сахар'},
    
}, 
resources={
    {nameres1='Слива', nameprod='Консервированные сливы', sell=125},
{nameres1='Рамбутан', nameprod='Консервированный рамбутан', sell=210},
{nameres1='Карамбола', nameprod='Консервированная карамбола', sell=133},
{nameres1='Крыжовник', nameprod='Консервированный крыжовник', sell=116},
{nameres1='Персик', nameprod='Консервированный персик', sell=140},
{nameres1='Мангостан', nameprod='Консервированный мангостан', sell=134},
{nameres1='Яблоко китайки', nameprod='Консервированные яблоки', sell=110},
{nameres1='Ананас', nameprod='Консервированный ананас', sell=250},
{nameres1='Груша', nameprod='Консервированная груша', sell=116},
{nameres1='Мандарин', nameprod='Консервированные мандарины', sell=180},
{nameres1='Абрикос', nameprod='Консервированный абрикос', sell=120},

    
    },
exper=91,

del=200, 
materials={
    
    {name='Трубы', c=5},
{name='Шестеренки', c=4},
{name='Электромотор', c=3},
{name='Нагревательные элементы', c=3},
{name='Электроника', c=2},

    },
},
--******************************************************************--
['Фабрика жевательной резинки']={name='Фабрика жевательной резинки', buy=75000, level=39, buyagro=3, levelagro=30, tm=0.33, c=3, 
     resourcebase={
   {name='Каучук'},
{name='Сахар'},

    
}, 
    
resources={
    {nameres1='Банан', nameprod='Жвачка «Банановый аромат»', sell=181},
{nameres1='Клубника', nameprod='Жвачка «Клубничный рай»', sell=242},
{nameres1='Арбуз', nameprod='Жвачка «Сочный арбуз»', sell=300},
{nameres1='Виноград', nameprod='Жвачка «Вкус винограда»', sell=270},
{nameres1='Апельсин', nameprod='Жвачка «Апельсин»', sell=174},
{nameres1='Мята', nameprod='Мятная жвачка', sell=380},
{nameres1='Черешневый сок', nameprod='Жвачка «Любовь»', sell=196},
{nameres1='Яблоко китайки', nameprod='Жвачка «Сочное яблоко»', sell=170},

    }, 
exper=144, 

del=300, 
materials={
    {name='Пульт управления', c=5},
{name='Элементы вентиляции', c=5},
{name='Печь', c=5},
{name='Шнек', c=5},
{name='Провода', c=5},

    },
},

--******************************************************************--

['Фабрика мюсли']={name='Фабрика мюсли', buy=15000, level=20, buyagro=0, levelagro=0, tm=0.5, c=3, 
    
resourcebase={
   {name='Мед'},
{name='Пшеница'},

}, 
    
    
resources={
{nameres1='Вишня', nameprod='Мюсли с вишней', sell=88},
{nameres1='Ананас', nameprod='Мюсли с ананасом', sell=208},
{nameres1='Авокадо', nameprod='Мюсли с авокадо', sell=173},
{nameres1='Банан', nameprod='Мюсли с бананом', sell=103},
{nameres1='Груша', nameprod='Мюсли с грушей', sell=93},
{nameres1='Манго', nameprod='Мюсли с манго', sell=128},
{nameres1='Омская ночка', nameprod='Мюсли фруктовые', sell=188},
{nameres1='Сушеный кизил', nameprod='Мюсли кизилом', sell=140},
{nameres1='Сушеный плуот', nameprod='Мюсли плодовые', sell=180},
{nameres1='Грецкий орех', nameprod='Мюсли с орехами', sell=100},
{nameres1='Лесной орех', nameprod='Мюсли с лесными орехами', sell=600},
{nameres1='Шоколад', nameprod='Мюсли с шоколадом', sell=205},

},
 exper=35,
 port={
 {level=1, buy=60000, buy1=26, vol=1, tm=0},
{level=2, buy=360000, buy1=52, vol=1, tm=0},
{level=3, buy=630000, buy1=100, vol=1, tm=0},

 },
del=250, 
materials={
{name='Дозатор', c=7},
{name='Элементы вентиляции', c=5},
{name='Шестеренки', c=5},
{name='Печь', c=5},
{name='Электроника', c=1},


},
},
--******************************************************************--
['Шоколадная фабрика']={name='Шоколадная фабрика', buy=22000, level=40, buyagro=4, levelagro=23, tm=1, c=3, 
    resourcebase={
   {name='Молоко'},
},
resources={
    {nameres1='Какао', nameprod='Шоколад', sell=105},
    
}, 
exper=28, 
port={
{level=1, buy=88000, buy1=52, vol=1, tm=0},
{level=2, buy=528000, buy1=96, vol=1, tm=0},
{level=3, buy=924000, buy1=152, vol=1, tm=0},

},
del=0},
--******************************************************************--
['Пекарня']={name='Пекарня', buy=8500, level=27, buyagro=5, levelagro=20, tm=1, c=3,
   resourcebase={
   {name='Молоко'},
   {name='Мука'},
}, 
resources={
{nameres1='Яйцо', nameprod='Хлеб', sell=295},

},
exper=29, 
port={
{level=1, buy=34000, buy1=36, vol=1, tm=0},
{level=2, buy=204000, buy1=66, vol=1, tm=0},
{level=3, buy=357000, buy1=118, vol=1, tm=0},


},del=140, 
},
--******************************************************************--
['Фабрика пряных напитков']={name='Фабрика пряных напитков', buy=0, level=0, buyagro=0, levelagro=0, tm=10, c=3, 
    
    resourcebase={
   {name='Сахар'},
{name='Корица'},

}, 
    resources={
{nameres1='Апельсиновый сок', nameprod='Апельсиновый глинтвейн', sell=194},
{nameres1='Яблочный сок', nameprod='Яблочный глинтвейн', sell=178},
{nameres1='Гранатовый сок', nameprod='Гранатовый глинтвейн', sell=208},
{nameres1='Виноградный сок', nameprod='Виноградный глинтвейн', sell=299},
{nameres1='Вишневый сок', nameprod='Вишневый глинтвейн', sell=180},
{nameres1='Ананасовый сок', nameprod='Ананасовый глинтвейн', sell=327},
    }, 
	shop="Фабрику можно получить в подарок за выполнение задания или найти при очистке на [[Остров технологий|Острове технологий]].",
exper=0, del=1000, },

--******************************************************************--

['Фабрика готовых супов']={name='Фабрика готовых супов', buy=90000, level=23, buyagro=3, levelagro=23, tm=0.5, c=3, 
    
     
    resourcebase={
   {name='Подсолнечное масло'},

}, 
    
    
resources={
{nameres1='Крылатые бобы', nameprod='Суп из крылатых бобов', sell=240},
{nameres1='Белые грибы', nameprod='Грибной суп', sell=175},
{nameres1='Горох', nameprod='Гороховый суп', sell=265},
{nameres1='Капуста', nameprod='Щи', sell=198},
{nameres1='Помидор', nameprod='Томатный суп', sell=187},
{nameres1='Сыр', nameprod='Сырный суп', sell=180},
{nameres1='Свинина', nameprod='Борщ', sell=292},
{nameres1='Петрушка', nameprod='Постный суп', sell=367},
{nameres1='Крапива', nameprod='Летний суп', sell=212},
{nameres1='Щавель', nameprod='Щавелевый суп', sell=470},
{nameres1='Сельдерей', nameprod='Суп из сельдерея', sell=305},
{nameres1='Сладкий шоколадный перец', nameprod='Суп «Пикантный»', sell=360},
{nameres1='Лиловая морковь', nameprod='Морковный суп', sell=415},
{nameres1='Вареная курица', nameprod='Куриный суп', sell=550},
{nameres1='Редька', nameprod='Крестьянский суп', sell=525},
{nameres1='Лисички', nameprod='Суп из лисичек', sell=290},
{nameres1='Кавбудек', nameprod='Суп из кавбудека', sell=950},
{nameres1='Вареный глухарь', nameprod='Суп из глухаря', sell=1150},
{nameres1='Черепашьи яйца', nameprod='Черепаховый суп', sell=850},
{nameres1='Спаржа', nameprod='Суп из спаржи', sell=220},
{nameres1='Соя', nameprod='Соевый суп', sell=300},
{nameres1='Сушеный тмин', nameprod='Пряный суп', sell=455},



}, 
exper=120, del=600, 
materials={
{name='Резиновая прокладка', c=15},
{name='Дозатор', c=10},
{name='Элементы вентиляции', c=10},
{name='Термический экран', c=5},
{name='Насос', c=3},
}, 
},

--******************************************************************--
['Пиццерия']={name='Пиццерия', buy=52000, level=35, buyagro=4, levelagro=22, tm=0.5, c=3, 
    
    resourcebase={
   {name='Кетчуп'},
{name='Сыр'},


}, 
    
resources={
{nameres1='Белые грибы', nameprod='Пицца с грибами ', sell=139},
{nameres1='Перец', nameprod='Пицца с перцем ', sell=154},
{nameres1='Колбаса', nameprod='Пицца с пепперони ', sell=634},
{nameres1='Свинина', nameprod='Пицца с ветчиной ', sell=265},
{nameres1='Базилик', nameprod='Пицца «Маргарита» ', sell=180},
{nameres1='Салат', nameprod='Пицца «Вегетарианская» ', sell=415},
{nameres1='Брынза', nameprod='Греческая пицца ', sell=840},
{nameres1='Черри', nameprod='Пицца «Черри» ', sell=240},
{nameres1='Шампиньоны', nameprod='Пицца с шампиньонами ', sell=400},
{nameres1='Лисички', nameprod='Пицца с лисичками ', sell=280},
{nameres1='Филе лосося Кларка', nameprod='Пицца с морепродуктами ', sell=1605},


}, 
exper=95, del=400, 
materials={
{name='Печь', c=10},
{name='Провода', c=8},
{name='Дозатор', c=7},


}},

--******************************************************************--

['Фабрика молочных продуктов']={name='Фабрика молочных продуктов', buy=90000, level=33, buyagro=0, levelagro=0, tm=30, c=3, 
    
     resourcebase={
  {name='Козье молоко'},
}, 
    
resources=
{
{nameres1='Хлеб', nameprod='Простокваша', sell=430},
{nameres1='Сметана', nameprod='Ряженка', sell=170},
{nameres1='Молоко', nameprod='Кефир', sell=140},
{nameres1='Яйцо', nameprod='Козий сыр', sell=230},

}, 
exper=120, 
port={
{level=1, buy=270000, buy1=24, vol=0, tm=25},
{level=2, buy=360000, buy1=28, vol=0, tm=20},
{level=3, buy=540000, buy1=33, vol=0, tm=15},
{level=4, buy=720000, buy1=38, vol=0, tm=12},
{level=5, buy=900000, buy1=47, vol=0, tm=10},

},del=600, 
materials={
{name='Бетонные блоки', c=10},
{name='Пластиковые трубы', c=10},
{name='Нагревательные элементы', c=5},
{name='Резиновая прокладка', c=5},
{name='Насос', c=3},

}},

--******************************************************************--
['Фабрика кукурузных хлопьев']={name='Фабрика кукурузных хлопьев', buy=460000, level=50, buyagro=6, levelagro=36, tm=0.5, c=3, 
 resourcebase={
  {name='Кукурузная крупа'},

}, 
    
    
resources={
{nameres1='Сушеные яблоки', nameprod='Кукурузные хлопья с яблоком', sell=170},
{nameres1='Сушеные груши', nameprod='Кукурузные хлопья с грушей', sell=160},
{nameres1='Сушеные бананы', nameprod='Кукурузные хлопья с бананом', sell=180},
{nameres1='Сушеный грейпфрут', nameprod='Кукурузные хлопья с грейпфрутом', sell=175},
{nameres1='Сушеная голубика', nameprod='Кукурузные хлопья с голубикой', sell=345},
{nameres1='Сушеная жимолость', nameprod='Кукурузные хлопья с жимолостью', sell=140},

}, 
exper=80, del=500,
 materials={
 {name='Стекло', c=10},
{name='Пластиковые трубы', c=10},
{name='Неоновые лампы', c=10},
{name='Полипропилен', c=5},
{name='Вентилятор', c=5},
{name='Нагревательные элементы', c=5},

 }, 
 },


--******************************************************************--
['Фабрика шампуней']={name='Фабрика шампуней', buy=70000, level=43, buyagro=4, levelagro=27, tm=0,58, c=3, 
    resourcebase={
  {name='Оливковое масло'},


}, 
    
    
resources={
{nameres1='Миддлемист', nameprod='Шампунь «Алый цветок»', sell=382},
{nameres1='Лилия', nameprod='Шампунь «Лилия»', sell=164},
{nameres1='Орхидея', nameprod='Шампунь «Орхидея»', sell=189},
{nameres1='Фиалка', nameprod='Шампунь «Фиалка»', sell=109},
{nameres1='Вероника', nameprod='Шампунь «Вероника»', sell=225},
{nameres1='Астра', nameprod='Шампунь «Астра»', sell=160},
{nameres1='Альстремерия', nameprod='Шампунь « Альстрёмерия»', sell=400},
{nameres1='Хризантема сибирская', nameprod='Шампунь «Сибирская свежесть»', sell=244},
{nameres1='Колорадо', nameprod='Шампунь «Колорадо»', sell=485},
{nameres1='Олеандр', nameprod='Шампунь «Олеандр»', sell=207},
{nameres1='Колокольчик', nameprod='Шампунь «Колокольчик»', sell=124},
{nameres1='Лантана', nameprod='Шампунь «Иокаста»', sell=220},
{nameres1='Ликаста', nameprod='Шампунь «Офелия»', sell=153},
{nameres1='Бартзелла', nameprod='Шампунь «Бартзелла»', sell=240},
{nameres1='Фризо', nameprod='Шампунь «Фризо»', sell=290},
{nameres1='Черемуха', nameprod='Шампунь «Черемуха»', sell=120},
{nameres1='Бейонс', nameprod='Шампунь «Бейонс»', sell=215},
{nameres1='Канна Ореол', nameprod='Шампунь «Ореол»', sell=435},
{nameres1='Плюмерия', nameprod='Шампунь «Будда»', sell=250},
{nameres1='Кампернелли', nameprod='Шампунь «Особый»', sell=320},
{nameres1='Кампанула', nameprod='Шампунь «Весенние цветы»', sell=160},
{nameres1='Пихтовое масло', nameprod='Шампунь «Хвойный лес»', sell=70},

},
exper=80, del=185, 
materials={
{name='Кровля', c=15},
{name='Краска', c=10},
{name='Скоба', c=10},
{name='Бетонные кольца', c=5},

},
 },

--******************************************************************--

['Фабрика горячих напитков']={name='Фабрика горячих напитков', buy=120000, level=36, buyagro=0, levelagro=0, tm=1, c=3, 
   resourcebase={
 {name='Молоко'},
{name='Ваниль'},
},  
    
    resources={
{nameres1='Какао', nameprod='Горячее какао ', sell=235},
{nameres1='Шоколад', nameprod='Горячий шоколад ', sell=310},
{nameres1='Кофе', nameprod='Кофе с молоком ', sell=230},
{nameres1='Яйцо', nameprod='Эгг-ног ', sell=300},
{nameres1='Мед', nameprod='Молоко с медом ', sell=200},
{nameres1='Чай классический', nameprod='Чай с молоком ', sell=230},


}, 
exper=120, 
port={
{level=1, buy=360000, buy1=26, vol=0, tm=50},
{level=2, buy=480000, buy1=31, vol=0, tm=40},
{level=3, buy=720000, buy1=35, vol=0, tm=30},
{level=4, buy=960000, buy1=41, vol=0, tm=25},
{level=5, buy=1200000, buy1=50, vol=0, tm=20},

},
del=600, 
materials={
{name='Бетонные блоки', c=10},
{name='Пластиковые трубы', c=10},
{name='Нагревательные элементы', c=5},
{name='Резиновая прокладка', c=5},
{name='Насос', c=3},

}},

--******************************************************************--
['Фабрика новогодних сладостей']={name='Фабрика новогодних сладостей', buy=0, level=0, buyagro=0, levelagro=0, tm=2, c=3, 

resourcebase={
 {name='Мука'},
{name='Сахар'},
},  

resources={
{nameres1='Карамель "Барбарис"', nameprod='Сахарный снеговик', sell=422},
{nameres1='Имбирь', nameprod='Печенье "Олененок"', sell=456},
{nameres1='Яблочный зефир', nameprod='Новогодний зефир', sell=448},
{nameres1='Клубника', nameprod='Кекс шапка деда Мороза', sell=282},
{nameres1='Мармелад из крыжовника', nameprod='Новогодний мармелод', sell=322},
{nameres1='Ваниль', nameprod='Новогодний торт', sell=344},




},
 exper=0, del=1000, 
  shop="Фабрику можно получить в подарок или, очистив территорию на [[Остров технологий|Острове технологий]].",


materials={

{name='Кирпичи', c=14},
{name='Масло для факела', c=11},
{name='Песок', c=10},
{name='Опилки', c=8},
{name='Свечка', c=7},

}


},
--******************************************************************--

['Фабрика пончиков']={name='Фабрика пончиков', buy=0, level=0, buyagro=0, levelagro=0, tm=3, c=3, 

   resourcebase={
 {name='Мука'},
{name='Масло'},
},  
    

resources=
{
{nameres1='Сахар', nameprod='Пончик с сахарной пудрой', sell=220},
{nameres1='Шоколад', nameprod='Шоколадный пончик', sell=260},
{nameres1='Черничный джем', nameprod='Пончик с черничным джемом', sell=250},
{nameres1='Ананасовый джем', nameprod='Пончик с анасовым джемом', sell=330},
{nameres1='Малиновое варенье', nameprod='Малиновый пончик', sell=380},
{nameres1='Варенье из кактуса', nameprod='Экзотический пончик', sell=440},

}, 
exper=0, del=1000,  
shop="Фабрику можно получить в подарок за выполнение задания или найти при очистке на [[Остров технологий|Острове технологий]].",
},

--******************************************************************--

['Фабрика пряников']={name='Фабрика пряников', buy=250000, level=25, buyagro=4, levelagro=25, tm=0.5, c=3, 

   resourcebase={
 {name='Мука'},
{name='Яйцо'},
},  
    

resources=
{
{nameres1='Мед', nameprod='Медовый пряник', sell=197},
{nameres1='Мята', nameprod='Мятный пряник', sell=396 },
{nameres1='Шоколад', nameprod='Шоколадный пряник', sell=302 },
{nameres1='Яблоко', nameprod='Яблочный пряник', sell=220 },
{nameres1='Грейпфрутовый джем', nameprod='Фруктовый пряник', sell=230 },
{nameres1='Творог', nameprod='Творожный пряник', sell=225 },
{nameres1='Груша', nameprod='Грушевый пряник', sell=216 },
{nameres1='Кленовый сироп', nameprod='Кленовый пряник', sell=350 },
{nameres1='Маньчжурский орех', nameprod='Ореховый пряник', sell=355 },
{nameres1='Инжирный персик', nameprod='Персиковый пряник', sell=305 },
{nameres1='Маракуйя', nameprod='Тропический пряник', sell=460 },

}, 
exper=150, del=600,  

materials={
{name='Пластиковые трубы', c=10},
{name='Лампы', c=10},
{name='Насос', c=5},
{name='Электроника', c=5},

},

},


--******************************************************************--

['Фабрика салатов']={name='Фабрика салатов', buy=250000, level=47, tm=120, c=3, 

   resourcebase={
 {name='Классический майонез'},
{name='Сушеный укроп'},
},  
    

resources=
{
{nameres1='Руккола', nameprod='Салат с рукколой', sell=715 },
{nameres1='Сельдерей', nameprod='Салат с сельдереем', sell=740 },
{nameres1='Шампиньоны', nameprod='Салат из шампиньонов', sell=950 },
{nameres1='Свинина', nameprod='Салат «Оливье»', sell=850 },
{nameres1='Красная икра в банке', nameprod='Салат с икрой', sell=1400 },
{nameres1='Консервированная сайра', nameprod='Салат «Мимоза»', sell=4000 },
{nameres1='Лиловая морковь', nameprod='Салат с лиловой морковью', sell=875},
{nameres1='Сладкий шоколадный перец', nameprod='Салат «Острый»', sell=930 },
{nameres1='Курятина', nameprod='Салат «Цезарь»', sell=1100 },
{nameres1='Сельтус', nameprod='Салат «Зеленый»', sell=1410 },
{nameres1='Яблоко сибирки', nameprod='Салат яблочный', sell=600 },
{nameres1='Маринованные сыроежки', nameprod='Салат с сыроежками', sell=820 },
{nameres1='Арбузный редис', nameprod='Салат из арбузного редиса', sell=1050 },
{nameres1='Черепашьи яйца', nameprod='Салат из черепашьих яиц', sell=1300},
{nameres1='Спаржа', nameprod='Салат из спаржи', sell=790 },
{nameres1='Соя', nameprod='Соевый салат', sell=700 },
{nameres1='Джикама', nameprod='Салат «Джикама»', sell=882 },

}, 
exper=120, del=600,  

materials={
{name='Перемалывающий диск', c=10},
{name='Дозатор', c=10},
{name='Мясорубка', c=10},
{name='Нагревательные элементы', c=5},
{name='Насос', c=2},

},

},


--******************************************************************--

['Рыбоконсервный завод']={name='Рыбоконсервный завод', buy=47000, level=29, buyagro=4, levelagro=20, tm=0.5, c=3, 

   

resources=
{
{nameres1='Тунец', nameprod='Консервированный тунец', sell=3490  },
{nameres1='Сайра', nameprod='Консервированная сайра', sell=3180  },
{nameres1='Горбуша', nameprod='Консервированная горбуша', sell=3900  },
{nameres1='Сардина', nameprod='Консервированная сардина', sell=2960  },
{nameres1='Сельдь', nameprod='Консервированная сельдь', sell=2850  },
{nameres1='Скумбрия', nameprod='Консервированная скумбрия', sell=2910  },
{nameres1='Краб', nameprod='Консервированный краб', sell=4150  },
{nameres1='Кальмар', nameprod='Консервированный кальмар', sell=3700  },
{nameres1='Палтус', nameprod='Консервированный палтус', sell=3150  },

}, 
exper=58, del=440,  

materials={
{name='Дозатор', c=10},
{name='Шнек', c=10},
{name='Мясорубка', c=10},
{name='Нагревательные элементы', c=5},

},

},
--******************************************************************--

['Фабрика маринадов']={name='Фабрика маринадов', buy=52000, level=44, buyagro=4, levelagro=31, tm=0.5, c=3, 

   resourcebase={
 {name='Подсолнечное масло'},
},  

resources=
{
{nameres1='Баклажан', nameprod='Маринованные баклажаны', sell=196   },
{nameres1='Кукуруза', nameprod='Маринованная кукуруза', sell=243   },
{nameres1='Помидор', nameprod='Маринованные помидоры', sell=200   },
{nameres1='Кабачок', nameprod='Маринованные кабачки', sell=193   },
{nameres1='Тыква', nameprod='Маринованная тыква', sell=293   },
{nameres1='Черри', nameprod='Маринованные черри', sell=270   },
{nameres1='Редис', nameprod='Маринованный редис', sell=370   },
{nameres1='Редька', nameprod='Маринованная редька', sell=545   },
{nameres1='Рыжики', nameprod='Маринованные рыжики', sell=290   },
{nameres1='Сыроежки', nameprod='Маринованные сыроежки', sell=270   },
{nameres1='Папоротник семенной', nameprod='Маринованный папоротник', sell=350   },
{nameres1='Плод кивано', nameprod='Маринованный кивано', sell=180   },
{nameres1='Бамия', nameprod='Маринованная бамия', sell=310   },
{nameres1='Подберезовики', nameprod='Маринованные подберезовики', sell=220   },
{nameres1='Карела', nameprod='Маринованная карела', sell=325   },

}, 
exper=72, exper1=300 ,del=400,  

materials={
{name='Полипропилен', c=15},
{name='Стекло', c=10},
{name='Шнек', c=10},
{name='Нагревательные элементы', c=5},
{name='Дозатор', c=5},

},

},

--******************************************************************--

['Фабрика десертов']={name='Фабрика десертов', buy=65000, level=38, buyagro=4, levelagro=29, tm=0.5, c=3, 

   resourcebase={
 {name='Творог'},
},  

resources=
{
{nameres1='Сушеные яблоки', nameprod='Яблочный десерт', sell=88    },
{nameres1='Сушеные груши', nameprod='Грушевый десерт', sell=81    },
{nameres1='Сушеные бананы', nameprod='Банановый десерт', sell=98    },
{nameres1='Сушеный дуриан', nameprod='Десерт с дурианом', sell=269    },
{nameres1='Сушеная черная смородина', nameprod='Десерт со смородиной', sell=107    },
{nameres1='Сушеный грейпфрут', nameprod='Грейпфрутовый десерт', sell=102    },
{nameres1='Сушеный кивано', nameprod='Десерт из кивано', sell=110    },
{nameres1='Изюм', nameprod='Десерт с изюмом', sell=202    },
{nameres1='Чернослив', nameprod='Десерт с черносливом', sell=91    },
{nameres1='Курага', nameprod='Десерт с курагой', sell=86    },

}, 
exper=132, exper1=180  ,del=400,  

materials={
{name='Солнечная батарея', c=5},
{name='Печь', c=5},
{name='Элементы вентиляции', c=5},
{name='Провода', c=5},
{name='Шестеренки', c=4},
{name='Термический экран', c=3},

},

},

--******************************************************************--

['Фабрика зефира']={name='Фабрика зефира', buy=55000, level=37, buyagro=3, levelagro=25, tm=0.5, c=3, 

   resourcebase={
 {name='Сахар'},
 {name='Яйцо'},
},  

resources=
{
{nameres1='Клубника', nameprod='Клубничный зефир', sell=284     },
{nameres1='Малина', nameprod='Малиновый зефир', sell=299     },
{nameres1='Яблоко', nameprod='Яблочный зефир', sell=224     },
{nameres1='Вишня', nameprod='Вишневый зефир', sell=214     },
{nameres1='Банан', nameprod='Банановый зефир', sell=229     },
{nameres1='Персик', nameprod='Персиковый зефир', sell=244     },
{nameres1='Абрикос', nameprod='Абрикосовый зефир', sell=220     },
{nameres1='Нэши', nameprod='Зефир «Экзотик»', sell=300     },

}, 
exper=140, exper1=202  ,del=400,  

materials={
{name='Крепления', c=7},
{name='Провода', c=7},
{name='Шестеренки', c=7},
{name='Элементы вентиляции', c=7},
{name='Клин', c=7},

},

},


--******************************************************************--

['Фабрика конфет']={name='Фабрика конфет', buy=70000, level=38, buyagro=4, levelagro=29, tm=0.5, c=3, 

   resourcebase={
 {name='Шоколад'},
},  

resources=
{
{nameres1='Сушеные груши', nameprod='Конфеты «Дюшес»', sell=175      },
{nameres1='Сушеные яблоки', nameprod='Конфеты «Яблочный микс»', sell=187      },
{nameres1='Сушеные бананы', nameprod='Конфеты «Банановый остров»', sell=193      },
{nameres1='Сушеный дуриан', nameprod='Конфеты «Тропики»', sell=371      },
{nameres1='Сушеное помело', nameprod='Конфеты «Азия»', sell=300      },
{nameres1='Сушеные финики', nameprod='Конфеты «Вавилон»', sell=220      },
{nameres1='Сушеный пекан', nameprod='Конфеты «Пралине»', sell=300      },
{nameres1='Сушеный физалис', nameprod='Конфеты с физалисом', sell=325      },

}, 
exper=138, exper1=180  ,del=300,  

materials={
{name='Резиновая прокладка', c=5},
{name='Бетонные блоки', c=5},
{name='Стамеска', c=5},
{name='Элементы вентиляции', c=5},
{name='Печь', c=4},
{name='Генератор', c=3},

},

},

--******************************************************************--

['Фабрика каш']={name='Фабрика каш', buy=47000, level=35, buyagro=3, levelagro=23, tm=0.5, c=3, 

   resourcebase={
 {name='Молоко'},
},  

resources=
{
{nameres1='Манная крупа', nameprod='Манная каша', sell=104},
{nameres1='Перловая крупа', nameprod='Перловая каша', sell=170 },
{nameres1='Чечевичная крупа', nameprod='Чечевичная каша', sell=156 },
{nameres1='Овсяная крупа', nameprod='Овсяная каша', sell=196 },
{nameres1='Гречневая крупа', nameprod='Гречневая каша', sell=184 },
{nameres1='Рисовая крупа', nameprod='Рисовая каша', sell=244 },
{nameres1='Кукурузная крупа', nameprod='Кукурузная каша', sell=148 },
{nameres1='Крупа просо', nameprod='Просовая каша', sell=245 },
{nameres1='Крупа тапиока', nameprod='Каша из тапиоки', sell=170 },
{nameres1='Пшенично-ржаная крупа', nameprod='Пшенично-ржаная каша', sell=390 },

}, 
exper=119, exper1=187  ,del=380 ,  

materials={
{name='Элементы вентиляции', c=7},
{name='Шестеренки', c=7},
{name='Крепления', c=6},
{name='Провода', c=5},
{name='Клин', c=5},

},

},


--******************************************************************--

['Фабрика кваса']={name='Фабрика кваса', buy=0, level=0, buyagro=0, levelagro=0, tm=0.5, c=3, 

   resourcebase={
 {name='Рожь'},
},  

resources=
{
{nameres1='Груша', nameprod='Грушевый квас', sell=191},
{nameres1='Лимон', nameprod='Лимонный квас', sell=190},
{nameres1='Ячмень', nameprod='Русский квас', sell=270},
{nameres1='Вишня', nameprod='Вишневый квас', sell=186},
{nameres1='Черемуха', nameprod='Квас с черемухой', sell=220},
{nameres1='Калина', nameprod='Квас с калиной', sell=215},
{nameres1='Бузина черная', nameprod='Квас с бузиной', sell=510},
{nameres1='Голубика', nameprod='Квас с голубикой', sell=390},
{nameres1='Лайм', nameprod='Освежающий квас', sell=215},


}, 
exper=119, exper1=187  ,del=380 ,  

materials={
{name='Крепления', c=7},
{name='Провода', c=7},
{name='Опорные столбы', c=7},
{name='Элементы вентиляции', c=7},
{name='Шестеренки', c=7},
{name='Бетонные блоки', c=5},

},

},




--******************************************************************--

['Фабрика ковров']={name='Фабрика ковров', buy=91000, level=50, buyagro=5, levelagro=36, tm=1, c=3, 

   resourcebase={
 {name='Овечья шерсть'},
 {name='Хлопок'},
},  

resources=
{
{nameres1='Фиолетовый краситель', nameprod='Ковер с фиолетовым рисунком', sell=349},
{nameres1='Синий краситель', nameprod='Ковер с синим рисунком', sell=393},
{nameres1='Коричневый краситель', nameprod='Ковер с коричневым рисунком', sell=283},
{nameres1='Зеленый краситель', nameprod='Ковер с зеленым рисунком', sell=280},
{nameres1='Желтый краситель', nameprod='Ковер с желтым рисунком', sell=271},
{nameres1='Красный краситель', nameprod='Ковер с красным рисунком', sell=288},
{nameres1='Синий краситель', nameprod='Ковер с синим рисунком', sell=393},
{nameres1='Черная шерсть', nameprod='Ковер с черным рисунком', sell=295},
{nameres1='Джутовое волокно', nameprod='Ковер из джута', sell=250},
{nameres1='Крапивное волокно', nameprod='Ковер из крапивы', sell=230},
{nameres1='Папирусовое волокно', nameprod='Коврик из папируса', sell=1140},
{nameres1='Розовый краситель', nameprod='Ковер с розовым рисунком', sell=310},
{nameres1='Голубой краситель', nameprod='Ковер с голубым рисунком', sell=245},


}, 
exper=210, exper1=300  ,del=480 ,  

materials={
{name='Лампочка', c=10},
{name='Шестеренки', c=10},
{name='Крепления', c=10},
{name='Электромотор', c=5},
{name='Штифт', c=5},
{name='Зубчатое колесо', c=5},

},

},

--******************************************************************--

['Фабрика компотов']={name='Фабрика компотов', buy=30000, level=15, tm=60, c=3, 

   resourcebase={
 {name='Сахар'},
 {name='Мята'},
},  

resources=
{
{nameres1='Яблоко', nameprod='Яблочный компот', sell=380},
{nameres1='Груша', nameprod='Компот из груш', sell=315},
{nameres1='Вишня', nameprod='Вишневый компот', sell=370},
{nameres1='Слива', nameprod='Компот из слив', sell=380},
{nameres1='Сушеные яблоки', nameprod='Узвар', sell=390},
{nameres1='Черешня', nameprod='Компот из черешни', sell=360},
{nameres1='Красная смородина', nameprod='Компот из смородины', sell=385},


}, 
exper=120, exper1=480  ,del=800 ,  

materials={
{name='Чертеж', c=11},
{name='Дозатор', c=10},
{name='Пульт управления', c=4},
{name='Насос', c=3},
{name='Электромотор', c=2},

},

},


--******************************************************************--

['Фабрика элитного сыра']={name='Фабрика  элитного сыра', buy=105000, level=24, buyagro=3, levelagro=24,tm=0.5, c=3, 

   resourcebase={
 {name='Сыр'},
},  

resources=
{
{nameres1='Виноградный напиток', nameprod='Сыр с плесенью', sell=227},
{nameres1='Белые грибы', nameprod='Сыр с грибами', sell=97},
{nameres1='Морковь', nameprod='Сыр мраморный', sell=123},
{nameres1='Чеснок', nameprod='Сыр чесночный', sell=168},
{nameres1='Творог', nameprod='Сыр с плавленый', sell=104},
{nameres1='Перец', nameprod='Сыр с перцем', sell=108},
{nameres1='Трюфель', nameprod='Сыр с трюфелем', sell=1084},
{nameres1='Укроп', nameprod='Сыр с укропом ', sell=242},
{nameres1='Лук душистый', nameprod='Сыр пикантный', sell=490},
{nameres1='Овечье молоко', nameprod='Брынза', sell=690},
{nameres1='Лимонный сок', nameprod='Моцарелла', sell=90},


}, 
exper=150, exper1=300  ,del=600 ,  

materials={
{name='Рефлекторы', c=10},
{name='Пластиковые трубы', c=10},
{name='Трубы', c=10},
{name='Электроника', c=5},
{name='Термический экран', c=5},
{name='Насос', c=5},

},

},


--******************************************************************--

['Фабрика элитного шоколада']={name='Фабрика  элитного шоколада', buy=170000, level=24, buyagro=2, levelagro=24,tm=0.5, c=3, 

   resourcebase={
 {name='Шоколад'},
},  

resources=
{
{nameres1='Фундук', nameprod='Шоколад с фундуком', sell=181},
{nameres1='Трюфель', nameprod='Шоколад с трюфелем', sell=1160},
{nameres1='Мускатный орех', nameprod='Шоколад с мускатным орехом', sell=186},
{nameres1='Миндаль', nameprod='Шоколад с миндалем', sell=189},
{nameres1='Кешью', nameprod='Шоколад с кешью', sell=246},
{nameres1='Голубика', nameprod='Шоколад с голубикой', sell=340},
{nameres1='Бузина черная', nameprod='Шоколад с бузиной', sell=455},
{nameres1='Лесной орех', nameprod='Шоколад с лесным орехом', sell=800},
{nameres1='Кокос', nameprod='Шоколад с кокосом', sell=170},
{nameres1='Кедровые орешки', nameprod='Шоколад с кедровыми орешками', sell=180},
{nameres1='Молоко', nameprod='Молочный шоколад', sell=290},
{nameres1='Ваниль', nameprod='Белый шоколад', sell=290},
{nameres1='Фисташковые орехи', nameprod='Шоколад с фисташками', sell=240},
{nameres1='Арахис', nameprod='Шоколад с арахисом', sell=325},


}, 
exper=150, exper1=300  ,del=600 ,  

materials={
{name='Демпфер', c=15},
{name='Провода', c=15},
{name='Дозатор', c=10},
{name='Чертеж', c=10},
{name='Генератор', c=5},
{name='Пульт управления', c=5},

},

},


--***>Ювелирный завод***************************************************************--
['Ювелирный завод']={name='Ювелирный завод', buy=55000, level=38, buyagro=3, levelagro=13,tm=15, c=3, 
    
    resourcebase={
 {name='Белая жемчужина', count=4}, 
},  

resources=
{
{nameres1='Розовая жемчужина', nameprod='Браслет', sell=0},
{nameres1='Золотая жемчужина', nameprod='Тиара', sell=0},
{nameres1='Черная жемчужина', nameprod='Колье', sell=0},
},

exper=0, 
port={
    {level=1, buy=165000, buy1=27, vol=0, tm=12},
    {level=2, buy=220000, buy1=33, vol=0, tm=10},
    {level=3, buy=330000, buy1=37, vol=0, tm=8},
    {level=4, buy=440000, buy1=42, vol=0, tm=7},
    {level=5, buy=550000, buy1=52, vol=0, tm=6},
    },

exper1=0, del=5500 , 
    
    materials={
{name='Литейная машина', c=25},
{name='Крепления', c=10},
{name='Дозатор', c=10},
{name='Шестеренки', c=5},

},
    
    },
}