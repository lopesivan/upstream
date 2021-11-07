---
language: Maple
filename: learnmaple.maple
contributors:
    - ["mendozao", "http://github.com/mendozao"]
    - ["jamesscottbrown", "http://jamesscottbrown.com"]
    - ["Colton Kohnke", "http://github.com/voltnor"]
    - ["Claudson Martins", "http://github.com/claudsonm"]
---

MATLAB stands for MATrix LABoratory. It is a powerful numerical computing language commonly used in engineering and mathematics.

If you have any feedback please feel free to reach me at
[@the_ozzinator](https://twitter.com/the_ozzinator), or
[osvaldo.t.mendoza@gmail.com](mailto:osvaldo.t.mendoza@gmail.com).

```maple
#
# 1.1   Starting a MAPLE session
# 1.2   Different versions of MAPLE
# 1.3   Basic syntax
#
#
#
# MAPLE SESSION 1
#
>   105/25:
#
#
# MAPLE SESSION 2
#
>   105/25;
#
#
# MAPLE SESSION 3
#
>   105/25-1/5;
>   %+1/5;
>   %%;
#
#
# MAPLE SESSION 4
#
>   105/25
>   105/25;
#
#
# MAPLE SESSION 5
#
>   105/25
>   ;
#
#
# MAPLE SESSION 6
#
>   f:=%;
>   G:= -1/5;
>   f+g;
>   # Observe that Maple is case sensitive.
>   f+G;
#
# 1.4   Editing mistakes
#
#
#
# MAPLE SESSION 7
#
>   105/25
>   105/25;
#
#
# MAPLE SESSION 8
#
>   105/25;
#
# 1.5   Help
#
#
#
# MAPLE SESSION 9
#
>  ?evalf
#
# 1.6   A sample session and context menus
#
#
#
# MAPLE SESSION 10
#
>    Int(x/sqrt(1+x^4),x);
#
#
# MAPLE SESSION 11
#
>    Int(x/sqrt(1+x^4),x);
#
#
# MAPLE SESSION 12
#
>    Int(x/sqrt(1+x^4),x);
>    R0 := diff(Int(x/sqrt(1+x^4),x),x);
#
#
# MAPLE SESSION 13
#
>    Int(x/sqrt(1+x^4),x);
>    R1 := value(Int(x/sqrt(1+x^4),x));
>    R0 := diff(Int(x/sqrt(1+x^4),x),x);
#
#
# MAPLE SESSION 14
#
>    smartplot(R0);
#
# 1.7   Palettes
#
#
#
# MAPLE SESSION 15
#
#
#
# MAPLE SESSION 16
#
>   (105/25 - %?);
#
#
# MAPLE SESSION 17
#
#
#
# MAPLE SESSION 18
#
>   (105/25 - 1/5);
#
#
# MAPLE SESSION 19
#
>   (105/25 - 1/5);
#
# 1.8   Quitting MAPLE
#
#
#
# MAPLE SESSION 20
#
>   quit

```

## More on Matlab

* [The official website](http://www.mathworks.com/products/matlab/)
* [The official MATLAB Answers forum](http://www.mathworks.com/matlabcentral/answers/)
* [Loren on the Art of MATLAB](http://blogs.mathworks.com/loren/)
* [Cleve's Corner](http://blogs.mathworks.com/cleve/)

