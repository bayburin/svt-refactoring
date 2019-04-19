IssLocationSite.destroy_all
UserInfo.destroy_all
Invent::Department.destroy_all
Invent::WorkplaceType.destroy_all
Invent::Type.destroy_all
Invent::Property.destroy_all

IssLocationSite.create(
  [
    {
      name: '1',
      short_description: 'Главная площадка',
      buildings: [
        IssLocationBuilding.new({
          name: '27',
          short_description: 'Корпус 27'
        }),
        IssLocationBuilding.new({
          name: '3',
          short_description: 'Корпус 3'
        })
      ]
    },
    {
      name: '2',
      short_description: 'Площадка 2',
      buildings: [
        IssLocationBuilding.new({
          name: '2г',
          short_description: 'Корпус 2г'
        }),
        IssLocationBuilding.new({
          name: '2д',
          short_description: 'Корпус 2д'
        })
      ]
    },
    {
      name: '3',
      short_description: 'Площадка 3',
      buildings: [
        IssLocationBuilding.new({
          name: '7',
          short_description: 'Корпус 7'
        }),
        IssLocationBuilding.new({
          name: '5',
          short_description: 'Корпус 5'
        })
      ]
    },
    {
      name: '3a',
      short_description: 'Площадка 3а',
      buildings: [
        IssLocationBuilding.new({
          name: '11',
          short_description: 'Корпус 11'
        }),
        IssLocationBuilding.new({
          name: '13',
          short_description: 'Корпус 13'
        })
      ]
    }
  ] 
)

UserInfo.create(
  [
    {
      tn: 17667,
      fio: 'Колесников Николай Васильевич',
      tel: '24-12',
      dept: 320
    },
    {
      tn: 12380,
      fio: 'Митрофанов Алексей Юрьевич',
      tel: '77-20',
      dept: 730
    },
    {
      tn: 7481,
      fio: 'Козлов Юрий Игоревич',
      tel: '21-80',
      dept: 320
    }
  ]
)

Invent::Department.create(
  [
    { name: 320 },
    { name: 440 },
    { name: 510 },
    { name: 600 },
    { name: 730 }
  ]
)

Invent::WorkplaceType.create(
  [
    {
      name: 'Стационарное',
      short_description: ''
    },
    {
      name: 'Мобильное',
      short_description: ''
    },
    {
      name: 'Рабочее место печати',
      short_description: ''
    },
    {
      name: 'Серверное',
      short_description: ''
    }
  ]
)

