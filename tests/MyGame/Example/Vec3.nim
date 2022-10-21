#[ MyGame.Example.Vec3
  Automatically generated by the FlatBuffers compiler, do not modify.
  Or modify. I'm a message, not a cop.

  flatc version: 22.9.29

  Declared by  : 
  Rooting type : MyGame.Example.Monster ()
]#

import Color as MyGame_Example_Color
import Test as MyGame_Example_Test
import flatbuffers

type Vec3* = object of FlatObj
func x*(self: Vec3): float32 =
  return Get[float32](self.tab, self.tab.Pos + 0)
func `x=`*(self: var Vec3, n: float32): bool =
  return self.tab.Mutate(self.tab.Pos + 0, n)
func y*(self: Vec3): float32 =
  return Get[float32](self.tab, self.tab.Pos + 4)
func `y=`*(self: var Vec3, n: float32): bool =
  return self.tab.Mutate(self.tab.Pos + 4, n)
func z*(self: Vec3): float32 =
  return Get[float32](self.tab, self.tab.Pos + 8)
func `z=`*(self: var Vec3, n: float32): bool =
  return self.tab.Mutate(self.tab.Pos + 8, n)
func test1*(self: Vec3): float64 =
  return Get[float64](self.tab, self.tab.Pos + 16)
func `test1=`*(self: var Vec3, n: float64): bool =
  return self.tab.Mutate(self.tab.Pos + 16, n)
func test2*(self: Vec3): MyGame_Example_Color.Color =
  return MyGame_Example_Color.Color(Get[uint8](self.tab, self.tab.Pos + 24))
func `test2=`*(self: var Vec3, n: MyGame_Example_Color.Color): bool =
  return self.tab.Mutate(self.tab.Pos + 24, n)
func test3*(self: Vec3): MyGame_Example_Test.Test =
  return MyGame_Example_Test.Test(tab: Vtable(Bytes: self.tab.Bytes, Pos: self.tab.Pos + 26))
proc Vec3Create*(self: var Builder, x: float32, y: float32, z: float32, test1: float64, test2: MyGame_Example_Color.Color, test3_a: int16, test3_b: int8): uoffset =
  self.Prep(8, 32)
  self.Pad(2)
  self.Prep(2, 4)
  self.Pad(1)
  self.Prepend(test3_b)
  self.Prepend(test3_a)
  self.Pad(1)
  self.Prepend(test2)
  self.Prepend(test1)
  self.Pad(4)
  self.Prepend(z)
  self.Prepend(y)
  self.Prepend(x)
  return self.Offset()
