extends Node

const physics_definitions: Array[Dictionary] = [
	{
		"physical_quantity": {
			"definition_in_different_languages": [
				[
					"physical quantity",
					"Quantity that can be measured"
				],
				[
					"物理量",
					"可以测量的量"
				],
				[
					"kuantiti fizik",
					"Kuantiti yang boleh diukur"
				],
				[
					"உடல் அளவு",
					"அளக்கக்கூடிய அளவு"
				]
			],
			"years": []
		},
		"derived_quantity": {
			"definition_in_different_languages": [
				[
					"derived quantity",
					"Physical quantity obtained by combining various basic quantities through multiplication and division"
				],
				[
					"导出量",
					"通过将各种基本量通过乘法和除法结合获得的物理量"
				],
				[
					"kuantiti terbitan",
					"Kuantiti fizik yang diperolehi dengan menggabungkan pelbagai kuantiti asas melalui pendaraban dan pembahagian"
				],
				[
					"பெறப்பட்ட அளவு",
					"பெருக்கல் மற்றும் வகுத்தல் மூலம் பல்வேறு அடிப்படை அளவுகளை இணைப்பதன் மூலம் பெறப்பட்ட இயற்பியல் அளவு"
				]
			],
			"years": []
		},
		"scalar_quantity": {
			"definition_in_different_languages": [
				[
					"scalar quantity",
					"Physical quantity which has only magnitude"
				],
				[
					"标量量",
					"只有量而没有方向的物理量"
				],
				[
					"kuantiti skalar",
					"Kuantiti fizik yang hanya mempunyai magnitud sahaja"
				],
				[
					"அளவிலான அளவு",
					"அளவை மட்டுமே கொண்ட இயற்பியல் அளவு"
				]
			],
			"years": []
		},
		"vector_quantity": {
			"definition_in_different_languages": [
				[
					"vector quantity",
					"Physical quantity which has both magnitude and direction"
				],
				[
					"矢量量",
					"既有量又有方向的物理量"
				],
				[
					"kuantiti vektor",
					"Kuantiti fizik yang mempunyai magnitud dan arah"
				],
				[
					"வெக்டார் அளவு",
					"அளவு மற்றும் திசை இரண்டையும் கொண்ட இயற்பியல் அளவு"
				]
			],
			"years": []
		}
	},
	{
		"displacement": {
			"definition_in_different_languages": [
				[
					"displacement",
					"Distance moved in a specific direction"
				],
				[
					"位移",
					"在特定方向上移动的距离"
				],
				[
					"sesaran",
					"Jarak yang dipindahkan dalam satu arah tertentu"
				],
				[
					"இடப்பெயர்வு",
					"தொலைவு ஒரு குறிப்பிட்ட திசையில் நகர்த்தப்பட்டது"
				]
			],
			"years": []
		},
		"velocity": {
			"definition_in_different_languages": [
				[
					"velocity",
					"The rate of change of displacement"
				],
				[
					"速度 (velocity)",
					"位移变化的速率"
				],
				[
					"halaju",
					"Kadar perubahan pemindahan"
				],
				[
					"வேகம் (velocity)",
					"இடப்பெயர்ச்சியின் மாற்ற விகிதம்"
				]
			],
			"years": []
		},
		"speed": {
			"definition_in_different_languages": [
				[
					"speed",
					"The rate of change of distance travelled"
				],
				[
					"速度 (speed)",
					"行进距离变化的速率"
				],
				[
					"kelajuan",
					"Kadar perubahan jarak yang ditempuh"
				],
				[
					"வேகம் (speed)",
					"பயணம் செய்த தூரத்தின் மாற்ற விகிதம்"
				]
			],
			"years": []
		},
		"acceleration": {
			"definition_in_different_languages": [
				[
					"acceleration",
					"The rate of change of velocity"
				],
				[
					"加速度",
					"速度变化的速率"
				],
				[
					"pecutan",
					"Kadar perubahan halaju"
				],
				[
					"முடுக்கம்",
					"வேக மாற்ற விகிதம்"
				]
			],
			"years": [
				2016
			]
		},
		"free_fall": {
			"definition_in_different_languages": [
				[
					"free fall",
					"Motion of falling bodies under gravity in which air resistance is neglected"
				],
				[
					"自由落体",
					"在重力作用下忽略空气阻力的物体运动"
				],
				[
					"jatuh bebas",
					"Pergerakan benda yang jatuh di bawah graviti di mana rintangan udara diabaikan"
				],
				[
					"இலவச வீழ்ச்சி",
					"காற்று எதிர்ப்பு புறக்கணிக்கப்பட்ட புவியீர்ப்பு விசையின் கீழ் விழும் உடல்களின் இயக்கம்"
				]
			],
			"years": []
		},
		"projectile": {
			"definition_in_different_languages": [
				[
					"projectile",
					"A body that is projected at an angle to the horizontal and moves under the action of gravity"
				],
				[
					"抛射体",
					"以一定角度投射到水平面上并在重力作用下运动的物体"
				],
				[
					"projektil",
					"Badan yang dijana pada sudut terhadap horizontal dan bergerak di bawah tindakan graviti"
				],
				[
					"புராஜெக்டைல்",
					"கிடைமட்டத்திற்கு ஒரு கோணத்தில் திட்டமிடப்பட்டு புவியீர்ப்பு செயல்பாட்டின் கீழ் நகரும் ஒரு உடல்"
				]
			],
			"years": []
		}
	},
	{
		"inertia": {
			"definition_in_different_languages": [
				[
					"inertia",
					"The object oppose the change in its state of rest or uniform motion along a straight line"
				],
				[
					"惯性",
					"物体抵抗其静止状态或沿直线匀速运动状态改变的能力"
				],
				[
					"inersia",
					"Objek menentang perubahan dalam keadaan rehat atau gerakan seragam sepanjang garisan lurus"
				],
				[
					"நிலைமை",
					"பொருள் அதன் ஓய்வு நிலை அல்லது ஒரு நேர் கோட்டில் சீரான இயக்கத்தில் ஏற்படும் மாற்றத்தை எதிர்க்கிறது"
				]
			],
			"years": []
		},
		"first_law_of_newton": {
			"definition_in_different_languages": [
				[
					"newton's first law",
					"A body is at rest or moving with uniform velocity along the straight line unless acted on by external force"
				],
				[
					"牛顿第一定律",
					"物体在没有外力作用时处于静止状态或沿直线匀速运动状态"
				],
				[
					"hukum pertama newton",
					"Sebuah benda berada dalam keadaan rehat atau bergerak dengan halaju seragam sepanjang garisan lurus kecuali dikenakan daya luar"
				],
				[
					"நியூட்டனின் முதல் விதி",
					"ஒரு உடல் ஓய்வில் உள்ளது அல்லது வெளிப்புற சக்தியால் செயல்படாத வரை ஒரே மாதிரியான வேகத்துடன் நேர்கோட்டில் நகர்கிறது"
				]
			],
			"years": []
		},
		"second_law_of_newton": {
			"definition_in_different_languages": [
				[
					"newton's second law",
					"The rate of change of momentum of the body is directly proportional to the external force acting on the body and take place along the direction of the force"
				],
				[
					"牛顿第二定律",
					"物体的动量变化率与作用在物体上的外力成正比，方向与力的方向一致"
				],
				[
					"hukum kedua newton",
					"Kadar perubahan momentum benda adalah berkadar terus dengan daya luar yang bertindak ke atas benda dan berlaku sepanjang arah daya tersebut"
				],
				[
					"நியூட்டனின் இரண்டாவது விதி",
					"உடலின் உந்தத்தின் மாற்ற விகிதம் உடலில் செயல்படும் வெளிப்புற விசைக்கு நேர் விகிதாசாரமாகும் மற்றும் சக்தியின் திசையில் நடைபெறுகிறது"
				]
			],
			"years": [2013, 2015]
		},
		"third_law_of_newton": {
			"definition_in_different_languages": [
				[
					"newton's third law",
					"Every action has a reaction which has the same magnitude but in opposite direction"
				],
				[
					"牛顿第三定律",
					"每个动作都有一个量相同但方向相反的反作用"
				],
				[
					"hukum ketiga newton",
					"Setiap tindakan mempunyai reaksi yang mempunyai magnitud yang sama tetapi arah yang berlawanan"
				],
				[
					"நியூட்டனின் மூன்றாம் விதி",
					"ஒவ்வொரு செயலுக்கும் ஒரே அளவு ஆனால் எதிர் திசையில் ஒரு எதிர்வினை உள்ளது"
				]
			],
			"years": [2015]
		},
		"impulse": {
			"definition_in_different_languages": [
				[
					"impulse",
					"Product of force and the time"
				],
				[
					"冲量",
					"力和时间的乘积"
				],
				[
					"impuls",
					"Hasil darab daya dan masa"
				],
				[
					"உந்துதல்",
					"சக்தி மற்றும் நேரத்தின் தயாரிப்பு"
				]
			],
			"years": [2018]
		},
		"linear_momentum": {
			"definition_in_different_languages": [
				[
					"linear momentum",
					"Product of the particle's mass and velocity"
				],
				[
					"线动量",
					"质点的质量和速度的乘积"
				],
				[
					"momentum linear",
					"Hasil darab jisim zarah dan halaju"
				],
				[
					"நேரியல் உந்தம்",
					"துகள் நிறை மற்றும் வேகத்தின் தயாரிப்பு"
				]
			],
			"years": []
		},
		"principle_of_conservation_of_linear_momentum": {
			"definition_in_different_languages": [
				[
					"principle of conservation of linear momentum",
					"The momentum conserved before and after collision"
				],
				[
					"线动量守恒定律",
					"碰撞前后线动量守恒"
				],
				[
					"prinsip pengekalan momentum linear",
					"Momentum dikekalkan sebelum dan selepas perlanggaran"
				],
				[
					"நேரியல் உந்தத்தைப் பாதுகாப்பதற்கான கொள்கை",
					"மோதலுக்கு முன்னும் பின்னும் பாதுகாக்கப்பட்ட உந்தம்"
				]
			],
			"years": []
		},
		"elastic_collision": {
			"definition_in_different_languages": [
				[
					"elastic collision",
					"A collision whereby both the total momentum and total kinetic energy of the system is conserved"
				],
				[
					"弹性碰撞",
					"系统的总动量和总动能都守恒的碰撞"
				],
				[
					"perlanggaran elastik",
					"Perlanggaran di mana kedua-dua momentum total dan tenaga kinetik total sistem dikekalkan"
				],
				[
					"எலாஸ்டிக் மோதல்",
					"கணினியின் மொத்த உந்தம் மற்றும் மொத்த இயக்க ஆற்றல் இரண்டும் பாதுகாக்கப்படும் ஒரு மோதல்"
				]
			],
			"years": []
		},
		"inelastic_collision": {
			"definition_in_different_languages": [
				[
					"inelastic collision",
					"A collision whereby only the total momentum of system is conserved"
				],
				[
					"非弹性碰撞",
					"系统的总动量守恒，但总动能不守恒的碰撞"
				],
				[
					"perlanggaran tak elastik",
					"Perlanggaran di mana hanya momentum total sistem dikekalkan"
				],
				[
					"இன்லாஸ்டிக் மோதல்",
					"கணினியின் மொத்த வேகம் மட்டுமே பாதுகாக்கப்படும் ஒரு மோதல்"
				]
			],
			"years": []
		},
		"centre_of_mass": {
			"definition_in_different_languages": [
				[
					"centre of mass",
					"A point at which the total mass of the body is assumed to be concentrated"
				],
				[
					"质心",
					"被认为是体系总质量集中的点"
				],
				[
					"pusat jisim",
					"Titik di mana jisim keseluruhan badan diandaikan terkumpul"
				],
				[
					"சென்டர் ஆஃப் மாஸ்",
					"உடலின் மொத்த நிறை செறிவூட்டப்பட்டதாகக் கருதப்படும் ஒரு புள்ளி"
				]
			],
			"years": [2017]
		},
		"static_friction": {
			"definition_in_different_languages": [
				[
					"static friction",
					"Friction force which acts when there is no relative motion between the surfaces"
				],
				[
					"静摩擦力",
					"在表面之间没有相对运动时起作用的摩擦力"
				],
				[
					"friksi statik",
					"Gaya friksi yang bertindak apabila tidak ada pergerakan relatif antara permukaan"
				],
				[
					"நிலையான உராய்வு",
					"உராய்வு விசை மேற்பரப்புகளுக்கு இடையில் எந்த ஒப்பீட்டு இயக்கமும் இல்லாத போது செயல்படுகிறது"
				]
			],
			"years": []
		},
		"coefficient_of_static_friction": {
			"definition_in_different_languages": [
				[
					"coefficient of static friction",
					"The limiting frictional force is directly proportional to the normal reaction for case of static friction"
				],
				[
					"静摩擦系数",
					"静摩擦的极限摩擦力与法线反应成正比"
				],
				[
					"pemalar friksi statik",
					"Gaya geseran statik yang terhad langsung berkadar dengan tindak balas normal untuk kes geseran statik"
				],
				[
					"நிலையான உராய்வு குணகம்",
					"கட்டுப்படுத்தும் உராய்வு விசையானது நிலையான உராய்வுக்கான இயல்பான எதிர்வினைக்கு நேர் விகிதாசாரமாகும்"
				]
			],
			"years": [2015]
		}
	},
	{
		"work_done": {
			"definition_in_different_languages": [
				[
					"work done",
					"The product of force and the displacement moved along the direction of force"
				],
				[
					"功",
					"力和沿力方向移动的位移的乘积"
				],
				[
					"kerja yang dilakukan",
					"Hasil darab daya dan pemindahan bergerak sepanjang arah daya"
				],
				[
					"வேலை முடிந்தது",
					"விசையின் தயாரிப்பு மற்றும் இடப்பெயர்ச்சி விசையின் திசையில் நகர்ந்தது"
				]
			],
			"years": [2013]
		},
		"energy": {
			"definition_in_different_languages": [
				[
					"energy",
					"The ability to do work"
				],
				[
					"能量",
					"做功的能力"
				],
				[
					"tenaga",
					"Kemampuan untuk melakukan kerja"
				],
				[
					"ஆற்றல்",
					"வேலை செய்யும் திறன்"
				]
			],
			"years": []
		},
		"kinetic_energy": {
			"definition_in_different_languages": [
				[
					"kinetic energy",
					"The energy possessed by a body due to its motion"
				],
				[
					"动能",
					"由于运动而具有的物体的能量"
				],
				[
					"tenaga kinetik",
					"Tenaga yang dimiliki oleh badan disebabkan oleh pergerakannya"
				],
				[
					"இயக்க ஆற்றல்",
					"அதன் இயக்கம் காரணமாக உடல் கொண்டிருக்கும் ஆற்றல்"
				]
			],
			"years": []
		},
		"work-energy_theorem": {
			"definition_in_different_languages": [
				[
					"work-energy theorem",
					"The work done on a body by net forces acting on it is equal to the change in the kinetic energy of the body"
				],
				[
					"功能定理",
					"由作用在物体上的净力所做的功等于物体动能的变化"
				],
				[
					"teorem tenaga-kerja",
					"Kerja yang dilakukan pada suatu badan oleh daya bersih yang bertindak padanya sama dengan perubahan tenaga kinetik badan tersebut"
				],
				[
					"வேலை-ஆற்றல் தேற்றம்",
					"ஒரு உடலில் செயல்படும் நிகர சக்திகளால் செய்யப்படும் வேலை உடலின் இயக்க ஆற்றலில் ஏற்படும் மாற்றத்திற்கு சமம்"
				]
			],
			"years": []
		},
		"principle_of_conservation_of_energy": {
			"definition_in_different_languages": [
				[
					"principle of conservation of energy",
					"Energy can neither be created nor destroyed, but can be transformed from one form to another form"
				],
				[
					"能量守恒定律",
					"能量不能被创造或销毁，但可以从一种形式转化为另一种形式"
				],
				[
					"prinsip pengekalan tenaga",
					"Tenaga tidak boleh dicipta atau dimusnahkan, tetapi boleh diubahsuai dari satu bentuk kepada bentuk lain"
				],
				[
					"ஆற்றலைப் பாதுகாப்பதற்கான கொள்கை",
					"ஆற்றலை உருவாக்கவோ அழிக்கவோ முடியாது, ஆனால் ஒரு வடிவத்திலிருந்து மற்றொரு வடிவத்திற்கு மாற்ற முடியும்"
				]
			],
			"years": []
		},
		"power": {
			"definition_in_different_languages": [
				[
					"power",
					"Rate of change of energy"
				],
				[
					"功率",
					"能量变化的速率"
				],
				[
					"daya",
					"Kadar perubahan tenaga"
				],
				[
					"சக்தி",
					"ஆற்றல் மாற்ற விகிதம்"
				]
			],
			"years": []
		}
	},
	{
		"angular_velocity": {
			"definition_in_different_languages": [
				[
					"angular velocity",
					"Rate of change in angular displacement"
				],
				[
					"角速度",
					"角位移变化的速率"
				],
				[
					"halajung sudut",
					"Kadar perubahan dalam pemindahan sudut"
				],
				[
					"கோண வேகம்",
					"கோண இடப்பெயர்ச்சியில் ஏற்படும் மாற்ற விகிதம்"
				]
			],
			"years": []
		},
		"angular_acceleration": {
			"definition_in_different_languages": [
				[
					"angular acceleration",
					"Rate of change of angular velocity"
				],
				[
					"角加速度",
					"角速度变化的速率"
				],
				[
					"pecutan sudut",
					"Kadar perubahan halajung sudut"
				],
				[
					"கோண முடுக்கம்",
					"கோண வேகத்தின் மாற்ற விகிதம்"
				]
			],
			"years": []
		},
		"centripetal_force": {
			"definition_in_different_languages": [
				[
					"centripetal force",
					"External force acting towards the centre of a circular motion"
				],
				[
					"向心力",
					"作用在圆周运动物体向圆心的外力"
				],
				[
					"daya sentripetal",
					"Daya luar yang bertindak ke arah pusat gerakan pusing"
				],
				[
					"சென்ட்ரிபெட்டல் ஃபோர்ஸ்",
					"ஒரு வட்ட இயக்கத்தின் மையத்தை நோக்கி செயல்படும் வெளிப்புற விசை"
				]
			],
			"years": []
		}
	},
	{
		"law_of_universal_gravitation_of_newton": {
			"definition_in_different_languages": [
				[
					"newton's law of universal gravitation",
					"Force of attraction between two masses is directly proportional to product of their masses but inversely proportional to the square of the separation apart"
				],
				[
					"牛顿的普遍引力定律",
					"两个物体之间的引力与它们的质量乘积成正比，与它们之间的距离的平方成反比"
				],
				[
					"hukum gravitasi universal newton",
					"Daya tarikan antara dua jisim adalah berkadar terus dengan hasil darab jisim mereka tetapi berkadar terbalik dengan kuasa dua jarak di antara mereka"
				],
				[
					"நியூட்டனின் உலகளாவிய ஈர்ப்பு விதி",
					"இரண்டு வெகுஜனங்களுக்கிடையேயான ஈர்ப்பு விசை அவற்றின் வெகுஜனங்களின் உற்பத்திக்கு நேரடியாக விகிதாசாரமாகும், ஆனால் பிரித்தலின் வர்க்கத்திற்கு நேர்மாறான விகிதாசாரமாகும்"
				]
			],
			"years": [2013, 2019]
		},
		"gravitational_field": {
			"definition_in_different_languages": [
				[
					"gravitational field",
					"A space where an object inside it will experience gravitational field"
				],
				[
					"引力场",
					"在其中的物体将经历引力场的空间"
				],
				[
					"medan gravitasi",
					"Ruang di mana objek di dalamnya akan mengalami medan graviti"
				],
				[
					"ஈர்ப்பு புலம்",
					"அதன் உள்ளே இருக்கும் ஒரு பொருள் ஈர்ப்பு புலத்தை அனுபவிக்கும் இடம்"
				]
			],
			"years": []
		},
		"gravitational_field_strength": {
			"definition_in_different_languages": [
				[
					"gravitational field strength",
					"Force per unit mass acting at that point in the gravitational field"
				],
				[
					"引力场强度",
					"在引力场中作用于该点的单位质量的力"
				],
				[
					"kekuatan medan gravitasi",
					"Daya setiap unit jisim yang bertindak pada titik itu dalam medan graviti"
				],
				[
					"ஈர்ப்பு புல வலிமை",
					"ஈர்ப்பு புலத்தில் அந்த இடத்தில் செயல்படும் ஒரு யூனிட் வெகுஜனத்திற்கு விசை"
				]
			],
			"years": [2013]
		},
		"gravitational_potential_energy": {
			"definition_in_different_languages": [
				[
					"gravitational potential energy",
					"Work done in moving a mass from infinity to that point"
				],
				[
					"引力势能",
					"将物体从无穷远处移动到该点所做的功"
				],
				[
					"tenaga gravitasi potensial",
					"Kerja yang dilakukan untuk memindahkan jisim dari tak terhingga ke titik itu"
				],
				[
					"ஈர்ப்பு ஆற்றல்",
					"முடிவிலியிலிருந்து அந்த இடத்திற்கு ஒரு வெகுஜனத்தை நகர்த்துவதில் செய்யப்படும் வேலை"
				]
			],
			"years": []
		},
		"gravitational_potential": {
			"definition_in_different_languages": [
				[
					"gravitational potential",
					"Work done in moving a unit mass from infinity to that point"
				],
				[
					"引力势",
					"将单位质量从无穷远处移动到该点所做的功"
				],
				[
					"potensi gravitasi",
					"Kerja yang dilakukan untuk memindahkan satu unit jisim dari tak terhingga ke titik itu"
				],
				[
					"ஈர்ப்பு திறன்",
					"ஒரு அலகு வெகுஜனத்தை முடிவிலியிலிருந்து அந்த இடத்திற்கு நகர்த்துவதில் செய்யப்படும் வேலை"
				]
			],
			"years": [2013]
		},
		"third_law_of_kepler": {
			"definition_in_different_languages": [
				[
					"kepler's third law",
					"In the Solar system, the square of the period of revolution of a planet is directly proportional to the cube of the radius of planet's orbit around the Sun"
				],
				[
					"开普勒第三定律",
					"在太阳系中，行星绕太阳公转的周期的平方与行星轨道半径的立方成正比"
				],
				[
					"hukum kepler ketiga",
					"Dalam sistem Solar, kuasa dua tempoh revolusi sebuah planet adalah berkadar terus dengan kuasa tiga jejari orbit planet itu mengelilingi Matahari"
				],
				[
					"கெப்லரின் மூன்றாவது விதி",
					"சூரிய மண்டலத்தில், ஒரு கிரகத்தின் சுழற்சியின் காலத்தின் சதுரம் சூரியனைச் சுற்றியுள்ள கிரகத்தின் சுற்றுப்பாதையின் ஆரம் கனசதுரத்திற்கு நேரடியாக விகிதாசாரமாகும்"
				]
			],
			"years": []
		},
		"escape_velocity": {
			"definition_in_different_languages": [
				[
					"escape velocity",
					"The minimum initial velocity required to launch a satellite from the surface of Earth so that is free from gravitational attraction"
				],
				[
					"脱离速度",
					"从地球表面发射卫星所需的最小初始速度，以使其摆脱重力吸引"
				],
				[
					"halajung lepas",
					"Halajung minimum yang diperlukan untuk melancarkan satelit dari permukaan Bumi supaya bebas dari daya tarikan graviti"
				],
				[
					"எஸ்கேப் வேகம்",
					"புவியின் மேற்பரப்பில் இருந்து செயற்கைக்கோளை ஏவுவதற்கு தேவையான குறைந்தபட்ச ஆரம்ப வேகம், அதனால் ஈர்ப்பு ஈர்ப்பு இல்லை"
				]
			],
			"years": []
		}
	},
	{
		"centre_of_gravity": {
			"definition_in_different_languages": [
				[
					"centre of gravity",
					"Point at which the entire weight of the system can be considered to act"
				],
				[
					"重心",
					"整个系统重量可以被认为是作用的点"
				],
				[
					"pusat graviti",
					"Titik di mana keseluruhan berat sistem boleh dianggap berkesan"
				],
				[
					"ஈர்ப்பு மையம்",
					"கணினியின் முழு எடையும் செயல்படும் புள்ளி"
				]
			],
			"years": []
		},
		"torque": {
			"definition_in_different_languages": [
				[
					"torque",
					"Hasil darab daya dan jarak menegak dari garis tindakan daya ke titik"
				],
				[
					"力矩",
					"力和从力作用点到点的垂直距离的乘积"
				],
				[
					"முறுக்கு",
					"விசையின் தயாரிப்பு மற்றும் விசையின் செயல்பாட்டுக் கோட்டிலிருந்து புள்ளிக்கு செங்குத்தாக உள்ள தூரம்"
				]
			],
			"years": []
		}
	},
	{
		"stress": {
			"definition_in_different_languages": [
				[
					"stress",
					"Longitudinal force per unit cross-sectional area acting on the wire"
				],
				[
					"应力",
					"作用在导线上的单位横截面积上的纵向力"
				],
				[
					"stres",
					"Daya memanjang setiap unit kawasan keratan rentas bertindak pada dawai"
				],
				[
					"மன அழுத்தம்",
					"ஒயரில் செயல்படும் ஒரு யூனிட் குறுக்கு வெட்டுப் பகுதிக்கு நீளமான விசை"
				]
			],
			"years": []
		},
		"strain": {
			"definition_in_different_languages": [
				[
					"strain",
					"Extension per unit original length of wire"
				],
				[
					"应变",
					"导线原始长度的单位延伸"
				],
				[
					"regangan",
					"Pemanjangan setiap unit panjang asal dawai"
				],
				[
					"திரிபு",
					"ஒரு யூனிட்டுக்கு நீட்டிப்பு அசல் நீளம் கம்பி"
				]
			],
			"years": []
		},
		"elastic_limit": {
			"definition_in_different_languages": [
				[
					"elastic limit",
					"The maximum stress which can be applied to wire whereby the wire can return to its original length when the stress is removed"
				],
				[
					"弹性极限",
					"可以施加在导线上的最大应力，导线在去除应力时可以恢复到其原始长度"
				],
				[
					"had elastik",
					"Stres maksimum yang boleh dikenakan pada dawai di mana dawai boleh kembali ke panjang asalnya apabila tekanan dihapuskan"
				],
				[
					"எலாஸ்டிக் வரம்பு",
					"அதிகபட்ச அழுத்தமானது கம்பியில் பயன்படுத்தப்படலாம், இதன் மூலம் அழுத்தம் அகற்றப்படும்போது கம்பி அதன் அசல் நீளத்திற்குத் திரும்பும்"
				]
			],
			"years": []
		},
		"law_of_hooke": {
			"definition_in_different_languages": [
				[
					"hooke's law",
					"Force applied is directly proportional to the extension if the proportional limit is not exceeded"
				],
				[
					"胡克定律",
					"如果没有超过比例极限，施加的力与延伸成正比"
				],
				[
					"hukum hooke",
					"Daya yang dikenakan adalah berkadar terus dengan regangan jika had berkadar tidak dilanggar"
				],
				[
					"ஹூக்கின் சட்டம்",
					"விகிதாச்சார வரம்பை மீறவில்லை என்றால், பயன்படுத்தப்படும் சக்தியானது நீட்டிப்புக்கு நேரடியாக விகிதாசாரமாகும்"
				]
			],
			"years": []
		},
		"modulus_of_young": {
			"definition_in_different_languages": [
				[
					"young's modulus",
					"Ratio of the stress to strain"
				],
				[
					"杨氏模量",
					"应力与应变的比值"
				],
				[
					"modulus young",
					"Nisbah stres kepada regangan"
				],
				[
					"யங்ஸ் மாடுலஸ்",
					"ஸ்ட்ரெய்ன் டு ஸ்ட்ரெய்ன் விகிதம்"
				]
			],
			"years": []
		},
		"strain_energy": {
			"definition_in_different_languages": [
				[
					"strain energy",
					"The energy stored in a body due to deformation"
				],
				[
					"应变能",
					"由于变形而储存在物体中的能量"
				],
				[
					"tenaga regangan",
					"Tenaga yang disimpan dalam suatu badan disebabkan oleh pembentukan"
				],
				[
					"திரிபு ஆற்றல்",
					"உருமாற்றம் காரணமாக உடலில் சேமிக்கப்படும் ஆற்றல்"
				]
			],
			"years": []
		}
	},
	{
		"law_of_boyle": {
			"definition_in_different_languages": [
				[
					"boyle's law",
					"For a fixed mass of an ideal gas kept at constant temperature, the pressure is inversely proportional to the volume"
				],
				[
					"波伦定律",
					"在恒定温度下，保持不变的理想气体的压力与体积成反比"
				],
				[
					"hukum boyle",
					"Bagi jisim tetap gas ideal yang dikeluarkan pada suhu tetap, tekanan adalah berkadar terbalik dengan isipadu"
				],
				[
					"பாயிலின் விதி",
					"நிலையான வெப்பநிலையில் வைக்கப்படும் ஒரு சிறந்த வாயுவின் நிலையான வெகுஜனத்திற்கு, அழுத்தமானது தொகுதிக்கு நேர்மாறான விகிதாசாரமாகும்"
				]
			],
			"years": []
		},
		"law_of_charles": {
			"definition_in_different_languages": [
				[
					"charles's law",
					"For a fixed mass of an ideal gas kept at constant pressure, the volume is directly proportional to the absolute temperature"
				],
				[
					"查理定律",
					"在恒定压力下，保持不变的理想气体的体积与绝对温度成正比"
				],
				[
					"hukum charles",
					"Bagi jisim tetap gas ideal yang dikeluarkan pada tekanan tetap, isipadu adalah berkadar terus dengan suhu mutlak"
				],
				[
					"சார்லஸின் விதி",
					"நிலையான அழுத்தத்தில் வைக்கப்படும் ஒரு இலட்சிய வாயுவின் நிலையான வெகுஜனத்திற்கு, கன அளவு முழுமையான வெப்பநிலைக்கு நேரடியாக விகிதாசாரமாகும்"
				]
			],
			"years": []
		},
		"law_of_gay_lussac": {
			"definition_in_different_languages": [
				[
					"gay-lussac's law",
					"For a fixed mass of an ideal gas kept at constant volume, the pressure is directly proportional to the absolute temperature"
				],
				[
					"盖伦-吕萨克定律",
					"在恒定体积下，保持不变的理想气体的压力与绝对温度成正比"
				],
				[
					"hukum gay-lussac",
					"Bagi jisim tetap gas ideal yang dikeluarkan pada isipadu tetap, tekanan adalah berkadar terus dengan suhu mutlak"
				],
				[
					"கே-லுசாக்கின் விதி",
					"நிலையான கனமான அளவில் வைக்கப்படும் ஒரு இலட்சிய வாயுவின் நிலையான வெகுஜனத்திற்கு, அழுத்தம் முழுமையான வெப்பநிலைக்கு நேரடியாக விகிதாசாரமாக இருக்கும்"
				]
			],
			"years": []
		},
		"ideal_gas": {
			"definition_in_different_languages": [
				[
					"ideal gas",
					"A gas that obeys gas laws at any temperature and pressure"
				],
				[
					"理想气体",
					"在任何温度和压力下都遵守气体定律的气体"
				],
				[
					"gas ideal",
					"Gas yang mematuhi undang-undang gas pada setiap suhu dan tekanan"
				],
				[
					"ஐடியல் வாயு",
					"எந்த வெப்பநிலை மற்றும் அழுத்தத்திலும் வாயு விதிகளுக்குக் கீழ்ப்படியும் வாயு"
				]
			],
			"years": []
		},
		"degree_of_freedom": {
			"definition_in_different_languages": [
				[
					"degree of freedom",
					"Independent ways of gas molecules to acquire energy"
				],
				[
					"自由度",
					"气体分子获得能量的独立方式"
				],
				[
					"darjah kebebasan",
					"Cara bebas molekul gas untuk memperoleh tenaga"
				],
				[
					"சுதந்திரத்தின் அளவு",
					"வாயு மூலக்கூறுகள் ஆற்றலைப் பெறுவதற்கான சுயாதீனமான வழிகள்"
				]
			],
			"years": [2015, 2020]
		},
		"principle_of_equipartition_of_energy": {
			"definition_in_different_languages": [
				[
					"principle of equipartition of energy",
					"When gas system is in thermodynamic equilibrium, the average energy per molecule for each degree of freedom is 1/2 kT"
				],
				[
					"能量均分定理",
					"当气体系统处于热力学平衡时，每个自由度的平均能量为1/2 kT"
				],
				[
					"prinsip pengagihan tenaga",
					"Apabila sistem gas berada dalam keseimbangan termodinamik, tenaga purata untuk setiap darjah kebebasan adalah 1/2 kT"
				],
				[
					"ஆற்றலை சமன்படுத்தும் கொள்கை",
					"வாயு அமைப்பு வெப்ப இயக்கவியல் சமநிலையில் இருக்கும் போது, ​​ஒவ்வொரு அளவு சுதந்திரத்திற்கும் ஒரு மூலக்கூறின் சராசரி ஆற்றல் 1/2 kT"
				]
			],
			"years": []
		},
		"internal_energy_of_an_ideal_gas": {
			"definition_in_different_languages": [
				[
					"internal energy of an ideal gas",
					"The internal energy of an ideal gas consists of the total kinetic energy of the gas molecules"
				],
				[
					"理想气体的内能",
					"理想气体的内能包括气体分子的总动能"
				],
				[
					"tenaga dalaman gas ideal",
					"Tenaga dalaman gas ideal terdiri daripada tenaga kinetik keseluruhan molekul gas"
				],
				[
					"ஒரு சிறந்த வாயுவின் உள் ஆற்றல்",
					"ஒரு சிறந்த வாயுவின் உள் ஆற்றல் வாயு மூலக்கூறுகளின் மொத்த இயக்க ஆற்றலைக் கொண்டுள்ளது"
				]
			],
			"years": []
		}
	},
	{
		"heat_capacity": {
			"definition_in_different_languages": [
				[
					"heat capacity",
					"Heat required to raise the temperature of substance by 1 K"
				],
				[
					"热容量",
					"升高物质温度1K所需的热量"
				],
				[
					"kapasiti haba",
					"Haba yang diperlukan untuk menaikkan suhu zat sebanyak 1 K"
				],
				[
					"வெப்ப திறன்",
					"பொருளின் வெப்பநிலையை 1 K ஆல் உயர்த்த தேவையான வெப்பம்"
				]
			],
			"years": []
		},
		"specific_heat_capacity": {
			"definition_in_different_languages": [
				[
					"specific heat capacity",
					"Heat required to raise the temperature of 1 kilogram of a substance by 1 K"
				],
				[
					"比热容量",
					"升高1千克物质温度1K所需的热量"
				],
				[
					"kapasiti haba tentu",
					"Haba yang diperlukan untuk menaikkan suhu 1 kilogram zat sebanyak 1 K"
				],
				[
					"குறிப்பிட்ட வெப்ப திறன்",
					"1 கிலோகிராம் பொருளின் வெப்பநிலையை 1 K ஆல் உயர்த்த வெப்பம் தேவைப்படுகிறது"
				]
			],
			"years": []
		},
		"molar_heat_capacity_at_constant_volume": {
			"definition_in_different_languages": [
				[
					"molar heat capacity at constant volume",
					"Heat required to raise the temperature of 1 mole of gas by 1 K at constant volume"
				],
				[
					"定容摩尔热容量",
					"在恒定体积下升高1摩尔气体温度1K所需的热量"
				],
				[
					"kapasiti haba molar pada volum tetap",
					"Haba yang diperlukan untuk menaikkan suhu 1 mol gas pada volum tetap sebanyak 1 K"
				],
				[
					"நிலையான கன அளவில் மோலார் வெப்ப திறன்",
					"1 மோல் வாயுவின் வெப்பநிலையை நிலையான அளவில் 1 K ஆல் உயர்த்த வெப்பம் தேவைப்படுகிறது"
				]
			],
			"years": [2015, 2019]
		},
		"molar_heat_capacity_at_constant_pressure": {
			"definition_in_different_languages": [
				[
					"molar heat capacity at constant pressure",
					"Heat required to raise the temperature of 1 mole of gas by 1 K at constant pressure"
				],
				[
					"定压摩尔热容量",
					"在恒定压力下升高1摩尔气体温度1K所需的热量"
				],
				[
					"kapasiti haba molar pada tekanan tetap",
					"Haba yang diperlukan untuk menaikkan suhu 1 mol gas pada tekanan tetap sebanyak 1 K"
				],
				[
					"நிலையான அழுத்தத்தில் மோலார் வெப்ப திறன்",
					"நிலையான அழுத்தத்தில் 1 மோல் வாயுவின் வெப்பநிலையை 1 K ஆல் உயர்த்த தேவையான வெப்பம்"
				]
			],
			"years": [2019]
		},
		"first_law_of_thermodynamics": {
			"definition_in_different_languages": [
				[
					"first law of thermodynamics",
					"Heat energy supplied to a gas is equal to the increase in internal energy and the work done by the gas"
				],
				[
					"热力学第一定律",
					"向气体提供的热能等于内能的增加和气体所做的功"
				],
				[
					"hukum termodinamik pertama",
					"Tenaga haba yang dibekalkan kepada gas sama dengan peningkatan tenaga dalaman dan kerja yang dilakukan oleh gas"
				],
				[
					"வெப்ப இயக்கவியலின் முதல் விதி",
					"ஒரு வாயுவிற்கு வழங்கப்படும் வெப்ப ஆற்றல் உள் ஆற்றலின் அதிகரிப்புக்கும் வாயுவால் செய்யப்படும் வேலைக்கும் சமம்"
				]
			],
			"years": []
		},
		"reversible_process": {
			"definition_in_different_languages": [
				[
					"reversible process",
					"Process which can be made to retrace its path from one equilibrium point to another through small changes at every step"
				],
				[
					"可逆过程",
					"可以通过在每个步骤上进行小的改变来使其从一个平衡点重返其路径的过程"
				],
				[
					"proses boles",
					"Proses yang boleh dibuat untuk menjejaki semula laluan dari satu titik keseimbangan ke titik lain melalui perubahan kecil pada setiap langkah"
				],
				[
					"மீளக்கூடிய செயல்முறை",
					"ஒவ்வொரு அடியிலும் சிறிய மாற்றங்களின் மூலம் ஒரு சமநிலை புள்ளியிலிருந்து மற்றொரு இடத்திற்கு அதன் பாதையை மீட்டெடுக்கும் செயல்முறை"
				]
			],
			"years": []
		},
		"isothermal_change": {
			"definition_in_different_languages": [
				[
					"isothermal change",
					"A change of state of a fixed mass of gas at constant temperature"
				],
				[
					"等温变化",
					"固定质量气体在恒定温度下的状态变化"
				],
				[
					"perubahan isoterma",
					"Perubahan keadaan jisim tetap gas pada suhu tetap"
				],
				[
					"சமவெப்ப மாற்றம்",
					"நிலையான வெப்பநிலையில் ஒரு நிலையான வெகுஜன வாயுவின் நிலையின் மாற்றம்"
				]
			],
			"years": []
		},
		"adiabatic_change": {
			"definition_in_different_languages": [
				[
					"adiabatic change",
					"A change of state of a fixed mass of gas whereby no heat energy enters or leaves the gas system"
				],
				[
					"绝热变化",
					"固定质量气体的状态变化，其中没有热能进入或离开气体系统"
				],
				[
					"perubahan adiabatik",
					"Perubahan keadaan jisim tetap gas di mana tiada tenaga haba masuk atau keluar daripada sistem gas"
				],
				[
					"அடிபயாடிக் மாற்றம்",
					"ஒரு நிலையான வாயுவின் நிலை மாற்றம், இதன் மூலம் வாயு அமைப்பில் வெப்ப ஆற்றல் நுழையாது அல்லது வெளியேறாது"
				]
			],
			"years": []
		}
	},
	{
		"thermal_conductivity": {
			"definition_in_different_languages": [
				[
					"thermal conductivity",
					"Rate of flow of heat through unit area of cross-section per unit temperature gradient of material during the steady state"
				],
				[
					"热导率",
					"材料在稳态条件下单位横截面积温度梯度的热量流动速率"
				],
				[
					"konduktiviti termal",
					"Kadar aliran haba melalui kawasan keratan rentas perubahan suhu unit bahan semasa keadaan stabil"
				],
				[
					"வெப்ப கடத்துத்திறன்",
					"நிலையான நிலையின் போது பொருளின் ஒரு யூனிட் வெப்பநிலை சாய்வு ஒன்றுக்கு குறுக்கு வெட்டு அலகு பகுதி வழியாக வெப்ப ஓட்ட விகிதம்"
				]
			],
			"years": [2014]
		},
		"temperature_gradient": {
			"definition_in_different_languages": [
				[
					"temperature gradient",
					"Change in temperature per unit length"
				],
				[
					"温度梯度",
					"单位长度的温度变化"
				],
				[
					"gred suhu",
					"Perubahan suhu per unit panjang"
				],
				[
					"வெப்பநிலை சாய்வு",
					"ஒரு யூனிட் நீளத்திற்கு வெப்பநிலையில் மாற்றம்"
				]
			],
			"years": []
		},
		"steady_state": {
			"definition_in_different_languages": [
				[
					"steady state",
					"Condition whereby every point along a conductor has achieved a fixed temperature"
				],
				[
					"稳态",
					"导体沿其长度的每一点都达到固定温度的条件"
				],
				[
					"keadaan stabil",
					"Keadaan di mana setiap titik sepanjang penghantar telah mencapai suhu tetap"
				],
				[
					"நிலையான நிலை",
					"கடத்தியில் உள்ள ஒவ்வொரு புள்ளியும் ஒரு நிலையான வெப்பநிலையை அடையும் நிலை"
				]
			],
			"years": []
		},
		"convection": {
			"definition_in_different_languages": [
				[
					"convection",
					"Process in which heat is transferred from place to place by the bulk movement of fluid"
				],
				[
					"对流",
					"通过流体的大量运动传递热量的过程"
				],
				[
					"konveksi",
					"Proses di mana haba dipindahkan dari satu tempat ke tempat lain melalui pergerakan besar bendalir"
				],
				[
					"வெப்பச்சலனம்",
					"திரவத்தின் மொத்த இயக்கத்தால் வெப்பம் இடத்திலிருந்து இடத்திற்கு மாற்றப்படும் செயல்முறை"
				]
			],
			"years": []
		},
		"forced_convection": {
			"definition_in_different_languages": [
				[
					"forced convection",
					"External device is used to maintain the flow of fluid in a steady stream"
				],
				[
					"强制对流",
					"使用外部设备维持流体的稳定流动"
				],
				[
					"konveksi paksa",
					"Peranti luar digunakan untuk mengekalkan aliran bendalir secara stabil"
				],
				[
					"கட்டாய வெப்பச்சலனம்",
					"ஒரு நிலையான நீரோட்டத்தில் திரவ ஓட்டத்தை பராமரிக்க வெளிப்புற சாதனம் பயன்படுத்தப்படுகிறது"
				]
			],
			"years": []
		},
		"radiation": {
			"definition_in_different_languages": [
				[
					"radiation",
					"Process in which heat energy is transferred by means of electromagnetic waves"
				],
				[
					"辐射",
					"通过电磁波传递热能的过程"
				],
				[
					"pemancaran",
					"Proses di mana tenaga haba dipindahkan melalui gelombang elektromagnetik"
				],
				[
					"கதிர்வீச்சு",
					"மின்காந்த அலைகள் மூலம் வெப்ப ஆற்றல் பரிமாற்றப்படும் செயல்முறை"
				]
			],
			"years": []
		},
		"black_body": {
			"definition_in_different_languages": [
				[
					"black body",
					"Body which absorbs all the radiations of every wavelength which is incident on it"
				],
				[
					"黑体",
					"吸收其表面的所有波长的辐射的物体"
				],
				[
					"badan hitam",
					"Badan yang menyerap semua radiasi setiap panjang gelombang yang jatuh padanya"
				],
				[
					"கருப்பு உடல்",
					"அதன் மீது ஏற்படும் ஒவ்வொரு அலைநீளத்தின் அனைத்து கதிர்வீச்சுகளையும் உறிஞ்சும் உடல்"
				]
			],
			"years": []
		},
		"perfectly_black_body": {
			"definition_in_different_languages": [
				[
					"perfectly black body",
					"One that absorbs totally all the radiations of any wavelength which falls on it"
				],
				[
					"完全黑体",
					"完全吸收任何波长的辐射的物体"
				],
				[
					"badan hitam sempurna",
					"Badan yang menyerap sepenuhnya semua radiasi apa pun panjang gelombang yang jatuh padanya"
				],
				[
					"சரியான கருப்பு உடல்",
					"அதன் மீது விழும் எந்த அலைநீளத்தின் அனைத்து கதிர்வீச்சுகளையும் முழுமையாக உறிஞ்சும் ஒன்று"
				]
			],
			"years": []
		},
		"emissivity": {
			"definition_in_different_languages": [
				[
					"emissivity",
					"Relative ability of its surface to emit energy by radiation"
				],
				[
					"发射率",
					"表面辐射能力的相对能力"
				],
				[
					"emisiviti",
					"Keupayaan relatif permukaannya untuk menyebarkan tenaga melalui pemancaran"
				],
				[
					"உமிழ்வு",
					"கதிர்வீச்சு மூலம் ஆற்றலை வெளியிடும் அதன் மேற்பரப்பின் ஒப்பீட்டு திறன்"
				]
			],
			"years": []
		},
		"black_body_radiation": {
			"definition_in_different_languages": [
				[
					"black body radiation",
					"Electromagnetic radiation within or surrounding a body in thermodynamic equilibrium with its surroundings or emitted by a black body held at constant, uniform temperature"
				],
				[
					"黑体辐射",
					"与其周围处于热力学平衡的物体内或周围的电磁辐射，或由保持在恒定、均匀温度的黑体发射的"
				],
				[
					"pemancaran badan hitam",
					"Pemancaran radiasi elektromagnetik dalam atau sekitar badan dalam keseimbangan termodinamik dengan persekitarannya atau dipancarkan oleh badan hitam yang dipegang pada suhu mantap dan seragam"
				],
				[
					"கருப்பு உடல் கதிர்வீச்சு",
					"சுற்றுச்சூழலுடன் வெப்ப இயக்கவியல் சமநிலையில் உள்ள ஒரு உடலுக்குள் அல்லது அதைச் சுற்றியுள்ள மின்காந்த கதிர்வீச்சு அல்லது நிலையான, சீரான வெப்பநிலையில் வைத்திருக்கும் கருப்பு உடலால் உமிழப்படும்"
				]
			],
			"years": []
		},
		"stefan-boltzmann_law": {
			"definition_in_different_languages": [
				[
					"stefan-boltzmann law",
					"The total energy radiated per unit surface area of a black body per unit time is directly proportional to the fourth power of the black body's absolute temperature and surface area of radiating object"
				],
				[
					"斯特藩-玻尔兹曼定律",
					"黑体单位表面积单位时间辐射的总能量与黑体的绝对温度和辐射物体的表面积成正比"
				],
				[
					"hukum stefan-boltzmann",
					"Tenaga total yang dipancarkan setiap unit luas permukaan badan hitam setiap unit masa secara langsung berkadar dengan kuasa keempat suhu mutlak badan hitam dan luas permukaan objek yang memancarkan"
				],
				[
					"ஸ்டீபன்-போல்ட்ஸ்மேன் சட்டம்",
					"ஒரு யூனிட் நேரத்திற்கு ஒரு கருப்பு உடலின் ஒரு யூனிட் பரப்பளவிற்கு கதிர்வீச்சு செய்யப்படும் மொத்த ஆற்றல் கருப்பு உடலின் முழுமையான வெப்பநிலை மற்றும் கதிர்வீச்சு பொருளின் பரப்பளவு ஆகியவற்றின் நான்காவது சக்திக்கு நேரடியாக விகிதாசாரமாகும்"
				]
			],
			"years": []
		},
		"greenhouse_effect": {
			"definition_in_different_languages": [
				[
					"greenhouse effect",
					"Process by which thermal radiation from the Earth's surface is absorbed by the atmosphere greenhouse gases and is re-radiated in all directions"
				],
				[
					"温室效应",
					"地球表面的热辐射被大气层中的温室气体吸收，并以所有方向重新辐射"
				],
				[
					"kesan rumah hijau",
					"Proses di mana radiasi haba dari permukaan Bumi diserap oleh gas rumah hijau dalam atmosfera dan dipancarkan semula ke semua arah"
				],
				[
					"கிரீன்ஹவுஸ் விளைவு",
					"பூமியின் மேற்பரப்பில் இருந்து வரும் வெப்பக் கதிர்வீச்சு வளிமண்டல பசுமை இல்ல வாயுக்களால் உறிஞ்சப்பட்டு அனைத்து திசைகளிலும் மீண்டும் கதிர்வீச்சு செய்யப்படும் செயல்முறை"
				]
			],
			"years": []
		}
	}
]
var chapter_index: int = 0
var specific_definition: String = ""
var preview_index: int = 0
var all_physics_definitions: Dictionary = {}

func _ready():
	for chapter in physics_definitions:
		for definition in chapter:
			all_physics_definitions[definition] = chapter[definition]["definition_in_different_languages"]

func _process(_delta):
	if Input.is_action_just_pressed("fullscreen"):
		if DisplayServer.window_get_mode() != DisplayServer.WINDOW_MODE_FULLSCREEN:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		else:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
