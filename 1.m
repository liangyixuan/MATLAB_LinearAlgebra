%%三元线性方程组，画出表示的平面，颜色和透明度可指定%%
[x,y,z]=meshgrid(-1:0.1:1);
f1 = @(x,y,z) 2.*x+y+z-1;    %@：函数句柄/function_handle(@)：是一种间接调用函数的方式。
f2 = @(x,y,z) x+2.*y+z-1;
f3 = @(x,y,z) x+y+2.*z-1;
v1 = f1(x,y,z);v2 = f2(x,y,z);v3 = f3(x,y,z);
p1 = isosurface(x,y,z,v1,0);    %函数本身可画出图像，但前面加p=则不画出
%isosurface 等值面函数，调用格式：fv = isosurface(X,Y,Z,V,isovalue)，如果是画隐函数 v = f(x,y,z) = 0 的三维图形，那么等值面的数值为isovalue = 0。
p2 = isosurface(x,y,z,v2,0);
p3 = isosurface(x,y,z,v3,0);
h1 = patch(isosurface(x,y,z,v1,0)); 
%p是patch返回得到的句柄
h2 = patch(isosurface(x,y,z,v2,0));
h3 = patch(isosurface(x,y,z,v3,0));
isonormals(x,y,z,v1,h1)
%isonormals等值面法线函数，如果不设置法线的话，得到曲面在过渡地带看起来可能不是很光滑
isonormals(x,y,z,v2,h2)
isonormals(x,y,z,v3,h3)              
set(h1,'FaceColor','r','EdgeColor','none','facealpha',1);    %facealpha透明度设置，0,1分别为全透和不透，alpha（x）单独使用
set(h2,'FaceColor','g','EdgeColor','none','facealpha',1);
set(h3,'FaceColor','b','EdgeColor','none','facealpha',1);
xlabel('X');ylabel('Y');zlabel('Z');
axis equal;grid on;view(3)




%%同一颜色%%
[x,y,z]=meshgrid(-1:0.1:1);
f1 = @(x,y,z) 2.*x+y+z-1;
f2 = @(x,y,z) x+2.*y+z-1;
f3 = @(x,y,z) x+y+2.*z-1;
v1 = f1(x,y,z);v2 = f2(x,y,z);v3 = f3(x,y,z);
isosurface(x,y,z,v1,0);
isosurface(x,y,z,v2,0);
isosurface(x,y,z,v3,0);
xlabel('X');ylabel('Y');zlabel('Z');
axis equal;grid on;view(3)
alpha(0.6)
colormap（[1 0 0]）    %指定图像颜色




%%没有isonormals函数%%
[x,y,z]=meshgrid(-1:0.1:1);
f1 = @(x,y,z) 2.*x+y+z-1;
f2 = @(x,y,z) x+2.*y+z-1;
f3 = @(x,y,z) x+y+2.*z-1;
v1 = f1(x,y,z);v2 = f2(x,y,z);v3 = f3(x,y,z);
p1 = isosurface(x,y,z,v1,0);
p2 = isosurface(x,y,z,v2,0);
p3 = isosurface(x,y,z,v3,0);
patch(p1,'edgecolor','none','facecolor','r','facealpha',0.3);
patch(p2,'edgecolor','none','facecolor','r','facealpha',0.3);
patch(p3,'edgecolor','none','facecolor','r','facealpha',0.3);
xlabel('X');ylabel('Y');zlabel('Z');
axis equal;grid on;view(3)
