IssLocationSite.destroy_all
UserInfo.destroy_all
Invent::Department.destroy_all
Invent::WorkplaceType.destroy_all

IssLocationSite.create(
  [
    {
      name: '1',
      short_description: 'Главная площадка',
      iss_location_buildings_attributes: [
        {
          name: '27',
          short_description: 'Корпус 27'
        },
        {
          name: '3',
          short_description: 'Корпус 3'
        }
      ]
    },
    {
      name: '2',
      short_description: 'Площадка 2',
      iss_location_buildings_attributes: [
        {
          name: '2г',
          short_description: 'Корпус 2г'
        },
        {
          name: '2д',
          short_description: 'Корпус 2д'
        }
      ]
    },
    {
      name: '3',
      short_description: 'Площадка 3',
      iss_location_buildings_attributes: [
        {
          name: '7',
          short_description: 'Корпус 7'
        },
        {
          name: '5',
          short_description: 'Корпус 5'
        }
      ]
    },
    {
      name: '3a',
      short_description: 'Площадка 3а',
      iss_location_buildings_attributes: [
        {
          name: '11',
          short_description: 'Корпус 11'
        },
        {
          name: '13',
          short_description: 'Корпус 13'
        }
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