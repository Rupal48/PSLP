clear; clc
n=input("Enter total no of points : ")
for i=1:1:n
	x(i)=input("Enter value of x : ")
	y(i)=input("Enter value of y : ")
    xx(i)=(x(i)*x(i))
	xy(i)=(x(i)*y(i))
    plot(x(i),y(i),".", "markersize", 10)
end
A=[n sum(x);sum(x) sum(xx)]
B=[sum(y);sum(xy)]
solution=inv(A)*B
disp("The equation of the line has slope m = ",solution(2),"y-intercept c = ",solution(1))
function yg=myquadratic(xg)
yg=solution(2)*xg+solution(1)
endfunction
xg=-20:0.8:20
yg=myquadratic(xg)
plot(xg,yg)
