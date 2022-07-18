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

* If we say $\omega_0 = \frac{1}{R_1C_1}$ then and then divide both of nominator and denominator to $\frac{1}{R_1C_1}$ our transfer function becomes
  * $H(s) = \frac{\omega_0 }{s + \omega_0 }$
* In order to find the frequency response of the system, we need to evaluate the equation at $s = j\omega$
  * $H(s)|_{s=j\omega} = \frac{\omega_0 }{j\omega + \omega_0 }$

* Then we need to find the magnitude response of the system with following expression
  * $|H(jw)|  = \frac{\sqrt{imaginary^2 + real^2}}{\sqrt{imaginary^2 + real^2}}$

* For our frequency response, magnitude response is calculated in following
  * $|H(jw)|  = \frac{\sqrt{0^2 + \omega_0^2}}{\sqrt{\omega^2 + \omega_0^2}}= \frac{  \omega_0}{\sqrt{\omega^2 + \omega_0^2}}$

* Now to plot the magnitude response of the system, we need to evaluate the equation above at $\omega = 0$,$\omega = \omega_0$ and $\omega \rightarrow \infty$
  * $|H(jw)|_{\omega = 0}  =  \frac{  \omega_0}{\sqrt{0^2 + \omega_0^2}} = \frac{  \omega_0}{  \omega_0} =1 $
  * $|H(jw)|_{\omega = \omega_0}  =  \frac{  \omega_0}{\sqrt{\omega_0^2 + \omega_0^2}} = \frac{  1}{  \sqrt{2}} =\frac{\sqrt{2}}{2} $
  * $\lim_{x\to\infty}|H(jw)|   =  \frac{  \omega_0}{\sqrt{\infty^2 + \omega_0^2}} = \frac{  \omega_0}{  \infty} =0 $

* With this result, we can interpret that our filter attenuates the higher frequencies whereas the lower frequencies passes the filter without any attenuation. Also the bode plot of the circuit above is showing the magnitude and phase response of a RC Low Pass Filter with $R_1 = 1000 \ohm$ and $C_1= 1\micro F$

![RC LP Filter Response](circuit-images/RCLPR1kC1muF.JPG)

* In the `RC_low_pass.m` script in `basic-filters` folder, you can plot the magnitude, phase response and pole-zero plot of the filter.

