#import "@preview/showybox:2.0.4": showybox

#set page(header: [
	*2413130028 นายทรงพล อนันต์เนติกุล*
	#line(length: 100%)
])
#set text(font: "Noto Sans Thai")

#show heading.where(level: 2): set heading(numbering: "1.1)")

#let section(body) = {
	body
	line(length: 100%)
	pagebreak(weak: true)
}

= แบบฝึกหัดบทที่ 2

#context counter(heading).update((1, 0))

#section[
	== อธิบายความสำคัญของ Data Modeling

	การทำแบบจำลองข้อมูล (Data Modeling) คือ การสร้างแบบจำลองที่แสดงถึงโครงสร้างและความสัมพันธ์ของข้อมูลในระบบฐานข้อมูล

	แบบจำลองมี 3 ประเภท ได้แก่
	+ *Conceptual Data Model (CDM):* แสดงความสัมพันธ์ของข้อมูลในระดับสูง แสดงถึงความต้องการทางธุรกิจ โดยยังไม่คำนึงถึงโครงสร้างที่ใช้จัดเก็บข้อมูล
	+ *Logical Data Model (LDM):* แสดงการจัดระเบียบและโครงสร้างของข้อมูล แสดงรายละเอียดของข้อมูลในระดับที่ลึกขึ้น เช่น ชนิดข้อมูล ความสัมพันธ์ระหว่างตาราง แต่ยังไม่คำนึงถึงเทคโนโลยีที่ใช้ในการจัดเก็บข้อมูล
	+ *Physical Data Model (PDM):* แสดงโครงสร้างข้อมูลในระดับที่ลึกที่สุด รวมถึงการกำหนดตาราง ชนิดข้อมูล ข้อจำกัดต่าง ๆ ที่ใช้ในการจัดเก็บข้อมูลในระบบฐานข้อมูลจริง โดยจะมีความแตกต่างกันไปตามเทคโนโลยีที่ใช้ เช่น Oracle, MySQL, PostgreSQL เป็นต้น

	การทำแบบจำลองข้อมูลจะช่วยให้ผู้พัฒนาระบบสามารถเข้าใจความต้องการของธุรกิจ และออกแบบฐานข้อมูลที่ตอบสนองต่อความต้องการเหล่านั้นได้อย่างมีประสิทธิภาพและถูกต้อง
	นอกจากนี้ยังช่วยให้การสื่อสารระหว่างผู้พัฒนาระบบและผู้ใช้งานเป็นไปได้อย่างราบรื่น เนื่องจากมีแบบจำลองที่ชัดเจนในการอธิบายโครงสร้างและความสัมพันธ์ของข้อมูล

	== อธิบายลักษณะพื้นฐานของ Relational Data Model และความสำคัญของลักษณะ เหล่านี้ที่มีต่อผู้ใช้และผู้ออกแบบฐานข้อมูล

	Relational Data Model (RDM) หรือ โมเดลข้อมูลเชิงสัมพันธ์ เป็นโมเดลข้อมูลที่ใช้ในการจัดเก็บและจัดการข้อมูลในรูปแบบของสัมพันธ์ระหว่างข้อมูล (relation) หรือ ตาราง (tables)

	ซึ่งมีลักษณะพื้นฐานดังนี้:
	+ *ตาราง (Tables):* ข้อมูลจะถูกจัดเก็บในรูปแบบของตาราง ซึ่งประกอบด้วยแถว (rows) และคอลัมน์ (columns) โดยแต่ละตารางจะแทนข้อมูลของเอนทิตี (entity) หนึ่ง ๆ เช่น ตารางลูกค้า, ตารางสินค้า เป็นต้น
	+ *แถว (Rows):* แต่ละแถวในตารางจะแทนข้อมูลของเอนทิตีนั้น ๆ หนึ่งรายการ เช่น ข้อมูลของลูกค้าแต่ละคน ข้อมูลของสินค้าแต่ละรายการ เป็นต้น
	+ *คอลัมน์ (Columns):* แต่ละคอลัมน์ในตารางจะแทนคุณสมบัติ (attribute) ของเอนทิตี เช่น ชื่อ, ที่อยู่, เบอร์โทรศัพท์, ราคาสินค้า, จำนวนสินค้าคงเหลือ เป็นต้น

	== วาด ER จาก "A customer can make many payments." แต่ละการชำระเงินมาจากลูกค้าคนเดียว

	== วาด OO Model จาก ข้อ 3.

	== อธิบายความแตกต่างของ Object และคลาส ใน Object-oriented Data Model (OODM)

	- Class คือ คำอธิบายหรือแม่แบบ (blueprint) ของวัตถุ (object) ที่มีคุณสมบัติ (attribute/property) และพฤติกรรม (behavior/method) ที่เหมือนกัน
		เช่น คลาส "รถยนต์" อาจมีคุณสมบัติ เช่น ยี่ห้อ, รุ่น, สี และพฤติกรรม เช่น ขับเคลื่อน, หยุด
	- Object คือ อินสแตนซ์ (instance) ของคลาส ซึ่งเป็นวัตถุที่มีคุณสมบัติและพฤติกรรมตามที่กำหนดในคลาส โดยแต่ละวัตถุจะมีค่าของคุณสมบัติที่แตกต่างกัน
		เช่น วัตถุ "รถยนต์1" อาจมีคุณสมบัติ ยี่ห้อ = "Toyota", รุ่น = "Corolla", สี = "แดง"

	== อะไรคือ relationship และอธิบายชนิดของ relationship พร้อมยกตัวอย่าง

	== ตารางคืออะไร และมีบทบาทสำคัญอย่างไรใน relational data model

	== ER diagram คืออะไร จงยกตัวอย่างประกอบ
]

#context counter(heading).update((2, 0))

#section[
	#showybox(image("./img1.png"))

	== Identify each relationship type and write all of the business rules.

	== Create the basic Crow's Foot ERD for DealCo.
]

#section[
	#showybox(image("./img2.png"))

	== Identify each relationship type and write all of the business rules.

	== Create the basic Crow's Foot ERD for Tiny College.

	== Create the UML class diagram that reflects the entities and relationships you identified in the relational diagram.

	== CREATE OO MODEL
]
