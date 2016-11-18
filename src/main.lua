local function main()
print("hello world")
end
main()
--循环
for a= 1,10
    do
   print(a)
end
--var
Name=0
if name==nil 
then
name=1
print("大小写"..name)

else
Name=2;
print(name)
end
--if

-- Meta class
Rectangle = {area = 0, length = 0, breadth = 0}

-- 派生类的方法 new
function Rectangle:new (o,length,breadth)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  self.length = length or 0
  self.breadth = breadth or 0
  self.area = length*breadth;
  return o
end

-- 派生类的方法 printArea
function Rectangle:printArea ()
  print("矩形面积为 ",self.area)
end


b={length=1}
function b:new()
 o = o or {}
  b=setmetatable(o, self)
  print(b)
  print(self)
  self.__index = self
  --self.length = length or 0
  print(self.length)
end
b:new()