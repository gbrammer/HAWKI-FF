HAWKI-FF
========

(Email brammer@stsci.edu for the password information for the linked images.)

### September 19, 2014

|      File            | Date   |  Size |
| -------------------- | ------ | ----- |
|[A2744_Ks_cluster_v3.1_sci.fits.gz](http://www.stsci.edu/~/brammer/HFF/Stack/v3.1/A2744_Ks_cluster_v3.1_sci.fits.gz) | Sep 19 | 95M |
|[A2744_Ks_cluster_v3.1_wht.fits.gz](http://www.stsci.edu/~/brammer/HFF/Stack/v3.1/A2744_Ks_cluster_v3.1_wht.fits.gz) | Sep 19 | 46M |
|[A2744_Ks_parallel_v3.1_sci.fits.gz](http://www.stsci.edu/~/brammer/HFF/Stack/v3.1/A2744_Ks_parallel_v3.1_sci.fits.gz) | Sep 19 | 77M |
|[A2744_Ks_parallel_v3.1_wht.fits.gz](http://www.stsci.edu/~/brammer/HFF/Stack/v3.1/A2744_Ks_parallel_v3.1_wht.fits.gz) | Sep 19 | 39M |
|[A2744_Ks_v3.1_sci.fits.gz](http://www.stsci.edu/~/brammer/HFF/Stack/v3.1/A2744_Ks_v3.1_sci.fits.gz) | Sep 19 | 86M |
|[A2744_Ks_v3.1_wht.fits.gz](http://www.stsci.edu/~/brammer/HFF/Stack/v3.1/A2744_Ks_v3.1_wht.fits.gz) | Sep 19 | 46M |
| -------------------- | ------ | ----- |
|[M0416_Ks_cluster_v3.1_sci.fits.gz](http://www.stsci.edu/~/brammer/HFF/Stack/v3.1/M0416_Ks_cluster_v3.1_sci.fits.gz) | Sep 19 | 67M |
|[M0416_Ks_cluster_v3.1_wht.fits.gz](http://www.stsci.edu/~/brammer/HFF/Stack/v3.1/M0416_Ks_cluster_v3.1_wht.fits.gz) | Sep 19 | 33M |
|[M0416_Ks_parallel_v3.1_sci.fits.gz](http://www.stsci.edu/~/brammer/HFF/Stack/v3.1/M0416_Ks_parallel_v3.1_sci.fits.gz) | Sep 19 | 81M |
|[M0416_Ks_parallel_v3.1_wht.fits.gz](http://www.stsci.edu/~/brammer/HFF/Stack/v3.1/M0416_Ks_parallel_v3.1_wht.fits.gz) | Sep 19 | 40M |
|[M0416_Ks_v3.1_sci.fits.gz](http://www.stsci.edu/~/brammer/HFF/Stack/v3.1/M0416_Ks_v3.1_sci.fits.gz) | Sep 19 | 86M |
|[M0416_Ks_v3.1_wht.fits.gz](http://www.stsci.edu/~/brammer/HFF/Stack/v3.1/M0416_Ks_v3.1_wht.fits.gz) | Sep 19 | 44M |

### September 16, 2014

|      File            | Date   |  Size |
| -------------------- | ------ | ----- |
| ~~A2744_Ks_v3_sci.fits.gz~~ |  Sep 16 |  86M | 
| ~~A2744_Ks_v3_wht.fits.gz~~ |  Sep 16 |  46M | 
| ~~M0416_Ks_v3_sci.fits.gz~~ |  Sep 16 |  86M | 
| ~~M0416_Ks_v3_wht.fits.gz~~ |  Sep 16 |  44M | 


We have made significant progress rectifying the relative astrometry and photometry between the four separate HAWKI detectors.  The ZFOURGE pipeline is used to reduce each OB + chip combination, and final chip mosaics are created applying astrometric corrections determined with the SCAMP software, which significantly improves the alignment of the chip overlap regions.  The current mosaics are created with **0.1" pixels**.  The seeing **FWHM is ~0.4"** in both fields with significant flux in the wings more consistent with a Moffat profile than a Gaussian.
    
With dual-mode SExtractor catalogs extracted from each chip individually, magnitude offsets of order ~0.1 mag are clearly seen between the chips, and they almost completely compensate for the depth differences seen between the chips in earlier versions of the mosaics.  The remaining depth variation is ~0.05 mag, probably within the uncertainty of the chip zeropoints.  **The final mosaics are scaled to an ZP=26 (AB).**

The depth maps for the two fields are shown below, taking the noise within an aperture straight from the Inverse Variance maps in the "wht" images (the true effective noise in the aperture can be somewhat different and better measured with the "empty aperture" technique).  **Aperture corrections are applied in the depth estimation** in 0.8" diameter apertures, with the correction determined from isolated stars in the field.

| A2744 |  M0416 |
| ----- | ------ |
| ![A2744 Depth](https://raw.githubusercontent.com/gbrammer/HAWKI-FF/master/Doc/A2744_limiting_mag.png) | ![M0416 Depth](https://raw.githubusercontent.com/gbrammer/HAWKI-FF/master/Doc/M0416_limiting_mag.png) |

