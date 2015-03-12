def acs():
	"""
	Script to reduce ACS Cluster data
	"""
    
    import glob
    import os
    
    import threedhst
    import threedhst.prep_flt_astrodrizzle as init

    import unicorn
    import unicorn.interlace_acs
    
    ### Make ACS associations
    unicorn.candels.make_asn_files(uniquename=True, translate={'-ROT':''})
    
    ### Need to take out "_flc" extension from the ASN files
    files=glob.glob('*asn.fits')
    for asn_file in files:
        asn = threedhst.utils.ASNFile(asn_file)
        ## print asn.exposures
        for i in range(len(asn.exposures)):
            asn.exposures[i] = asn.exposures[i].split('_flc')[0]
        #
        asn.write(asn_file)
    #
    #### Combine parallels
    for par in [1,2]:
        for filter in ['F775W','F850LP']:
            files=glob.glob('MACS0416-ACSPAR%d-[AB]*-%s*' %(par, filter))
            list = []
            for file in files:
                asn = threedhst.utils.ASNFile(file)
                list.extend(asn.exposures)
                os.remove(file)
                
            asn.exposures = list
            asn.product = 'MACS0416-ACSPAR%d-%s' %(par, filter)
            asn.write('%s_asn.fits' %(asn.product))
            
    files, radec = glob.glob('MACS0416-ACSPA*asn.fits'), 'subaru.radec'
    files, radec = glob.glob('MACS0416-2403*asn.fits'), 'clash_radec.dat'
    files, radec = glob.glob('*0717*F814W*asn.fits'), 'subaru_macs0717.radec'
    files, radec = glob.glob('*0717*F606W*asn.fits'), 'subaru_macs0717.radec'
    
    files, radec = glob.glob('*asn.fits'), 'clash_radec.dat'
    files, radec = glob.glob('*LENS*asn.fits'), 'clash_radec.dat'
    
    from socket import gethostname as hostname
    for asn_file in files:
        if os.path.exists(asn_file.replace('asn', 'drc_sci')):
            continue
        #
        init.prep_direct_grism_pair(direct_asn=asn_file, grism_asn=None, radec=radec, ACS=True, align_threshold=5)
        if 'science' in hostname():
            asn = threedhst.utils.ASNFile(asn_file)
            for exp in asn.exposures:
                 os.remove('../RAW/%s_flc.fits.gz' %(exp))
                
    ##### Combine visits on the cluster to flag CRs
    info = catIO.Table("files.info")
    filters = np.unique(info['FILTER'])
    
    for filter in filters:
        #### Get all FLTs
        flt_list = []
        #files=glob.glob('MACS0416-2403-??-???-%s_asn.fits' %(filter))
        files=glob.glob('MACS0416*%s_asn.fits' %(filter))
        for asn_file in files:
            asn = threedhst.utils.ASNFile(asn_file)
            for exp in asn.exposures:
                flt_list.append('%s_flc.fits' %(exp))
        #
        bits = 96 #+512
        skyuser = 'MDRIZSKY'
        #### Ignore MDRIZSKY
        fp = open('ACS.skyfile','w')
        fp.writelines(['%s 0.0\n' %(file) for file in flt_list])
        fp.close()
        #
        #### Run AstroDrizzle to flag CRs on both orients
        #drizzlepac.astrodrizzle.AstroDrizzle(flt_list, output='MACS0416-2403-%s' %(filter), clean=True, context=False, preserve=False, skysub=True, skyfile='ACS.skyfile', driz_separate=True, driz_sep_wcs=True, median=True, blot=True, driz_cr=True, driz_combine=True, final_wcs=True, final_refimage=None, final_scale=0.065, final_pixfrac=0.8, final_rot=0, final_kernel='square', resetbits=0, final_bits=bits, final_wht_type='IVM')
        #
        #drizzlepac.astrodrizzle.AstroDrizzle(flt_list, output='MACS0416-2403-30mas-%s' %(filter), clean=True, context=False, preserve=False, skysub=True, skyfile='ACS.skyfile', driz_separate=False, driz_sep_wcs=False, median=False, blot=False, driz_cr=False, driz_combine=True, final_wcs=True, final_refimage='hlsp_clash_hst_acs-30mas_macs0416_f475w_v1_drz.fits', final_pixfrac=0.8, final_kernel='square', resetbits=0, final_bits=bits, final_wht_type='IVM')
        #
        drizzlepac.astrodrizzle.AstroDrizzle(flt_list, output='MACS0416-2403-Mosaic-%s' %(filter), clean=True, context=False, preserve=False, skysub=True, skyfile='ACS.skyfile', driz_separate=False, driz_sep_wcs=False, median=False, blot=False, driz_cr=False, driz_combine=True, final_wcs=True, final_scale=0.05, final_rot=0, final_pixfrac=0.8, final_kernel='square', resetbits=0, final_bits=bits, final_wht_type='IVM')
        
    #### MACS0717 mosaic
    for filter in ['F606W', 'F814W']:
        flt_list = []
        #files=glob.glob('MACS0416-2403-??-???-%s_asn.fits' %(filter))
        files=glob.glob('MACS*0717*%s_asn.fits' %(filter))
        for asn_file in files:
            asn = threedhst.utils.ASNFile(asn_file)
            for exp in asn.exposures:
                if os.path.exists('%s_flc.fits' %(exp)):
                    flt_list.append('%s_flc.fits' %(exp))
        #
        bits = 96 #+512
        skyuser = 'MDRIZSKY'
        #### Ignore MDRIZSKY
        fp = open('ACS.skyfile','w')
        fp.writelines(['%s 0.0\n' %(file) for file in flt_list])
        fp.close()
        #
        #drizzlepac.astrodrizzle.AstroDrizzle(flt_list, output='MACS0717-Mosaic-%s' %(filter), clean=True, context=False, preserve=False, skysub=True, skyfile='ACS.skyfile', driz_separate=False, driz_sep_wcs=False, median=False, blot=False, driz_cr=False, driz_combine=True, final_wcs=True, final_rot=0, final_pixfrac=0.8, final_kernel='square', resetbits=0, final_bits=bits, final_wht_type='IVM', final_ra=1.093574923885E+02, final_dec=3.778490152063E+01, final_scale=0.1798, final_outnx=4185, final_outny=4670)
        drizzlepac.astrodrizzle.AstroDrizzle(flt_list, output='MACS0717-Mosaic-%s' %(filter), clean=True, context=False, preserve=False, skysub=True, skyfile='ACS.skyfile', driz_separate=False, driz_sep_wcs=False, median=False, blot=False, driz_cr=False, driz_combine=True, final_wcs=True, final_rot=0, final_pixfrac=0.8, final_kernel='square', resetbits=0, final_bits=bits, final_wht_type='IVM', final_ra=1.093574923885E+02, final_dec=3.778490152063E+01, final_scale=0.1, final_outnx=7524, final_outny=8397)
        
