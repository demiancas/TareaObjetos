import Tarea.*

test "Horacio Pagani comienza con 100 de nivel de enojo" {
assert.equals(100,horacioPagani.nivelDeEnojo())
}

test "Horacio Pagani eleva la voz y su nivel de enojo es 110" {
horacioPagani.elevarVoz()
assert.equals(110,horacioPagani.nivelDeEnojo())
}

test "Horacio Pagani toma agua 1 vez, y su nivel de enojo queda en 90"{
horacioPagani.tomarAgua()
assert.equals(90,horacioPagani.nivelDeEnojo())
}

test "Horacio Pagani esta caliente ya que su nivel de enojo (100) es mayor a 20"{
assert.that(horacioPagani.estaCaliente())
}

test "Horacio Pagani se calma 10 minutos pero ya esta caliente, por lo tanto, no modifica su nivel de enojo"{
horacioPagani.calmarse(10)
assert.equals(100,horacioPagani.nivelDeEnojo())
}


test "Toti Pasman comienza con 10 de soberbia" {
assert.equals(10,totiPasman.soberbia())
}

test "Toti Pasman eleva la voz y su soberbia queda en 20"{
totiPasman.elevarVoz()
assert.equals(20,totiPasman.soberbia())
}

test "Toti Pasman eleva la voz por lo que tiene sed"{
totiPasman.elevarVoz()
assert.that(totiPasman.tieneSed())
}

test "Toti Pasman toma agua y deja de tener sed"{
totiPasman.tomarAgua()
assert.that(!totiPasman.tieneSed())
}

test "Toti Pasman se calma 2 minutos y su soberbia queda en 6"{
totiPasman.calmarse(2)
assert.equals(6,totiPasman.soberbia())
}

test "Toti Pasman se calma 6 minutos y su soberbia queda en 0"{
totiPasman.calmarse(6)
assert.equals(0,totiPasman.soberbia())
}


test "Lizzy Tagliani comienza con 10 de humor"{
assert.equals(10,lizzyTagliani.humor())
}
test "Lizzy Tagliani eleva la voz y su humor no se modifica"{
lizzyTagliani.elevarVoz()
assert.equals(10,lizzyTagliani.humor())
}
test "Lizzy Tagliani toma un vaso de agua y su humor es 20"{
lizzyTagliani.tomarAgua()
assert.equals(20,lizzyTagliani.humor())
}
test "Lizzy Tagliani no esta de mal humor ya que su humor es mayor a 0"{
assert.that(!lizzyTagliani.estaDeMalhumor())
}
test "Lizzy Tagliani se calma 10 minutos, pero como no estaba de mal humor, su humor sigue siendo 10"{
lizzyTagliani.calmarse(10)
assert.equals(10,lizzyTagliani.humor())
}