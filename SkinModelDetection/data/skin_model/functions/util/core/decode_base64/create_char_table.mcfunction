#> skin_model:util/core/decode_base64/create_char_table
# @within function skin_model:util/core/decode_base64/_

data modify storage skin_model:temp r.A set value [B; 0b, 0b, 0b, 0b, 0b, 0b]
data modify storage skin_model:temp r.B set value [B; 0b, 0b, 0b, 0b, 0b, 1b]
data modify storage skin_model:temp r.C set value [B; 0b, 0b, 0b, 0b, 1b, 0b]
data modify storage skin_model:temp r.D set value [B; 0b, 0b, 0b, 0b, 1b, 1b]
data modify storage skin_model:temp r.E set value [B; 0b, 0b, 0b, 1b, 0b, 0b]
data modify storage skin_model:temp r.F set value [B; 0b, 0b, 0b, 1b, 0b, 1b]
data modify storage skin_model:temp r.G set value [B; 0b, 0b, 0b, 1b, 1b, 0b]
data modify storage skin_model:temp r.H set value [B; 0b, 0b, 0b, 1b, 1b, 1b]
data modify storage skin_model:temp r.I set value [B; 0b, 0b, 1b, 0b, 0b, 0b]
data modify storage skin_model:temp r.J set value [B; 0b, 0b, 1b, 0b, 0b, 1b]
data modify storage skin_model:temp r.K set value [B; 0b, 0b, 1b, 0b, 1b, 0b]
data modify storage skin_model:temp r.L set value [B; 0b, 0b, 1b, 0b, 1b, 1b]
data modify storage skin_model:temp r.M set value [B; 0b, 0b, 1b, 1b, 0b, 0b]
data modify storage skin_model:temp r.N set value [B; 0b, 0b, 1b, 1b, 0b, 1b]
data modify storage skin_model:temp r.O set value [B; 0b, 0b, 1b, 1b, 1b, 0b]
data modify storage skin_model:temp r.P set value [B; 0b, 0b, 1b, 1b, 1b, 1b]
data modify storage skin_model:temp r.Q set value [B; 0b, 1b, 0b, 0b, 0b, 0b]
data modify storage skin_model:temp r.R set value [B; 0b, 1b, 0b, 0b, 0b, 1b]
data modify storage skin_model:temp r.S set value [B; 0b, 1b, 0b, 0b, 1b, 0b]
data modify storage skin_model:temp r.T set value [B; 0b, 1b, 0b, 0b, 1b, 1b]
data modify storage skin_model:temp r.U set value [B; 0b, 1b, 0b, 1b, 0b, 0b]
data modify storage skin_model:temp r.V set value [B; 0b, 1b, 0b, 1b, 0b, 1b]
data modify storage skin_model:temp r.W set value [B; 0b, 1b, 0b, 1b, 1b, 0b]
data modify storage skin_model:temp r.X set value [B; 0b, 1b, 0b, 1b, 1b, 1b]
data modify storage skin_model:temp r.Y set value [B; 0b, 1b, 1b, 0b, 0b, 0b]
data modify storage skin_model:temp r.Z set value [B; 0b, 1b, 1b, 0b, 0b, 1b]
data modify storage skin_model:temp r.a set value [B; 0b, 1b, 1b, 0b, 1b, 0b]
data modify storage skin_model:temp r.b set value [B; 0b, 1b, 1b, 0b, 1b, 1b]
data modify storage skin_model:temp r.c set value [B; 0b, 1b, 1b, 1b, 0b, 0b]
data modify storage skin_model:temp r.d set value [B; 0b, 1b, 1b, 1b, 0b, 1b]
data modify storage skin_model:temp r.e set value [B; 0b, 1b, 1b, 1b, 1b, 0b]
data modify storage skin_model:temp r.f set value [B; 0b, 1b, 1b, 1b, 1b, 1b]
data modify storage skin_model:temp r.g set value [B; 1b, 0b, 0b, 0b, 0b, 0b]
data modify storage skin_model:temp r.h set value [B; 1b, 0b, 0b, 0b, 0b, 1b]
data modify storage skin_model:temp r.i set value [B; 1b, 0b, 0b, 0b, 1b, 0b]
data modify storage skin_model:temp r.j set value [B; 1b, 0b, 0b, 0b, 1b, 1b]
data modify storage skin_model:temp r.k set value [B; 1b, 0b, 0b, 1b, 0b, 0b]
data modify storage skin_model:temp r.l set value [B; 1b, 0b, 0b, 1b, 0b, 1b]
data modify storage skin_model:temp r.m set value [B; 1b, 0b, 0b, 1b, 1b, 0b]
data modify storage skin_model:temp r.n set value [B; 1b, 0b, 0b, 1b, 1b, 1b]
data modify storage skin_model:temp r.o set value [B; 1b, 0b, 1b, 0b, 0b, 0b]
data modify storage skin_model:temp r.p set value [B; 1b, 0b, 1b, 0b, 0b, 1b]
data modify storage skin_model:temp r.q set value [B; 1b, 0b, 1b, 0b, 1b, 0b]
data modify storage skin_model:temp r.r set value [B; 1b, 0b, 1b, 0b, 1b, 1b]
data modify storage skin_model:temp r.s set value [B; 1b, 0b, 1b, 1b, 0b, 0b]
data modify storage skin_model:temp r.t set value [B; 1b, 0b, 1b, 1b, 0b, 1b]
data modify storage skin_model:temp r.u set value [B; 1b, 0b, 1b, 1b, 1b, 0b]
data modify storage skin_model:temp r.v set value [B; 1b, 0b, 1b, 1b, 1b, 1b]
data modify storage skin_model:temp r.w set value [B; 1b, 1b, 0b, 0b, 0b, 0b]
data modify storage skin_model:temp r.x set value [B; 1b, 1b, 0b, 0b, 0b, 1b]
data modify storage skin_model:temp r.y set value [B; 1b, 1b, 0b, 0b, 1b, 0b]
data modify storage skin_model:temp r.z set value [B; 1b, 1b, 0b, 0b, 1b, 1b]
data modify storage skin_model:temp r.0 set value [B; 1b, 1b, 0b, 1b, 0b, 0b]
data modify storage skin_model:temp r.1 set value [B; 1b, 1b, 0b, 1b, 0b, 1b]
data modify storage skin_model:temp r.2 set value [B; 1b, 1b, 0b, 1b, 1b, 0b]
data modify storage skin_model:temp r.3 set value [B; 1b, 1b, 0b, 1b, 1b, 1b]
data modify storage skin_model:temp r.4 set value [B; 1b, 1b, 1b, 0b, 0b, 0b]
data modify storage skin_model:temp r.5 set value [B; 1b, 1b, 1b, 0b, 0b, 1b]
data modify storage skin_model:temp r.6 set value [B; 1b, 1b, 1b, 0b, 1b, 0b]
data modify storage skin_model:temp r.7 set value [B; 1b, 1b, 1b, 0b, 1b, 1b]
data modify storage skin_model:temp r.8 set value [B; 1b, 1b, 1b, 1b, 0b, 0b]
data modify storage skin_model:temp r.9 set value [B; 1b, 1b, 1b, 1b, 0b, 1b]
data modify storage skin_model:temp r.+ set value [B; 1b, 1b, 1b, 1b, 1b, 0b]
data modify storage skin_model:temp r./ set value [B; 1b, 1b, 1b, 1b, 1b, 1b]
