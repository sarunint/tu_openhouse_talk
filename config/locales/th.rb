{
  th: {
    page_title: '77 ปี ต.อ. เสวนาวิชาการ',
    time: {
      formats: {
        formal: lambda { |date, _| "%e %B #{date.year + 543}" },
        time_only: lambda { |date, _| '%H.%M น.' }
      }
    },
    activerecord: {
      models: {
        reservation: 'สำรองที่นั่ง'
      },
      attributes: {
        reservation: {
          title: 'คำนำหน้าชื่อ',
          fname: 'ชื่อ',
          lname: 'นามสกุล',
          telephone: 'โทรศัพท์',
          email: 'อีเมล'
        }
      }
    },
    helpers: {
      submit: {
        reservation: {
          create: 'สำรองที่นั่ง'
        }
      }
    }
  }
}