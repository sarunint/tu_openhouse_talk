# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Talk.destroy_all
desc = <<-DESC.strip_heredoc
วิทยากรประกอบด้วย :

  * **ศ.นพ.สุรศักดิ์** ฐานีพานิชสกุล คณบดีคณะสหเวชศาสตร์ จุฬาลงกรณ์มหาวิทยาลัย
  * **นพ.ประชา ชยาภัม** ผู้อำนวยการโรงพยาบาลดำเนินสะดวก และบุตรสาว
  * **นพ.สมเกียรติ กิจธรรมเชษฐ์** คลีนิกหมอสมเกียรติ
  * **พญ.นลินี ไพบูลย์** ประธานกรรมการบริหาร บริษัท กิฟฟารีน สกายไลน์ ยูนีตี้ จำกัด
DESC
Talk.create(id: 1,
  name: 'หมอ หมอ หมอ : เจาะลึกวิถีชีวิตแพทย์ จากนักเรียนสู่วิชาชีพแพทย์',
  description: desc,
  max_reservations: 200,
  count: 0,
  start_at: DateTime.new(2014, 12, 26, 2, 00, 00),
  end_at: DateTime.new(2014, 12, 26, 5, 00, 00))
desc = <<-DESC.strip_heredoc
วิทยากร **นพ.สุกมล วิภาวีพลกุล** โรงพยาบาลมนารมย์ และโรงพยาบาลพญาไท 2 พร้อมบุตรสาว
DESC
Talk.create(id: 2,
  name: 'เข้าใจเรื่องรัก รู้จักเรื่องเพศ',
  description: desc,
  max_reservations: 200,
  count: 0,
  start_at: DateTime.new(2014, 12, 26, 6, 00, 00),
  end_at: DateTime.new(2014, 12, 26, 9, 00, 00))
desc = <<-DESC.strip_heredoc
วิทยากรประกอบด้วย :

  * **ฯพณฯ กร ทัพพะรังสี** อดีตรองนายกรัฐมนตรี
  * **ดร. วิฑูรย์ สิมะโชคดี** อดีตปลัดกระทรวงอุตสาหกรรม นายกสมาคมนักเรียนเก่าเตรียมอุดมศึกษา ในพระยรมราชูปถัมภ์ รุ่น 34
  * **นายประเสริฐ โอนพรัตน์วิบูล** รองประธานศาลฎีกา
DESC
Talk.create(id: 3,
  name: 'สานฝันสู่ความสำเร็จ',
  description: desc,
  max_reservations: 200,
  count: 0,
  start_at: DateTime.new(2014, 12, 27, 2, 00, 00),
  end_at: DateTime.new(2014, 12, 27, 5, 00, 00))
desc = <<-DESC.strip_heredoc
วิทยากรประกอบด้วย :

  * **รศ. นพ. กัมมาล กุมาร ปาวา** คณบดีวิทยาลัยแพทยศาสตร์นานาชาติจุฬาภรณ์ มหาวิทยาลัยธรรมศาสตร์
  * **ดร. ไพรินทร์ ชูโชติถาวร** ประธานเจ้าหน้าที่บริหาร และกรรมการผู้จัดการใหญ่ บริษัท ปตท. จำกัด (มหาชน)
  * **ดร.นพ. มโน เลาหวณิช** อุปนายกฝ่ายวิชาการและพัฒนาโรงเรียน สมาคมนักเรียนเก่าเตรียมอุดมศึกษา ในพระยรมราชูปถัมภ์
DESC
Talk.create(id: 4,
  name: 'การศึกษาไทยในอนาคต และบทบาทโรงเรียนเตรียมอุดมศึกษา',
  description: desc,
  max_reservations: 200,
  count: 0,
  start_at: DateTime.new(2014, 12, 27, 6, 00, 00),
  end_at: DateTime.new(2014, 12, 27, 9, 00, 00))