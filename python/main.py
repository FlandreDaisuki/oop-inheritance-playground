class Base:
   def __init__(self):
       self.fn()
       self.msg = 'base'

   def fn(self):
       print('Base:', self.msg)

class Derived(Base):
   def __init__(self):
       super().__init__()
       self.msg = 'derived'

   def fn(self):
       print('Derived:', self.msg)

Derived()
