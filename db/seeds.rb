UserInfo.destroy_all
Invent::WorkplaceType.destroy_all

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