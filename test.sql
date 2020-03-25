select
									ext10100.empl_cd
									, ext10100.empl_full_nm
									, ext10100.empl_cd + ' - ' + ext10100.empl_full_nm as empl_cd_nm
									, ext10100.empl_frst_nm
									, ext10100.empl_lst_nm
									, ext10108.empl_det8_dptmt_cd as dptmt_cd
									, mst10200.dptmt_nm
									, ext10108.empl_det8_dsgnt_cd as dsgnt_cd
									, mst10400.dsgnt_nm
									, ext10108.empl_det8_brch_cd as brch_cd
									, mst10100.brch_nm
									, ext10108.empl_det8_dvsn_cd as dvsn_cd
									, mst10300.dvsn_nm
									, ext10101.empl_det1_fgr_id empl_fgr_id
									, ext10101.empl_det1_prty
									, ext10109.empl_trml_id
									, ext10109.empl_fp1_bin
									, ext10109.empl_fp2_bin
									, ext10109.empl_fp1_sts
									, ext10109.empl_fp2_sts
									from ext10100
									INNER JOIN ext10108 ON
									ext10100.empl_cd=ext10108.empl_cd
									LEFT JOIN mst10200 ON
									ext10108.empl_det8_dptmt_cd=mst10200.dptmt_cd
									LEFT JOIN mst10100 ON
									ext10108.empl_det8_brch_cd=mst10100.brch_cd
									LEFT JOIN mst10300 ON
									ext10108.empl_det8_dvsn_cd=mst10300.dvsn_cd
									LEFT JOIN mst10400 ON
									ext10108.empl_det8_dsgnt_cd=mst10400.dsgnt_cd
									LEFT JOIN ext10101 ON
									ext10101.empl_cd = ext10100.empl_cd
									LEFT JOIN ext10109
									on ext10101.empl_cd = ext10109.empl_cd
									and ext10101.empl_det1_fgr_id = ext10109.empl_fp_id
									where
									ext10101.empl_cd = @empl_cd and
									ext10101.empl_det1_fgr_id = @card_id and
									ext10109.empl_trml_id = @trml_id and
									( ext10100.empl_rsgn_dt is null and ext10100.empl_use = 1)