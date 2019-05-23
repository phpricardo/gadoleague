punctuations = [
  ['Digital da Mulher no Celular', 15],
  ['Senha do celular', 7],
  ['Escrita de amor no contato do celular', 2],
  ['Mulher ligar para amigo para falar com ele', 10],
  ['Escrita de amor e icone de coração no contato', 3]
]

punctuations.each do |description, points|
  Punctuation.create!(description: description, points: points)
end
