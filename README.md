HAWKI-FF
========

(Email brammer@stsci.edu for the password for the linked images.)

### September 19, 2014

|File            |  Size  |File            |  Size  |
|--------------- | ------ |--------------- | ------ |
|[A2744_Ks_cluster_v3.1_sci.fits](http://www.stsci.edu/~brammer/HFF/Stack/v3.1/A2744_Ks_cluster_v3.1_sci.fits.gz) | 95M |	[M0416_Ks_cluster_v3.1_sci.fits](http://www.stsci.edu/~brammer/HFF/Stack/v3.1/M0416_Ks_cluster_v3.1_sci.fits.gz) | 67M |
|[A2744_Ks_cluster_v3.1_wht.fits](http://www.stsci.edu/~brammer/HFF/Stack/v3.1/A2744_Ks_cluster_v3.1_wht.fits.gz) | 46M |	[M0416_Ks_cluster_v3.1_wht.fits](http://www.stsci.edu/~brammer/HFF/Stack/v3.1/M0416_Ks_cluster_v3.1_wht.fits.gz) | 33M |
|[A2744_Ks_parallel_v3.1_sci.fits](http://www.stsci.edu/~brammer/HFF/Stack/v3.1/A2744_Ks_parallel_v3.1_sci.fits.gz) | 77M |	[M0416_Ks_parallel_v3.1_sci.fits](http://www.stsci.edu/~brammer/HFF/Stack/v3.1/M0416_Ks_parallel_v3.1_sci.fits.gz) | 81M |
|[A2744_Ks_parallel_v3.1_wht.fits](http://www.stsci.edu/~brammer/HFF/Stack/v3.1/A2744_Ks_parallel_v3.1_wht.fits.gz) | 39M |	[M0416_Ks_parallel_v3.1_wht.fits](http://www.stsci.edu/~brammer/HFF/Stack/v3.1/M0416_Ks_parallel_v3.1_wht.fits.gz) | 40M |
|[A2744_Ks_v3.1_sci.fits](http://www.stsci.edu/~brammer/HFF/Stack/v3.1/A2744_Ks_v3.1_sci.fits.gz) | 86M |	[M0416_Ks_v3.1_sci.fits](http://www.stsci.edu/~brammer/HFF/Stack/v3.1/M0416_Ks_v3.1_sci.fits.gz) | 86M |
|[A2744_Ks_v3.1_wht.fits](http://www.stsci.edu/~brammer/HFF/Stack/v3.1/A2744_Ks_v3.1_wht.fits.gz) | 46M |	[M0416_Ks_v3.1_wht.fits](http://www.stsci.edu/~brammer/HFF/Stack/v3.1/M0416_Ks_v3.1_wht.fits.gz) | 44M |

These files represent the current best reduction with the following changes:

* Apply relative weighiting of the individual OBs to include 1) exposure time, 2) background level and 3) image quality.  This improves the final seeing FWHM somewhat from 0.4" to 0.375" and with less power in the PSF wings.  (N.B. the IRAF `imexam` FWHMs are somewhat smaller than those measured from the average stellar curves of growth and SExtractor IMAGE_FWHM.)

* Along with the 100mas/pix stacks of the full field, create stacks matched to the pixel grids of the 60mas HST mosaics in both the cluster and parallel fields.  Note that these aren't simply resampling of the 100mas mosaics but rather recombined with SWarp from the individual OBs onto the desired pixel grid.

* Put more descriptive information in the FITS headers:
    
    ```
    PROGID  = '092.A-0472(A)'      / ESO Program ID
    PROGPI  = 'G. Brammer'         / For questions contact brammer@stsci.edu
    TELESCOP= 'ESO-VLT-UT4'        / ESO Telescope Name
    INSTRUME= 'HAWKI   '           / Instrument used
    CHIPID1 = 'ESO-Hawaii2RG-chip66' / Detector (chip 1)
    CHIPID2 = 'ESO-Hawaii2RG-chip78' / Detector (chip 2)
    CHIPID3 = 'ESO-Hawaii2RG-chip79' / Detector (chip 3)
    CHIPID4 = 'ESO-Hawaii2RG-chip88' / Detector (chip 4)
    FILTER  = 'Ks      '           / Filter
    MAGZEROP=                 26.0 / AB Zeropoint, mAB = MAGZEROP - 2.5 log(FLUX)
    ABVEGA  =                1.826 / AB-Vega conversion
    PIVOT   =              21524.0 / Filter pivot wavelength
    UNITS   = 'FLUX    '           / Science image units (DN/s)
    TARGET  = 'Abell 2744'         / Target Name
    RA      =             3.530172 / (J2000) pointing Right Ascension
    DEC     =            -30.39038 / (J2000) pointing Declination
    POSANG  =                -36.2
    MJD-OBS =       56616.10902617 / Start of PHOtometric OB
    DATE-OBS= '2013-11-20'         / Date of PHOtometric OB
    DATEFRST= '2013-10-24'         / Date of first OB execution
    DATELAST= '2013-12-24'         / Date of last OB execution
    DIT     =                   15 / Detector Integration Time
    NDIT    =                    4 / Number of averaged samples
    TOTEXP  =    25.52666000000001 / On-sky exposure time (hours)
    ```
    
| A2744 |  M0416 |
| ----- | ------ |
| ![A2744 Stars](https://raw.githubusercontent.com/gbrammer/HAWKI-FF/master/Doc/v3.1/A2744_star_selection.png) | ![M0416 Stars](https://raw.githubusercontent.com/gbrammer/HAWKI-FF/master/Doc/v3.1/M0416_star_selection.png) |

Star selection in both fields based on SExtractor `FLUX_RADIUS` as a function of `MAG_AUTO`. Stars are clearly offset from galaxies at Ks < 24.

| A2744 |  M0416 |
| ----- | ------ |
| ![A2744 Number Counts](https://raw.githubusercontent.com/gbrammer/HAWKI-FF/master/Doc/v3.1/A2744_number_counts.png) | ![M0416 Number Counts](https://raw.githubusercontent.com/gbrammer/HAWKI-FF/master/Doc/v3.1/M0416_number_counts.png) |

Ks band number counts (`MAG_AUTO`). 

| A2744 |  M0416 |
| ----- | ------ |
| ![A2744 CoG](https://raw.githubusercontent.com/gbrammer/HAWKI-FF/master/Doc/v3.1/A2744_apcorr.png) | ![M0416 CoG](https://raw.githubusercontent.com/gbrammer/HAWKI-FF/master/Doc/v3.1/M0416_apcorr.png) |

Stellar curves of growth as a function of aperture diameter, in arcsec. The stellar PSFs are well-described by Moffat profiles with FWHM &#x2248; 0.4" and &beta;&#x2248;2.2.  The relatively low value of &beta; indicates that while the cores of the PSF are fairly concentrated, there is significant flux in the outer wings.

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

