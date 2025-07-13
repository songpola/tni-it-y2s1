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
	pagebreak()
}

= แบบฝึกหัดบทที่ 2

#context counter(heading).update((1, 0))

#section[
	== อธิบายความสำคัญของ Data Modeling

	== อธิบายลักษณะพื้นฐานของ Relational Data Model และความสำคัญของลักษณะ เหล่านี้ที่มีต่อผู้ใช้และผู้ออกแบบฐานข้อมูล

	== วาด ER จาก "A customer can make many payments." แต่ละการชำระเงินมาจากลูกค้าคนเดียว

	== วาด OO Model จาก ข้อ 3.

	== อธิบายความแตกต่างของ Object และคลาส ใน Object-oriented Data Model (OODM)

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
