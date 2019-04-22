# ryan_guerra_phd_thesis
LaTeX source for my Ph.D. Thesis at Rice University: "Large-Scale Software Defined Radio Systems: Design, Implementation, and Evaluation"

Submitted May 2019

## Abstract

Since 2012, Television White Space (TVWS) systems have been permitted unlicensed operation on unused television channels between 50 to 800 MHz utilizing radio spectrum sharing techniques. Often considered "beachfront property" radio spectrum for their advantageous propagation characteristics, 6 MHz TVWS channels are nevertheless narrow relative to other unlicensed radio frequency bands and often fragmented, resulting in low network throughput and limiting their usefulness for modern, high-bandwidth applications.

However, new many-antenna radio technologies have been shown to improve spectral efficiency beyond 100 bits/s/Hz, mitigating the need for wide channel bandwidths by leveraging spatial multiplexing. This presents an opportunity to deploy new unlicensed wireless networks that are large-scale in both range and speed as well as the number of coherent radios utilized for Multi-User Beamforming (MUBF).

In this thesis, we design and implement the first scalable, agile, Software-Defined Radio (SDR) platform designed to support multi-user beamforming on TVWS. This design addresses key physical layer implementation barriers such as: fast automatic gain control, ultra-wideband power transfer networks, and distributed clocking architecture for scalable MUBF.

Through an extensive series of indoor and outdoor measurements using our new platform, we show that in comparison to other unlicensed frequency bands, measured TVWS channels have temporal characteristics that are more beneficial for MUBF while maintaining nearly the same amount of spatial diversity.

We leverage this new experimental insight to design an opportunistic MUBF protocol for 802.11af-like networks that can avoid all overhead associated with MUBF channel estimation by exploiting the high stability of fixed TVWS channels. We emulate this protocol based on empirical measurements and show that our opportunistic channel sounding protocol outperforms alternative 802.11af-based strategies for 4x4 or 8x4 MUBF when packets are short and modulation rates are high. For high-order MUBF like 32x16, opportunistic channel sounding outperforms all alternatives by avoiding significant overhead that scales with the degree of spatial multiplexing.

Through a comprehensive end-to-end system design addressing hardware, digital, and protocol challenges with final system validation, we develop a holistic new approach for leveraging TVWS to enable very large-scale, unlicensed wireless systems with gigabit network throughput.
