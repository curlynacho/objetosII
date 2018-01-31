class Alumno
  attr_reader :nombre, :notas
  def initialize(nombre, notas)
    @nombre = nombre
    @notas = notas
  end
  def promedio
    @notas.sum / @notas.length.to_f
    end
end

alumnos = []
alumnos.push(Alumno.new('Federico', [5, 7, 3, 6]))
alumnos.push(Alumno.new('Juan', [3, 1, 3, 4]))
alumnos.push(Alumno.new('Jose', [5, 7, 7, 7]))
alumnos.push(Alumno.new('Hernan', [4, 7, 3, 5]))

#pronedio del curso
notas_curso = []
alumnos.each do |alumno|
  notas_curso += alumno.notas
end

prom = notas_curso.sum / notas_curso.length.to_f

puts  "El promedio del curso es #{prom}."

#promedio mas alto

prom = 0
nombre = ''
alumnos.each do |alumno|
  if alumno.promedio > prom
    prom = alumno.promedio
    nombre = alumno.nombre
  end
end

puts "El mejor promedio es de #{nombre} con promedio #{prom}"
