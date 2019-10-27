SIP Headers for HAWKI
---------------------

Another benefit of `drizzle` is straightforward compensation for geometric distortions of the HAWK-I detectors.  These distortions are relatively small for HAWK-I, but they are noticeable in the image corners in the high image-quality **KIFF** images.  Here we provide a version of the HAWK-I geometric distortion determined by [Libralato et al. (2014)](http://www.aanda.org/10.1051/0004-6361/201322059) translated into SIP header keywords that `drizzle` can recognize.  The SIP keywords were determined from a third-order polynomial fit to the full distortion images.  The headers can be found below, where note that we define the chips as in Libralato et al. with the chip numbers corresponding to the order of the extensions in the raw HAWKI image files provided by the ESO archive.  

|Chip #1   |Chip #2  |Chip #3   |Chip #4   |
|-------   |-------  |-------   |-------   |  
| [SIP header](libralato_hawki_chip1.crpix.header)  | [SIP header](libralato_hawki_chip2.crpix.header)  | [SIP header](libralato_hawki_chip3.crpix.header)  | [SIP header](libralato_hawki_chip4.crpix.header)  

The header ascii files can be read with, e.g., 

```python
>>> header = astropy.io.fits.Header.fromtextfile('libralato_hawki_chip1.crpix.header')
```

Update: 27 Oct 2019
-------------------

The files with extensions like `crpix.header` correctly incorporate the `CRPIX` keywords as implemented in the [SIP FITS convention](https://fits.gsfc.nasa.gov/registry/sip.html).

