class Carta
  attr_accessor :pinta, :valor
  def initialize(pinta, valor)
    @pinta = pinta
    @valor = valor
  end
end

pinta = %w[Diamante Corazon Pica Trebol]
valor = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K']

opcion = ''
while opcion != 'salir'
  puts '==================================================='
  puts 'Para jugar escriba "JUGAR" y generar 5 cartas'
  puts 'Para mostrar sus cartas escriba "MOSTRAR".'
  puts 'Para salir escriba "SALIR".'
  puts '==================================================='
  opcion = gets.chomp.downcase

  case opcion

  when 'jugar'
    system('clear')
    juego = []
    5.times do
      juego.push(Carta.new(pinta.sample, valor.sample))
    end
  when 'mostrar'
    system('clear')
    juego.each do |azar|
      puts "#{azar.pinta} #{azar.valor}"
    end
  when 'salir'
    system('clear')
    puts '================='
    puts 'Hasta pronto!!!'
    puts '================='
  else
    system('clear')
    puts 'Ingreese una opción válida!!'
  end
end
