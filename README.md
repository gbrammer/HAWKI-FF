HAWKI-FF
========

### September 16, 2014

<table>
    <tr> <td width=260px> <a href=http://www.stsci.edu/~brammer/HFF/Stack/v3/A2744_Ks_v3_sci.fits.gz >  A2744_Ks_v3_sci.fits.gz </a> </td> <td width=50px align=right>  86M </td> <td width=100px align=right>  Sep 16 </td></tr>
    <tr> <td width=260px> <a href=http://www.stsci.edu/~brammer/HFF/Stack/v3/A2744_Ks_v3_wht.fits.gz >  A2744_Ks_v3_wht.fits.gz </a> </td> <td width=50px align=right>  46M </td> <td width=100px align=right>  Sep 16 </td></tr>
    <tr> <td width=260px> <a href=http://www.stsci.edu/~brammer/HFF/Stack/v3/M0416_Ks_v3_sci.fits.gz >  M0416_Ks_v3_sci.fits.gz </a> </td> <td width=50px align=right>  86M </td> <td width=100px align=right>  Sep 16 </td></tr>
    <tr> <td width=260px> <a href=http://www.stsci.edu/~brammer/HFF/Stack/v3/M0416_Ks_v3_wht.fits.gz >  M0416_Ks_v3_wht.fits.gz </a> </td> <td width=50px align=right>  44M </td> <td width=100px align=right>  Sep 16 </td></tr>
</table>

We have made significant progress rectifying the relative astrometry and photometry between the four separate HAWKI detectors.  The ZFOURGE pipeline is used to reduce each OB + chip combination, and final chip mosaics are created applying astrometric corrections determined with the SCAMP software, which significantly improves the alignment of the chip overlap regions.  The current mosaics are created with **0.1" pixels**.  The seeing **FWHM is ~0.4"** in both fields with significant flux in the wings more consistent with a Moffat profile than a Gaussian.
    
With dual-mode SExtractor catalogs extracted from each chip individually, magnitude offsets of order ~0.1 mag are clearly seen between the chips, and they almost completely compensate for the depth differences seen between the chips in earlier versions of the mosaics.  The remaining depth variation is ~0.05 mag, probably within the uncertainty of the chip zeropoints.  **The final mosaics are scaled to an ZP=26 (AB).**

The depth maps for the two fields are shown below, taking the noise within an aperture straight from the Inverse Variance maps in the "wht" images (the true effective noise in the aperture can be somewhat different and better measured with the "empty aperture" technique).  **Aperture corrections are applied in the depth estimation** in 0.8" diameter apertures, with the correction determined from isolated stars in the field.


