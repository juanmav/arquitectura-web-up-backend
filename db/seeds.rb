# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Skydiver.create(name: 'JM')
Skydiver.create(name: 'Chino')
Skydiver.create(name: 'Lucho')
Skydiver.create(name: 'Ruben')
Skydiver.create(name: 'Santi')

Pilot.create(name: 'Lucas')
Pilot.create(name: 'Andres')
Pilot.create(name: 'Cristian')

Plane.create(domain: 'GRI')
Plane.create(domain: 'GYC')
Plane.create(domain: 'GSD')


Status.create(name: 'Preparando...')
Status.create(name: '5min...')
Status.create(name: 'Al avion!')
Status.create(name: 'En Vuelo')
Status.create(name: 'Realizado')
