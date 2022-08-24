## DNN-aided Least Squares Channel Estimation
**Project by:** Anurag Gulati

**Faculty in-charge:** Dr. Sumit J. Darak (Assoc. Prof., IIITD)

**Project mentor:** Syed Asrar ul Haq (PhD Student, IIITD) 

### 1. What is this project?
>**Abstract:**
>
>Least square (LS) channel estimation employed in various communications systems suffers from performance degradation especially in low signal-to-noise ratio (SNR) regions. This is due to the noise enhancement in the LS estimation process. Minimum mean square error (MMSE) takes into consideration the noise effect and achieves better performance than LS with higher complexity. This paper proposes to correct the LS estimation error using deep learning (DL). Simulation results show that the proposed DL-based schemes perform better than both LS and MMSE channel estimation scheme, with less complexity than accurate MMSE.

_(Source: Cited in References)_

### 2. Repository Structure
This repository has been divided into two directories: HLS and design_impl. Each of these have been described in detail below:
* __HLS :__ All the high-level synthesis (HLS) files are contained here. HLS is used to define custom IPs that can be integrated with the design in Vivado Design Suite. This directory has been further divided into two sub-directories: least_squares and dnn. As the names suggest, least_squares contains the LS estimation IP and dnn contains the Deep Neural Network IP, which has be already trained using Python.

* __design_impl :__ All the Vivado design files are contained here. The custom IPs developed using HLS have been integrated with the Zynq 7000 Processing System via Direct Memory Access (DMA). There are two kinds of sub-directories within: the ones that contain LS estimator only (least_squares), and the ones that contain both LS and DNN integrated in the design (LSDNN_1__U, LSDNN_2__P, LSDNN_3__UP, LSDNN_4__WLO). 

### 3. References
* _Base paper :_ [_IEEE XPLORE_](https://ieeexplore.ieee.org/document/9128890)
* _Xilinx Vivado HLS User Guide:_ [_Vivado HLS_](https://www.xilinx.com/content/dam/xilinx/support/documents/sw_manuals/xilinx2016_4/ug902-vivado-high-level-synthesis.pdf) 


*I would like to acknowledge the organizations and researchers who laid out the foundational work for this project, and the authors of the above-mentioned references.*
