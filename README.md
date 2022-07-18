# analog-filters

Transfer functions, bode plots, zero plots of different type of Analog Filters are in this repository can be used as a study aid for Analog and Digital Signal Processing lecture


## RC Low Pass Filter

![RC Circuit](circuit-images/rclowpass.JPG)

* To find the output voltage over the capacitor, we need to use the Kirchhoff Voltage Law

  * $V_1 = V_{R1} + V_{C1} \qquad(1) \\ $

  * $V_R = i(t)R_1\qquad(2)\\ $

  * $i(t) = C_1\frac{\partial V_{C1}}{\partial t} \qquad(3)$

​	

* To find the transfer function, we need to take the Laplace transformation of each equation.

  * $V_R = IR_1 \qquad(4) \\ $

  * $I = sC_1V_{C1} \qquad(5)$

  

* Since the interested voltage is the capacitor voltage, we need to find $V_R$ in the form of $V_C$. In order to do that, we need to put $I=sCV_C$ into the equation 4

  * $V_{R1} = sC_1V_{C1}R_1=sR_1C_1V_{C1}  \qquad(6)$

  

* Then we need to put the output of equation 6 into equation 1

  * $V_1 = sR_1C_1V_{C1}  + V_{C1} \qquad(7)$

  * $V_1 = V_{C1}(sR_1C_1 + 1) \qquad(8)$

  

* Transfer function of the system is formulated as $\frac{V_{out}}{V_{in}}$, therefore
  *  $\frac{V_{C1}}{V_1}= H(s) = \frac{1}{sR_1C_1+1}$ 