Invent::Type.create(
  [
    {
      name: :pc,
      short_description: 'Системный блок',
      properties: [
        Invent::Property.new(
          property_order: 10,
          name: :pc_type,
          short_description: 'Тип оборудования',
          long_description: 'Тип оборудования',
          property_type: :list,
          mandatory: true,
          uniq: false,
          multiple: false,
          property_lists: [
            Invent::PropertyList.new(
              name: :pc,
              short_description: 'Системный блок'
            ),
            Invent::PropertyList.new(
              name: :nettop,
              short_description: 'Неттоп'
            )
          ]
        ),
        Invent::Property.new(
          property_order: 20,
          name: :connection_type,
          short_description: 'Регистрация в ЛС',
          long_description: 'Регистрация в ЛС',
          property_type: :list,
          mandatory: true,
          uniq: false,
          multiple: false,
          property_lists: [
            Invent::PropertyList.new(
              name: :register,
              short_description: 'Зарегистрирован'
            ),
            Invent::PropertyList.new(
              name: :not_register,
              short_description: 'Не зарегистрирован'
            )
          ]
        ),
        Invent::Property.new(
          property_order: 30,
          name: :cpu,
          short_description: 'Процессор',
          long_description: 'Процессор',
          property_type: :string,
          mandatory: true,
          uniq: false,
          multiple: false
        ),
        Invent::Property.new(
          property_order: 40,
          name: :mb,
          short_description: 'Материнская плата',
          long_description: 'Материнская плата',
          property_type: :string,
          mandatory: true,
          uniq: false,
          multiple: false
        ),
        Invent::Property.new(
          property_order: 50,
          name: :ram,
          short_description: 'ОЗУ',
          long_description: 'Оперативная память (Гб)',
          property_type: :string,
          mandatory: true,
          uniq: false,
          multiple: false
        ),
        Invent::Property.new(
          property_order: 60,
          name: :video,
          short_description: 'Видеокарта',
          long_description: 'Видеокарта',
          property_type: :string,
          mandatory: true,
          uniq: false,
          multiple: true
        ),
        Invent::Property.new(
          property_order: 70,
          name: :hdd,
          short_description: 'Жесткий диск',
          long_description: 'Жесткий диск',
          property_type: :string,
          mandatory: true,
          uniq: false,
          multiple: true
        ),
        Invent::Property.new(
          property_order: 25,
          name: :activation_key,
          short_description: 'Ключ активации',
          long_description: 'Ключ активации',
          property_type: :string,
          mandatory: false,
          uniq: true,
          multiple: false
        ),
      ]
    },
    {
      name: :monitor,
      short_description: 'Монитор',
      properties: [
        Invent::Property.new(
          property_order: 10,
          name: :diagonal,
          short_description: 'Диагональ экрана',
          long_description: 'Диагональ экрана (в дюймах)',
          property_type: :list_plus,
          mandatory: true,
          uniq: false,
          multiple: false,
          property_lists: [
            Invent::PropertyList.new(
              name: '17',
              short_description: '17'
            ),
            Invent::PropertyList.new(
              name: '18',
              short_description: '18'
            ),
            Invent::PropertyList.new(
              name: '19',
              short_description: '19'
            ),
            Invent::PropertyList.new(
              name: '20',
              short_description: '20'
            ),
            Invent::PropertyList.new(
              name: '21',
              short_description: '21'
            ),
            Invent::PropertyList.new(
              name: '23',
              short_description: '23'
            )
          ]
        )
      ]
    },
    {
      name: :printer,
      short_description: 'Принтер',
      properties: [
        Invent::Property.new(
          property_order: 10,
          name: :connection_type,
          short_description: 'Тип подключения',
          long_description: 'Тип подключения',
          property_type: :list,
          mandatory: true,
          uniq: false,
          multiple: false,
          property_lists: [
            Invent::PropertyList.new(
              name: :network,
              short_description: 'Сетевое'
            ),
            Invent::PropertyList.new(
              name: :local,
              short_description: 'Локальное'
            )
          ]
        ),
        Invent::Property.new(
          property_order: 10,
          name: :format,
          short_description: 'Формат бумаги',
          long_description: 'Максимальный формат бумаги',
          property_type: :list,
          mandatory: true,
          uniq: false,
          multiple: false,
          property_lists: [
            Invent::PropertyList.new(
              name: 'A2',
              short_description: 'A2'
            ),
            Invent::PropertyList.new(
              name: 'A3',
              short_description: 'A3'
            ),
            Invent::PropertyList.new(
              name: 'A4',
              short_description: 'A4'
            )
          ]
        )
      ]
    }
  ]
)

monitor_type = Invent::Type.find_by(name: :monitor)
printer_type = Invent::Type.find_by(name: :printer)

Invent::Vendor.create(
  [
    { 
      name: 'HP',
      models: [
        Invent::Model.new(name: '22f', type: monitor_type),
        Invent::Model.new(name: '24fh', type: monitor_type),
        Invent::Model.new(name: 'LaserJet Pro M104a', type: printer_type),
        Invent::Model.new(name: 'LaserJet Pro M203dw', type: printer_type),
        Invent::Model.new(name: 'LaserJet Enterprise M607dn', type: printer_type)
      ]
    },
    { 
      name: 'Asus',
      models: [
        Invent::Model.new(name: 'VA249NA', type: monitor_type),
        Invent::Model.new(name: 'VG279Q', type: monitor_type),
        Invent::Model.new(name: 'VP247HAE', type: monitor_type),
        Invent::Model.new(name: 'VS229NA', type: monitor_type)
      ]
    },
    {
      name: 'Acer',
      models: [
        Invent::Model.new(name: 'KG251Q', type: monitor_type),
        Invent::Model.new(name: 'SA230Abi', type: monitor_type),
        Invent::Model.new(name: 'ET241Ybi', type: monitor_type),
      ]
    },
    {
      name: 'Samsung',
      models: [
        Invent::Model.new(name: 'S24D300H', type: monitor_type),
        Invent::Model.new(name: 'C27JG50QQI', type: monitor_type),
        Invent::Model.new(name: 'C24F390FHI', type: monitor_type),
        Invent::Model.new(name: 'C27F390FHI', type: monitor_type),
        Invent::Model.new(name: 'SL-M2020', type: printer_type),
        Invent::Model.new(name: 'SL-M2830DW', type: printer_type),
      ]
    }
  ]
)

