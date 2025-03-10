import crypt
print(crypt.crypt("tonmotdepasse", crypt.mksalt(crypt.METHOD_MD5)))
# $1$vrmrhdH4$o22tZhBJhCUbli1tVWkEl1sudo