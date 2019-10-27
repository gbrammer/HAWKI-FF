![image](Doc/kiff_logo.png) 

*K*s-band Imaging of the *Hubble* Frontier Fields
==================================================

We provide ultra-deep *K*s-band imaging of all six of the [*Hubble* Frontier Fields](http://www.stsci.edu/hst/campaigns/frontier-fields/) clusters Abell 2744, MACS-0416, Abell S1063, Abell 370, MACS-0717 and MACS-1149.  

All of these fields have recently been observed with large allocations of Directors' Discretionary Time with the HST and Spitzer telescopes covering 0.4 < &lambda; < 1.6 &mu;m and 3.6–4.5 &mu;m, respectively. *VLT*/**HAWK-I** integrations of the first four fields reach 5&sigma; limiting depths of *K*s~26.0 (AB, point sources) and have excellent image quality (FWHM~0.4"). Shorter *Keck*/**MOSFIRE** integrations of the MACS-0717 (MACS-1149) field better observable in the north reach limiting depths *K*s=25.5 (25.1) with seeing FWHM~0.4" (0.5").  

![image](Doc/cutout.png) 

The *K*s-band at 2.2 &mu;m crucially fills the gap between the reddest HST filter (1.6 &mu;m ~ *H* band) and the IRAC 3.6 &mu;m passband. While reaching the full depths of the space-based imaging is not currently feasible from the ground, the deep Ks-band images provide important constraints on both the redshifts and the stellar population properties of galaxies extending well below the characteristic stellar mass across most of the age of the universe, down to, and including, the redshifts of the targeted galaxy clusters (z~0.5). 

A full description of the observations, processing, and data quality are given by (Brammer et al. (2016))[http://adsabs.harvard.edu/abs/2016ApJS..226....6B]  (manuscript and figures [here](Paper0/)).

Image mosaics
-------------
![image](Doc/layout.png) 

The HAWK-I field of view is perfectly suited (Abell 2744, MACS-0416, Abell S1063 and Abell 370) for simultaneous imaging of the *HST* cluster+parallel field pairs, which require two separate pointings with MOSFIRE (MACS-0717 and MACS-1149).  The total area of the Ks-band coverage is 490 arcmin2.

The **KIFF** mosaics are available in as Phase 3 data products in the [ESO archive](http://archive.eso.org/wdb/wdb/adp/phase3_imaging/query?wdbo=html%2fdisplay&max_rows_returned=200&target=&resolver=simbad&wdb_input_file=&coord_sys=eq&coord1=&coord2=&box=02%2009%2000&tab_ra=on&tab_dec=on&tab_filter=on&filter=Any&tab_prodcatg=on&prodcatg=Any&tab_sky_solid_angle=on&sky_solid_angle=&isamp=%25&pixelscale=&tab_abmaglim=on&abmaglim=&abmagsat=&tab_sky_res=on&sky_res=&tel_id=Any&tab_ins_id=on&ins_id=Any&obstech=Any&tab_date_obs=on&date_obs=&mjd_obs=&tab_exptime=on&exptime=&tab_texptime=on&texptime=&multi_ob=%25&tab_collection_name=on&collection_name=092.A-0472&tab_prog_id=on&prog_id=&username=&p3orig=%25&tab_origfile=on&origfile=&tab_dp_id=on&dp_id=&rel_date=&tab_referenc=on&referenc=&batch_id=&publication_date=&wdb_input_file_raw=&order_imaging=dummy&) (and with [release documentation](http://www.eso.org/rm/api/v1/public/releaseDescriptions/75)).  Note that the mosaics northern fields MACS0717 and MACS1149 are provided as ancillary data products when one requests the "A370" field from the ESO archive.  

`Drizzle` image combination
---------------------------
![image](Doc/drizzle.png) 

A significant innovation developed for our analysis is the combination of all the individual raw exposures into the final mosaics using the `drizzle` algorithm.  With drizzle we can decrease the size of the input pixels before dropping them into the output pixel grid, which significantly reduces the correlations between neighboring pixels.  Combining images with simple shift-and-add resampling such as with SWarp results in an effective smoothing of the pixel-to-pixel noise in the final combined image. 

Another benefit of `drizzle` is straightforward compensation for geometric distortions of the HAWK-I detectors.  These distortions are relatively small for HAWK-I, but they are noticeable in the image corners in the high image-quality **KIFF** images.  Here we provide a version of the HAWK-I geometric distortion determined by [Libralato et al. (2014)](http://www.aanda.org/10.1051/0004-6361/201322059) translated into SIP header keywords that `drizzle` can recognize.  The SIP keywords were determined from a third-order polynomial fit to the full distortion images.  The headers can be found below, where note that we define the chips as in Libralato et al. with the chip numbers corresponding to the order of the extensions in the raw HAWKI image files provided by the ESO archive.  

|Chip #1   |Chip #2  |Chip #3   |Chip #4   |
|-------   |-------  |-------   |-------   |  
| [SIP header](Distortion/libralato_hawki_chip1.crpix.header)  | [SIP header](Distortion/libralato_hawki_chip2.crpix.header)  | [SIP header](Distortion/libralato_hawki_chip3.crpix.header)  | [SIP header](Distortion/libralato_hawki_chip4.crpix.header)  

The header ascii files can be read with, e.g., 

```python
>>> header = astropy.io.fits.Header.fromtextfile('libralato_hawki_chip1.crpix.header')
```

> :warning: **Oct 2019:** The released versions of the KIFF mosaics linked above used an incorrect version of the SIP headers that will result in astrometric errors of order 0.2 arcsec in the mosaic corners. This will be fixed in a subsequent release of the mosaics.  The correct SIP headers are those linked above in [./Distortion](Distortion/).