Invent::ModelPropertyList.create(
  [
    {
      model: Invent::Model.find_by(name: '22f'),
      property_list: Invent::PropertyList.find_by(name: '17'),
      property: Invent::Property.find_by(name: :diagonal)
    },
    {
      model: Invent::Model.find_by(name: '24fh'),
      property_list: Invent::PropertyList.find_by(name: '18'),
      property: Invent::Property.find_by(name: :diagonal)
    },
    {
      model: Invent::Model.find_by(name: 'VA249NA'),
      property_list: Invent::PropertyList.find_by(name: '19'),
      property: Invent::Property.find_by(name: :diagonal)
    },
    {
      model: Invent::Model.find_by(name: 'VG279Q'),
      property_list: Invent::PropertyList.find_by(name: '20'),
      property: Invent::Property.find_by(name: :diagonal)
    },
    {
      model: Invent::Model.find_by(name: 'VP247HAE'),
      property_list: Invent::PropertyList.find_by(name: '21'),
      property: Invent::Property.find_by(name: :diagonal)
    },
    {
      model: Invent::Model.find_by(name: 'VS229NA'),
      property_list: Invent::PropertyList.find_by(name: '22'),
      property: Invent::Property.find_by(name: :diagonal)
    },
    {
      model: Invent::Model.find_by(name: 'KG251Q'),
      property_list: Invent::PropertyList.find_by(name: '20'),
      property: Invent::Property.find_by(name: :diagonal)
    },
    {
      model: Invent::Model.find_by(name: 'SA230Abi'),
      property_list: Invent::PropertyList.find_by(name: '24'),
      property: Invent::Property.find_by(name: :diagonal)
    },
    {
      model: Invent::Model.find_by(name: 'C27JG50QQI'),
      property_list: Invent::PropertyList.find_by(name: '23'),
      property: Invent::Property.find_by(name: :diagonal)
    },
    {
      model: Invent::Model.find_by(name: 'S24D300H'),
      property_list: Invent::PropertyList.find_by(name: '19'),
      property: Invent::Property.find_by(name: :diagonal)
    },
    {
      model: Invent::Model.find_by(name: 'ET241Ybi'),
      property_list: Invent::PropertyList.find_by(name: '21'),
      property: Invent::Property.find_by(name: :diagonal)
    },
    {
      model: Invent::Model.find_by(name: 'C24F390FHI'),
      property_list: Invent::PropertyList.find_by(name: '20'),
      property: Invent::Property.find_by(name: :diagonal)
    },
    {
      model: Invent::Model.find_by(name: 'LaserJet Pro M104a'),
      property_list: Invent::PropertyList.find_by(name: 'network'),
      property: Invent::Property.find_by(name: :connection_type)
    },
    {
      model: Invent::Model.find_by(name: 'LaserJet Pro M104a'),
      property_list: Invent::PropertyList.find_by(name: 'A4'),
      property: Invent::Property.find_by(name: :format)
    },
    {
      model: Invent::Model.find_by(name: 'LaserJet Pro M203dw'),
      property_list: Invent::PropertyList.find_by(name: 'network'),
      property: Invent::Property.find_by(name: :connection_type)
    },
    {
      model: Invent::Model.find_by(name: 'LaserJet Pro M203dw'),
      property_list: Invent::PropertyList.find_by(name: 'A4'),
      property: Invent::Property.find_by(name: :format)
    },
    {
      model: Invent::Model.find_by(name: 'LaserJet Enterprise M607dn'),
      property_list: Invent::PropertyList.find_by(name: 'local'),
      property: Invent::Property.find_by(name: :connection_type)
    },
    {
      model: Invent::Model.find_by(name: 'LaserJet Enterprise M607dn'),
      property_list: Invent::PropertyList.find_by(name: 'A3'),
      property: Invent::Property.find_by(name: :format)
    },
    {
      model: Invent::Model.find_by(name: 'SL-M2020'),
      property_list: Invent::PropertyList.find_by(name: 'network'),
      property: Invent::Property.find_by(name: :connection_type),
    },
    {
      model: Invent::Model.find_by(name: 'SL-M2020'),
      property_list: Invent::PropertyList.find_by(name: 'A4'),
      property: Invent::Property.find_by(name: :format)
    },
    {
      model: Invent::Model.find_by(name: 'SL-M2830DW'),
      property_list: Invent::PropertyList.find_by(name: 'local'),
      property: Invent::Property.find_by(name: :connection_type)
    },
    {
      model: Invent::Model.find_by(name: 'SL-M2830DW'),
      property_list: Invent::PropertyList.find_by(name: 'A3'),
      property: Invent::Property.find_by(name: :format)
    }
  ]
)
