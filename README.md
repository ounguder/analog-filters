# analog-filters

Transfer functions, bode plots, zero plots of different type of Analog Filters are in this repository can be used as a study aid for Analog and Digital Signal Processing lecture


## RC Low Pass Filter

![RC Circuit](circuit-images/rclowpass.JPG)

* To find the output voltage over the capacitor, we need to use the Kirchhoff Voltage Law

​	$V_1 = V_{R} + V_{C} \qquad(1) \\ $

​	$V_R = i(t)R\qquad(2)\\ $

​	$i(t) = C\frac{\partial V_C}{\partial t} \qquad(3)$

​	

* To find the transfer function, we need to take the Laplace transformation of each equation.

  $V_R = IR \qquad(4) \\ $

  $I = sCV_C \qquad(5)$

  

* Since the interested voltage is the capacitor voltage, we need to find $V_R$ in the form of $V_C$. In order to do that, we need to put $I=sCV_C$ into the equation 4

  $V_R = sCV_CR=sRCV_C  \qquad(6)$

  

* Then we need to put the output of equation 6 into equation 1

  $V_1 = sRCV_C  + V_{C} \qquad(7) \\$

  $V_1 = V_C(sRC + 1) \qquad(8) \\$

  

* Transfer function of the system is formulated as $\frac{V_{out}}{V_{in}}$, therefore $\frac{V_C}{V_1}= H(s) = \frac{1}{sRC+1}$ 
  $$
  
  $$
  

