# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
hs2500 = Machine.create(name: 'HS2500')
hsx = Machine.create(name: 'HSX')
nextSeq = Machine.create(name: 'NextSeq')
hs200v3 = Machine.create(name: 'HS2000V3')

#Create kits for HS2500
Kit.create(name: "58c")#1
Kit.create(name: "66c")#2
Kit.create(name: "160c")#3
Kit.create(name: "168c")#4
Kit.create(name: "202c")#5
Kit.create(name: "210c")#6
Kit.create(name: "218c")#7
Kit.create(name: "266c")#8
Kit.create(name: "316c")#9
Kit.create(name: "508c")#10
Kit.create(name: "516c")#11
Kit.create(name: "cBotV1")#12
#Relates kits to HS2500
MachineKitCompatibility.create(machine_id: hs2500.id, kit_id:1)
MachineKitCompatibility.create(machine_id: hs2500.id, kit_id:2)
MachineKitCompatibility.create(machine_id: hs2500.id, kit_id:3)
MachineKitCompatibility.create(machine_id: hs2500.id, kit_id:4)
MachineKitCompatibility.create(machine_id: hs2500.id, kit_id:5)
MachineKitCompatibility.create(machine_id: hs2500.id, kit_id:6)
MachineKitCompatibility.create(machine_id: hs2500.id, kit_id:7)
MachineKitCompatibility.create(machine_id: hs2500.id, kit_id:8)
MachineKitCompatibility.create(machine_id: hs2500.id, kit_id:9)
MachineKitCompatibility.create(machine_id: hs2500.id, kit_id:10)
MachineKitCompatibility.create(machine_id: hs2500.id, kit_id:11)
MachineKitCompatibility.create(machine_id: hs2500.id, kit_id:12)
#Create Kits for HSX
Kit.create(name: "cBotV2")#13
Kit.create(name: "310c")#14
Kit.create(name: "Rehyb R1")#15
Kit.create(name: "PE R2")#16
#Relates kits to HSX
MachineKitCompatibility.create(machine_id: hsx.id, kit_id:12)
MachineKitCompatibility.create(machine_id: hsx.id, kit_id:13)
MachineKitCompatibility.create(machine_id: hsx.id, kit_id:4)
MachineKitCompatibility.create(machine_id: hsx.id, kit_id:14)
MachineKitCompatibility.create(machine_id: hsx.id, kit_id:11)
MachineKitCompatibility.create(machine_id: hsx.id, kit_id:15)
MachineKitCompatibility.create(machine_id: hsx.id, kit_id:16)
#Create kits for NextSeq
Kit.create(name: "NEXTSEQ75")#17
Kit.create(name: "NEXTSEQ150")#18
Kit.create(name: "NEXSEQ300")#19
#Relates kits to NextSeq
MachineKitCompatibility.create(machine_id: nextSeq.id, kit_id:17)
MachineKitCompatibility.create(machine_id: nextSeq.id, kit_id:18)
MachineKitCompatibility.create(machine_id: nextSeq.id, kit_id:19)
#Ceate kits for HS2000V3
Kit.create(name: "44cSR")#20
Kit.create(name: "Rehyb R1Kit")#21
Kit.create(name: "Index Primer Box R1& PE R2")#22
#Relates kits to HS2000V3
MachineKitCompatibility.create(machine_id: hs200v3.id, kit_id:12)
MachineKitCompatibility.create(machine_id: hs200v3.id, kit_id:20)
MachineKitCompatibility.create(machine_id: hs200v3.id, kit_id:1)
MachineKitCompatibility.create(machine_id: hs200v3.id, kit_id:3)
MachineKitCompatibility.create(machine_id: hs200v3.id, kit_id:4)
MachineKitCompatibility.create(machine_id: hs200v3.id, kit_id:5)
MachineKitCompatibility.create(machine_id: hs200v3.id, kit_id:6)
MachineKitCompatibility.create(machine_id: hs200v3.id, kit_id:7)
MachineKitCompatibility.create(machine_id: hs200v3.id, kit_id:21)
MachineKitCompatibility.create(machine_id: hs200v3.id, kit_id:22)
