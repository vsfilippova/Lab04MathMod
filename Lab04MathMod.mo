//Вариант 55

model Lab04MathMod
//Параметры осциллятора: x'' + g* x' + w^2* x = f(t)


// 1 случай: без затуханий и без действий внешней силы 
parameter Real w1= sqrt(8.8); //Частота 
parameter Real g1=0.0; //Затухание 

//Начальные условия: 
parameter Real x0 = 0.8;
parameter Real y0 = 0.9;

Real x1 (start=x0);
Real y1 (start=y0);

function funk1
input Real t;
output Real res1;
algorithm
res1:=0;
end funk1;

//2 случай: c затуханием и без действий внешней силы
parameter Real w2= sqrt(2.8);
parameter Real g2=4.7;
Real x2 (start=x0);
Real y2 (start=y0);

function funk2
input Real t;
output Real res2;
algorithm
res2:=0;
end funk2;

//3 случай: c затуханием и под действием внешней силы
parameter Real w3= sqrt(4);
parameter Real g3=5;
Real x3 (start=x0);
Real y3 (start=y0);
function funk3
input Real t;
output Real res3;
algorithm
res3:=3*cos(0.7*t);
end funk3;

equation
//1 случай
der(x1)=y1;
der(y1)=-w1*w1*x1-g1*y1-funk1(time);
//2 случай
der(x2)=y2;
der(y2)=-w2*w2*x2-g2*y2-funk2(time);
//3 случай
der(x3)=y3;
der(y3)=-w3*w3*x3-g3*y3-funk3(time);


end Lab04MathMod;
