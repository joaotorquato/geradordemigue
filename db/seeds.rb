# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# FactoryBot.create_list(:excuse, 10);
Excuse.create([{ text: 'To estacionando na P2' },
               { text: 'To estacionando na frente da casa do Vizão' },
               { text: 'Favor desconsiderar' },
               { text: 'Hoje tem jogo do grêmio osasco' },
               { text: 'Ow, desculpa ai, mó vergonha' },
               { text: 'Alagou a Autonomista' },
               { text: 'Alagou o Rochdale' },
               { text: 'Ta chovendo pra porra aqui no Rochdale' },
               { text: 'Hoje é dia de ficar com a família' },
               { text: 'To sem carro hoje' },
               { text: 'To sem grana' },
               { text: 'A ponte de osasco caiu' },
               { text: 'Melhor não mano, tem mó galera do Rochdale que vai lá' },
               { text: 'DESCUBRA' },
               { text: 'Foi mal, hoje vo no chupa teta...' },
               { text: 'É tudo culpa da mídia manipuladora, Globo e Veja!' },
               { text: 'Vo no jogo do palmeiras' },
               { text: 'O Lula ta aqui em casa hoje' },
               { text: 'To sem celular mano' }])
