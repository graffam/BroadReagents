# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Machine.create(machinename: 'HS2500')
Machine.create(machinename: 'HSX')
Machine.create(machinename: 'NextSeq')
Machine.create(machinename: 'HS2000V3')

#Create kits for HS2500
Kit.create(kitname: "58c")#1
Kit.create(kitname: "66c")#2
Kit.create(kitname: "160c")#3
Kit.create(kitname: "168c")#4
Kit.create(kitname: "202c")#5
Kit.create(kitname: "210c")#6
Kit.create(kitname: "218c")#7
Kit.create(kitname: "266c")#8
Kit.create(kitname: "316c")#9
Kit.create(kitname: "508c")#10
Kit.create(kitname: "516c")#11
Kit.create(kitname: "cBotV1")#12
#Relates kits to HS2500
Mkc.create(machine_id: 1, kit_id:1)
Mkc.create(machine_id: 1, kit_id:2)
Mkc.create(machine_id: 1, kit_id:3)
Mkc.create(machine_id: 1, kit_id:4)
Mkc.create(machine_id: 1, kit_id:5)
Mkc.create(machine_id: 1, kit_id:6)
Mkc.create(machine_id: 1, kit_id:7)
Mkc.create(machine_id: 1, kit_id:8)
Mkc.create(machine_id: 1, kit_id:9)
Mkc.create(machine_id: 1, kit_id:10)
Mkc.create(machine_id: 1, kit_id:11)
Mkc.create(machine_id: 1, kit_id:12)
#Create Kits for HSX
Kit.create(kitname: "cBotV2")#13
Kit.create(kitname: "310c")#14
Kit.create(kitname: "Rehyb R1")#15
Kit.create(kitname: "PE R2")#16
#Relates kits to HSX
Mkc.create(machine_id: 2, kit_id:12)
Mkc.create(machine_id: 2, kit_id:13)
Mkc.create(machine_id: 2, kit_id:4)
Mkc.create(machine_id: 2, kit_id:14)
Mkc.create(machine_id: 2, kit_id:11)
Mkc.create(machine_id: 2, kit_id:15)
Mkc.create(machine_id: 2, kit_id:16)
#Create kits for NextSeq
Kit.create(kitname: "NEXTSEQ75")#17
Kit.create(kitname: "NEXTSEQ150")#18
Kit.create(kitname: "NEXSEQ300")#19
#Relates kits to NextSeq
Mkc.create(machine_id: 3, kit_id:17)
Mkc.create(machine_id: 3, kit_id:18)
Mkc.create(machine_id: 3, kit_id:19)
#Ceate kits for HS2000V3
Kit.create(kitname: "44cSR")#20
Kit.create(kitname: "Rehyb R1Kit")#21
Kit.create(kitname: "Index Primer Box R1& PE R2")#22
#Relates kits to HS2000V3
Mkc.create(machine_id: 4, kit_id:12)
Mkc.create(machine_id: 4, kit_id:20)
Mkc.create(machine_id: 4, kit_id:1)
Mkc.create(machine_id: 4, kit_id:3)
Mkc.create(machine_id: 4, kit_id:4)
Mkc.create(machine_id: 4, kit_id:5)
Mkc.create(machine_id: 4, kit_id:6)
Mkc.create(machine_id: 4, kit_id:7)
Mkc.create(machine_id: 4, kit_id:21)
Mkc.create(machine_id: 4, kit_id:22)
