#!/usr/bin/python3

#BT.601-6
#tv_range: Y~(16-235) U~(16-240) V~(16-240)
#full_range: Y/U/V ~(0-255)
#float,full range
#R = Y + 1.4075 * (V - 128)
#G = Y - 0.3455 * (U - 128) - 0.7169 * (V - 128)
#B = Y + 1.779  * (U - 128)
#Y = 0.299 * R + 0.587 * G + 0.114 * B
#U = (B - Y) / 1.772
#V = (R - Y) / 1.402 
#Y =  0.299*R + 0.587*G + 0.114*B;
#U = -0.169*R - 0.331*G + 0.5  *B + 128;     ×¢£º +128 µÄº¬ÒåÊÇÈÃUVµÄ·¶Î§´¦ÓÚÕûÊýÇø¼ä£¨0-255£©
#V =  0.5  *R - 0.419*G - 0.081*B + 128;

def inrange(num,lower,upper):
  assert lower <= upper,"lower must small than upper"
  if num >= lower and num <= upper:
    return True
  else:
    return False

def YUV2RGB(Y,U,V):
  assert inrange(Y,16,235),"Y not in range"
  assert inrange(U,16,240),"U not in range"
  assert inrange(V,16,240),"V not in range"
  R = Y + 1.4075 * (V - 128)
  G = Y - 0.3455 * (U - 128) - 0.7169 * (V - 128)
  B = Y + 1.779  * (U - 128)
  return R,G,B

def RGB2YUV(R,G,B):
  Y = 0.299 * R + 0.587 * G + 0.114 * B
  U = (B - Y) / 1.772
  V = (R - Y) / 1.402 
  assert inrange(U,-128,127)
  return Y,U,V

#ÕûÊýÐÎÊ½£¨¼õÉÙ¼ÆËãÁ¿£©full range
#integer,full name
#R= Y + ((360 * (V - 128))>>8) ; 
#G= Y - (( ( 88 * (U - 128)  + 184 * (V - 128)) )>>8) ; 
#B= Y +((455 * (U - 128))>>8) ;
#Y = (77*R + 150*G + 29*B)>>8;
#U = ((131*R - 110*G - 21*B)>>8) + 128 ;
#V = ((-44*R  - 87*G  - 131*B)>>8) + 128;

def YUV2RGB(Y,U,V):
  R = Y + ((360 * (V - 128)))
  G = Y - (((88 * (U - 128) + 184 * (V - 128)))>>8)
  B = Y + ((455 * (U - 128))>>8)
  return R,G,B

def RGB2YUV(R,G,B):
  Y = (77*R + 150*G + 29*B)>>8
  U = ((131*R - 110*G - 21*B)>>8) + 128
  V = ((-44*R - 87*G - 131*B)>>8) + 128
  return Y,U,V

# Á¿»¯ºóµÄ¹«Ê½( Y~(16,235)  U/V ~(16,240)) tv range
#yuv --> rgb
#R = 1.155*Y + 1.605 * V - 224
#G = 1.168*Y - 0.393 * U - 0.823 * V+ 135.7
#B = 1.168*Y + 2.028 * U- 277.8 
#rgb --> yuv 
#Y = (66*R + 128*G + 25*B)>>8 + 16
#U = (112*R - 94*G - 18*B)>>8 + 128
#V = (-38*R - 74*G + 112*B)>>8 +128

def YUV2RGB(Y,U,V):
  R = 1.155*Y + 1.605 * V - 224
  G = 1.168*Y - 0.393 * U - 0.823 * V + 135.7
  B = 1.168*Y + 2.028 * U - 277.8 
  return R,G,B

def RGB2YUV(R,G,B):
  Y = (66*R + 128*G + 25*B)>>8 + 16
  U = (112*R - 94*G - 18*B)>>8 + 128
  V = (-38*R - 74*G + 112*B)>>8 +128
  return Y,U,V



