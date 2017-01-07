#Produto Vetorial (equação do plano) através de 3 pontos
def pontos
  # Ponto A (ax, ay, az)
  puts "Ponto A"
  puts "x:"
  ax = gets.chomp.to_i
  puts "y:"
  ay = gets.chomp.to_i
  puts "z:"
  az = gets.chomp.to_i
  system("clear")
  # Ponto B (bx, by, bz)
  puts "Ponto B"
  puts "x:"
  bx = gets.chomp.to_i
  puts "y:"
  by = gets.chomp.to_i
  puts "z:"
  bz = gets.chomp.to_i
  system("clear")
  # Ponto C (cx, cy, cz)
  puts "Ponto C"
  puts "x:"
  cx = gets.chomp.to_i
  puts "y:"
  cy = gets.chomp.to_i
  puts "z:"
  cz = gets.chomp.to_i
  system("clear")
  return az, ay, ax, bz, by, bx, cz, cy, cx
end

def vetor(az, ay, ax, bz, by, bx, cz, cy, cx)
  #Vetor AB
  a1 = bx - ax #a1
  b1 = by - ay #b1
  c1 = bz - az #c1
  puts "Vetor AB (#{a1}, #{b1}, #{c1})"
  #Vetor AC
  a2 = cx - ax #a2
  b2 = cx - ay #b2
  c2 = cz - az #c2
  puts "Vetor AC (#{a2}, #{b2}, #{c2})"
  return a1, b1, c1, a2, b2, c2
end

def laplace(a1, b1, c1, a2, b2, c2, az, ay, ax)
  # Laplace
  x1 = b1 * c2
  y1 = c1 * a2
  z1 = a1 * b2
  x2 = c1 * b2
  y2 = a1 * c2
  z2 = b1 * a2

  #Vetor normal
  x = x1 - (x2)
  y = y1 - (y2)
  z = z1 - (z2)

  puts "Vetor normal, n(#{x}, #{y}, #{z})"

  # Calculo d e Equação do Plano
  d = -(x * ax + y * ay + z * az)

  puts "Equação do Plano: #{x}x+#{y}y+#{z}z+#{d}=0"
end

# Metodo para funcionar o programa, igualar o return ao def pontos
az, ay, ax, bz, by, bx, cz, cy, cx = pontos
# Metodo para funcionar o programa, igualar o return ao def vetor
a1, b1, c1, a2, b2, c2 = vetor(az, ay, ax, bz, by, bx, cz, cy, cx)
laplace(a1, b1, c1, a2, b2, c2, az, ay, ax)
