#include <iostream>

class Base {
public:
   Base() {
       fn();
       msg = "base";
   }

   virtual void fn() {
       std::cout << "Base: " << this->msg << std::endl;
   }

   virtual ~Base() {}

protected:
   std::string msg;
};

class Derived : public Base {
public:
   Derived() {
       msg = "derived";
   }

   void fn() {
       std::cout << "Derived: " << this->msg << std::endl;
   }
};

int main() {
   Derived d;
   return 0;
}
