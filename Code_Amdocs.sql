--  NR
--
--
USE netparam;
DROP TABLE IF EXISTS NRBTS_Full;
CREATE TABLE NRBTS_Full ENGINE=MyISAM AS
SELECT DISTINCT
N.name AS NRBTSname, concat(baseline.Market,'-',baseline.`Localidad (CRC)`) AS Cluster, baseline.Region AS Region, baseline.Departamento AS Depto, baseline.Municipio AS Mun, substr(N.name,1,3) AS Prefijo,
SUBSTRING_INDEX(LEFT(N.distName, LOCATE('/NRBTS', N.distName)-1),'MRBTS-',-1) AS MRBTS_id,
SUBSTRING_INDEX(N.distName,'NRBTS-',-1) AS NRBTS_id, N.rc_name AS PLMN_id, N.distName,
N.siteTemplateName AS siteTemplateNameB,
N.actCMAS,N.actMobilityRetryToSecondBestCell,N.mncLength,N.actDlDataForwardingX2Limit,N.cipherPrefL_nea0_1,N.pdschRat0RbgConfig,N.gNbCuType,N.cipherPrefL_nea3_128_1,N.actInterRatHoSA,N.freqBandIndicatorEutra,N.id,N.actBlacklistingEutranCell,N.xnNgRanCfUpRdmDelayTmr,N.integrityProtPrefL_nia1_128_1,N.actLteNrDss,N.actRedirect,N.actUeDeltaConfigOptimize,N.singleTXModeSupportEnabled,N.actGeneralConnectivitySilver,N.x2LinkSupervisionTmr,N.actNgcFlexSaMode,N.integrityProtPrefL_nia3_128_1,N.nsaInactivityTimer,N.actDataDuplicationForSAMobility,N.actInterRatHoSADlDataForward,N.version,N.actInterFreqIntraGnbMobilityNSA,N.timerXnUeProcGuard,N.maxParallelXnSetup,N.actRanSharing,N.srvcDownDetectTimer,N.sgnbRelForNoHandoverEnabled,N.operationalState,N.actConflictConfiguration,N.phrConfig_tProhibitPhr_1,N.actIntraFreqIntraGnbMobilityNSA,N.tDiscardLteTimer,N.caConfigurationSupport,N.gNbCuName,N.timerNGSignalingConnGuard,N.actNonGbrServiceDiff,N.actUECapaHandlingSAMode,N.gNbIdLength,N.shutdownNoX2TrafficTmr,N.srbInactivityTimerSA,N.shutdownStepAmount,N.n310,N.actGeneralConnectivityBronze,N.n311,N.drbInactivityTimerSA,N.actIntraFreqHoSA,N.actCellTraceReport,N.ngUeRetentionEnabled,N.x2LinkReestabTmr,N.nullFallback,N.activityNotificationLevelSA,N.maxX2PartialResetReqRetry,N.maxX2EnDcCfUpRetry,N.cipherPrefL_nea1_128_1,N.raTypeList,N.actDataDuplicationForMobility,N.keyRefrMarg,N.actSrvcAvaReporting,N.periodicalDataUsageReportTimer,N.actEnhancedLinkAdaptation,N.maxNumXnSetupRetry,N.periodicBSRTimer,N.timerHOGuard,N.actNormVCFallback,N.actEcpriPhase2,N.actTddPrePooling,N.actEcpriPhase3,N.drxDefaultPaging,N.integrityProtPrefL_nia2_128_1,N.actInterMeNBMobility,N.actInterFreqHoSA,N.actIncXn,N.timerX2UeProcGuard,N.mcc,N.nsaCellActivationAlarmTimer,N.maxNumXnLinks,N.tRLFindForDU,N.x2Cplane_ipV4AddressDN1_1,N.xnSetupReqTmr,N.actMicroDTX,N.phrConfig_dlPathlossChg_1,N.actIntraMeNBMobility,N.maxNumX2Links,N.sCCNumber,N.actSACallProcessingDU,N.actTrsNetworkSlicing,N.actA2SgnbRelease,N.forceSingleTxModeSupportEnabled,N.ngUeRetentionTmr,N.t311,N.x2EnDcCfUpRspTmr,N.x2FlowControlProfForCu_dddsPeriodX2_1,N.x2Uplane_ipV4AddressDN1_1,N.saCellActivationAlarmTimer,N.t310,N.tDCoverall,N.actGeneralConnectivityGold,N.srb3SupportEnabled,N.actRrcInactiveState,N.shutdownNoXnTrafficTmr,N.actEmergencyFallback,N.actUESpecificULResCoordination,N.cipherPrefL_nea2_128_1,N.actTrsSepaSARanSharing,N.t304,N.actCarrierAggregation,N.xnNgRanCfUpNbInfoBackOffTmr,N.pduSessionEndMarkerTimer,N.x2EnDcCfUpRdmDelayTmr,N.xnLinkReestabTmr,N.x2EndMarkerTimer,N.x2PartialResetCnfTmr,N.actMultVlan,N.actMFBIEutra,N.cpueLoadBalancing_cpueOverrideResiliencyThreshold_1,N.actCoverageNonCoherentUes,N.enDcX2SetupReqTmr,N.endMarkerTimer,N.timerRRCGuard,N.maxNumF1Links,N.s1Uplane_ipV4AddressDN1_1,N.phrConfig_tPeriodicPhr_1,N.xnSetupRespTmr,N.tWaitingRlRecover,N.actMultiDrbNSA,N.ngSetupRespTmr,N.actGrflShdn,N.actIntraFreqInterGnbMobilityNSA3x,N.variableSourceUdpPortEnabled,N.actDlDataForwardingX2,N.x2FlowControlProfForCu_minThFlowCtrlX2_1,N.maxXnNgRanCfUpRetry,N.actPCMDReport,N.xnNgRanCfUpRspTmr,N.pfaTargetPRACH,N.class,N.actPaging,N.actGnbInitRlf,N.nsaActivityNotificationLevel,N.actTrsSepaNSARanSharing,N.mnc,N.shutdownNogNBCellTmr,N.actFdmScheduling,N.gtpuManagementDscp,N.waitForRecovBeforeCellBarringTimer,N.retryXnSetupTmr,N.x2ResetRspTmr,N.actUeInitRlf,N.tmpParam7,N.srb1Config,N.actTimeAlignExtension,N.shutdownWindow,N.actPrachMultiplexing,N.actInterFreqInterGnbMobilityNSA,N.timerRejectWait,N.actSecDataUsageRep,N.rrcReestabTypeSA,N.x2EnDcCfUpNbInfoBackOffTmr,N.xnResetRespTmr,N.cPlaneDscp,N.actInactDetNSAUe,N.actOAMResiliency,N.x2FlowControlProfForCu_maxTransferDelayX2_1,N.time_stamp,N.qciTab7Nsa3x_ulDataSplitThreshold_1,N.qciTab69Nsa3x_inactivityThresholdForPrioritizeX2_1,N.macProf4_macProfileId_1,N.qciTab69Nsa3x_initialDLTrafficRouting_1,N.qciTab8Nsa3x_initialDLTrafficRouting_1,N.qciTab70Nsa3x_nsa3xBearerAllowed_1,N.qciTab9Nsa3x_dlDataSplitBufferBuildUpThreshold_1,N.qciTab70Nsa3x_ulDataSplitThreshold_1,N.qciTab69Nsa3x_rlcMode_1,N.qciTab5Nsa3x_macProfIdx_1,N.dscpProf1_dscpProfileId_1,N.qciTab5Nsa3x_dlDataSplitMode_1,N.qciTab6Nsa3x_inactivityThresholdForPrioritizeX2_1,N.drbRlcAmDefProf_ulMaxRetxThreshold_1,N.qciTab5Nsa3x_dscpProfIdx_1,N.fiveQiTab9_sduDiscardIntervalTmr_1,N.fiveQiTab9_dscp_1,N.qciTab6Nsa3x_queuingDelayDiscardEnabled_1,N.qciTab6Nsa3x_macProfIdx_1,N.qciTab79Nsa3x_numSduDiscard_1,N.qciTab7Nsa3x_nsa3xBearerAllowed_1,N.qciTab8Nsa3x_nsa3xBearerAllowed_1,N.qciTab7Nsa3x_pdcpProfIdx_1,N.qciTab70Nsa3x_dlDataSplitBufferBuildUpThresholdPrioritizeX2_1,N.qciTab5Nsa3x_ulDataPath_1,N.qciTab7Nsa3x_sduDiscardIntervalTmr_1,N.qciTab6Nsa3x_actDddsReduction_1,N.qciTab7Nsa3x_inactivityThresholdForRestartPrioritizeX2_1,N.qciTab69Nsa3x_dlDataSplitBufferBuildUpThresholdPrioritizeX2_1,N.qciTab8Nsa3x_macProfIdx_1,N.rlcProf4_tPollRetr_1,N.qciTab8Nsa3x_dlDataSplitBufferBuildUpThresholdPrioritizeX2_1,N.qciTab9Nsa3x_initialDLTrafficRouting_1,N.drbRlcAmDefProf_dlTProhib_1,N.fiveQiTab9_queuingDelaySduDiscardThreshold_1,N.qciTab8Nsa3x_rlcMode_1,N.qciTab69Nsa3x_ulDataPath_1,N.qciTab8Nsa3x_ulDataPath_1,N.qciTab8Nsa3x_dlDataSplitMode_1,N.fiveQiTab6_numSduDiscard_1,N.qciTab69Nsa3x_inactivityThresholdForRestartPrioritizeX2_1,N.pdcpProf2_tReordering_1,N.qciTab6Nsa3x_queuingDelaySduDiscardThreshold_1,N.qciTab69Nsa3x_macProfIdx_1,N.qciTab7Nsa3x_dlDataSplitBufferBuildUpThreshold_1,N.qciTab7Nsa3x_ulDataPath_1,N.qciTab9Nsa3x_dlDataSplitGainThreshold_1,N.qciTab7Nsa3x_dlFlowControlAlgo_1,N.qciTab8Nsa3x_inactivityThresholdForRestartPrioritizeX2_1,N.qciTab7Nsa3x_initialDLTrafficRouting_1,N.fiveQiTab9_numSduDiscard_1,N.qciTab6Nsa3x_prioritizeX2Period_1,N.qciTab9Nsa3x_dlDataSplitBufferBuildUpThresholdPrioritizeX2_1,N.qciTab8Nsa3x_dscpProfIdx_1,N.qciTab6Nsa3x_initialDLTrafficRouting_1,N.qciTab69Nsa3x_dlDataSplitGainThreshold_1,N.fiveQiTab9_queuingDelayDiscardEnabled_1,N.qciTab70Nsa3x_sduDiscardIntervalTmr_1,N.qciTab7Nsa3x_numSduDiscard_1,N.qciTab79Nsa3x_dlDataSplitBufferBuildUpThresholdPrioritizeX2_1,N.qciTab7Nsa3x_macProfIdx_1,N.qciTab9Nsa3x_queuingDelaySduDiscardThreshold_1,N.fiveQiTab8_queuingDelayDiscardEnabled_1,N.qciTab5Nsa3x_actPrioritizeX2AfterInactivity_1,N.qciTab70Nsa3x_actDddsReduction_1,N.qciTab5Nsa3x_prioritizeX2Period_1,N.qciTab70Nsa3x_actPrioritizeX2AfterInactivity_1,N.qciTab6Nsa3x_dlDataSplitBufferBuildUpThresholdPrioritizeX2_1,N.qciTab9Nsa3x_rlcMode_1,N.qciTab79Nsa3x_dlDataSplitMode_1,N.pdcpProf2_tReorderingUL_1,N.qciTab7Nsa3x_dlDataSplitGainThreshold_1,N.qciTab5Nsa3x_rlcProfIdx_1,N.qciTab70Nsa3x_inactivityThresholdForPrioritizeX2_1,N.qciTab69Nsa3x_queuingDelayDiscardEnabled_1,N.qciTab79Nsa3x_actPrioritizeX2AfterInactivity_1,N.qciTab5Nsa3x_dlDataSplitBufferBuildUpThreshold_1,N.qciTab5Nsa3x_initialDLTrafficRouting_1,N.qciTab7Nsa3x_queuingDelayDiscardEnabled_1,N.qciTab70Nsa3x_prioritizeX2Period_1,N.qciTab5Nsa3x_rlcMode_1,N.qciTab69Nsa3x_numSduDiscard_1,N.qciTab70Nsa3x_schedulWeight_1,N.qciTab6Nsa3x_rlcProfIdx_1,N.qciTab79Nsa3x_ulDataSplitThreshold_1,N.rlcProf4_pollPDU_1,N.qciTab6Nsa3x_nsa3xBearerAllowed_1,N.qciTab9Nsa3x_dscpProfIdx_1,N.qciTab9Nsa3x_dlFlowControlAlgo_1,N.qciTab5Nsa3x_dlDataSplitGainThreshold_1,N.fiveQiTab6_dscp_1,N.qciTab69Nsa3x_actPrioritizeX2AfterInactivity_1,N.qciTab70Nsa3x_dlDataSplitGainThreshold_1,N.qciTab69Nsa3x_dlFlowControlAlgo_1,N.qciTab79Nsa3x_dlDataSplitBufferBuildUpThreshold_1,N.fiveQiTab9_dlFlowControlAlgo_1,N.qciTab6Nsa3x_dlFlowControlAlgo_1,N.qciTab5Nsa3x_dlDataSplitBufferBuildUpThresholdPrioritizeX2_1,N.qciTab7Nsa3x_actDddsReduction_1,N.qciTab5Nsa3x_pdcpProfIdx_1,N.qciTab69Nsa3x_schedulWeight_1,N.drbRlcAmDefProf_ulTProhib_1,N.qciTab9Nsa3x_numSduDiscard_1,N.qciTab9Nsa3x_macProfIdx_1,N.actDrbProfNonGbrServiceDiff,N.fiveQiTab7_dlFlowControlAlgo_1,N.qciTab79Nsa3x_inactivityThresholdForPrioritizeX2_1,N.qciTab9Nsa3x_ulDataPath_1,N.fiveQiTab8_queuingDelaySduDiscardThreshold_1,N.qciTab69Nsa3x_dlDataSplitMode_1,N.drbMacDefProf_lcgid_1,N.qciTab9Nsa3x_ulDataSplitThreshold_1,N.qciTab70Nsa3x_pdcpProfIdx_1,N.rlcProf4_tStatusProhibit_1,N.drbRlcAmDefProf_dlPollPDU_1,N.fiveQiTab5_dscp_1,N.qciTab79Nsa3x_dlDataSplitGainThreshold_1,N.fiveQiTab8_numSduDiscard_1,N.qciTab70Nsa3x_dlDataSplitBufferBuildUpThreshold_1,N.drbRlcAmDefProf_dlTReassembly_1,N.qciTab69Nsa3x_rlcProfIdx_1,N.qciTab79Nsa3x_actDddsReduction_1,N.qciTab6Nsa3x_dlDataSplitBufferBuildUpThreshold_1,N.fiveQiTab5_queuingDelaySduDiscardThreshold_1,N.qciTab69Nsa3x_dscpProfIdx_1,N.qciTab79Nsa3x_inactivityThresholdForRestartPrioritizeX2_1,N.qciTab69Nsa3x_pdcpProfIdx_1,N.qciTab7Nsa3x_schedulWeight_1,N.qciTab6Nsa3x_numSduDiscard_1,N.qciTab70Nsa3x_dscpProfIdx_1,N.fiveQiTab5_numSduDiscard_1,N.fiveQiTab5_dlFlowControlAlgo_1,N.qciTab79Nsa3x_pdcpProfIdx_1,N.qciTab79Nsa3x_schedulWeight_1,N.drbRlcAmDefProf_ulTReassembly_1,N.drbRlcAmDefProf_dlTPollRetr_1,N.drbRlcAmDefProf_ulPollByte_1,N.qciTab5Nsa3x_dlFlowControlAlgo_1,N.qciTab8Nsa3x_dlFlowControlAlgo_1,N.qciTab79Nsa3x_prioritizeX2Period_1,N.fiveQiTab6_queuingDelaySduDiscardThreshold_1,N.fiveQiTab7_dscp_1,N.qciTab70Nsa3x_rlcProfIdx_1,N.fiveQiTab6_sduDiscardIntervalTmr_1,N.qciTab9Nsa3x_pdcpProfIdx_1,N.qciTab79Nsa3x_ulDataPath_1,N.qciTab79Nsa3x_macProfIdx_1,N.qciTab69Nsa3x_dlDataSplitBufferBuildUpThreshold_1,N.qciTab79Nsa3x_dlFlowControlAlgo_1,N.qciTab5Nsa3x_ulDataSplitThreshold_1,N.qciTab9Nsa3x_prioritizeX2Period_1,N.drbRlcAmDefProf_ulTPollRetr_1,N.macProf4_lcgid_1,N.qciTab7Nsa3x_dlDataSplitMode_1,N.qciTab8Nsa3x_queuingDelayDiscardEnabled_1,N.drbRlcAmDefProf_dlPollByte_1,N.qciTab79Nsa3x_rlcMode_1,N.qciTab6Nsa3x_pdcpProfIdx_1,N.qciTab8Nsa3x_prioritizeX2Period_1,N.fiveQiTab7_sduDiscardIntervalTmr_1,N.rlcProf4_ulPollByte_1,N.rlcProf4_tReassembly_1,N.qciTab6Nsa3x_actPrioritizeX2AfterInactivity_1,N.qciTab5Nsa3x_sduDiscardIntervalTmr_1,N.drbRlcAmDefProf_dlMaxRetxThreshold_1,N.fiveQiTab7_queuingDelaySduDiscardThreshold_1,N.qciTab69Nsa3x_sduDiscardIntervalTmr_1,N.qciTab5Nsa3x_nsa3xBearerAllowed_1,N.qciTab70Nsa3x_dlDataSplitMode_1,N.qciTab7Nsa3x_dscpProfIdx_1,N.dscpProf1_dscp_1,N.qciTab9Nsa3x_actDddsReduction_1,N.qciTab9Nsa3x_queuingDelayDiscardEnabled_1,N.qciTab8Nsa3x_schedulWeight_1,N.qciTab7Nsa3x_queuingDelaySduDiscardThreshold_1,N.qciTab5Nsa3x_queuingDelaySduDiscardThreshold_1,N.qciTab6Nsa3x_sduDiscardIntervalTmr_1,N.qciTab8Nsa3x_dlDataSplitGainThreshold_1,N.actInterFreqInterGnbMobilitySA,N.qciTab8Nsa3x_dlDataSplitBufferBuildUpThreshold_1,N.qciTab69Nsa3x_ulDataSplitThreshold_1,N.qciTab79Nsa3x_initialDLTrafficRouting_1,N.qciTab79Nsa3x_queuingDelayDiscardEnabled_1,N.rlcProf4_dlPollByte_1,N.qciTab6Nsa3x_schedulWeight_1,N.drbMacDefProf_schedulPrio_1,N.qciTab7Nsa3x_prioritizeX2Period_1,N.qciTab70Nsa3x_initialDLTrafficRouting_1,N.qciTab79Nsa3x_rlcProfIdx_1,N.qciTab8Nsa3x_pdcpProfIdx_1,N.qciTab5Nsa3x_actDddsReduction_1,N.qciTab9Nsa3x_inactivityThresholdForRestartPrioritizeX2_1,N.qciTab79Nsa3x_nsa3xBearerAllowed_1,N.qciTab8Nsa3x_queuingDelaySduDiscardThreshold_1,N.qciTab5Nsa3x_numSduDiscard_1,N.qciTab8Nsa3x_actPrioritizeX2AfterInactivity_1,N.qciTab69Nsa3x_actDddsReduction_1,N.qciTab5Nsa3x_queuingDelayDiscardEnabled_1,N.qciTab5Nsa3x_schedulWeight_1,N.fiveQiTab7_numSduDiscard_1,N.timerX2DataFwdGuard,N.rlcProf4_rlcProfileId_1,N.qciTab6Nsa3x_dlDataSplitGainThreshold_1,N.qciTab6Nsa3x_dscpProfIdx_1,N.drbRlcAmDefProf_ulPollPDU_1,N.qciTab69Nsa3x_queuingDelaySduDiscardThreshold_1,N.qciTab8Nsa3x_inactivityThresholdForPrioritizeX2_1,N.qciTab79Nsa3x_queuingDelaySduDiscardThreshold_1,N.qciTab69Nsa3x_prioritizeX2Period_1,N.qciTab8Nsa3x_sduDiscardIntervalTmr_1,N.qciTab6Nsa3x_dlDataSplitMode_1,N.qciTab6Nsa3x_ulDataSplitThreshold_1,N.qciTab7Nsa3x_actPrioritizeX2AfterInactivity_1,N.qciTab7Nsa3x_rlcProfIdx_1,N.qciTab6Nsa3x_rlcMode_1,N.fiveQiTab7_queuingDelayDiscardEnabled_1,N.qciTab9Nsa3x_rlcProfIdx_1,N.drbPdcpDefProf_cuFlowControlProfId_1,N.qciTab70Nsa3x_queuingDelayDiscardEnabled_1,N.fiveQiTab5_sduDiscardIntervalTmr_1,N.qciTab70Nsa3x_rlcMode_1,N.qciTab9Nsa3x_nsa3xBearerAllowed_1,N.qciTab70Nsa3x_queuingDelaySduDiscardThreshold_1,N.fiveQiTab5_queuingDelayDiscardEnabled_1,N.qciTab7Nsa3x_rlcMode_1,N.qciTab69Nsa3x_nsa3xBearerAllowed_1,N.rlcProf4_maxRetxThreshold_1,N.pdcpProf2_pdcpProfileId_1,N.qciTab70Nsa3x_ulDataPath_1,N.fiveQiTab6_dlFlowControlAlgo_1,N.qciTab70Nsa3x_macProfIdx_1,N.qciTab7Nsa3x_dlDataSplitBufferBuildUpThresholdPrioritizeX2_1,N.qciTab8Nsa3x_numSduDiscard_1,N.qciTab70Nsa3x_inactivityThresholdForRestartPrioritizeX2_1,N.qciTab9Nsa3x_dlDataSplitMode_1,N.fiveQiTab8_dlFlowControlAlgo_1,N.fiveQiTab6_queuingDelayDiscardEnabled_1,N.qciTab6Nsa3x_inactivityThresholdForRestartPrioritizeX2_1,N.qciTab5Nsa3x_inactivityThresholdForPrioritizeX2_1,N.qciTab8Nsa3x_actDddsReduction_1,N.qciTab7Nsa3x_inactivityThresholdForPrioritizeX2_1,N.qciTab9Nsa3x_inactivityThresholdForPrioritizeX2_1,N.fiveQiTab8_dscp_1,N.qciTab79Nsa3x_sduDiscardIntervalTmr_1,N.qciTab8Nsa3x_rlcProfIdx_1,N.qciTab79Nsa3x_dscpProfIdx_1,N.qciTab9Nsa3x_actPrioritizeX2AfterInactivity_1,N.qciTab70Nsa3x_numSduDiscard_1,N.qciTab9Nsa3x_schedulWeight_1,N.qciTab6Nsa3x_ulDataPath_1,N.qciTab5Nsa3x_inactivityThresholdForRestartPrioritizeX2_1,N.qciTab70Nsa3x_dlFlowControlAlgo_1,N.fiveQiTab8_sduDiscardIntervalTmr_1,N.qciTab8Nsa3x_ulDataSplitThreshold_1,N.qciTab9Nsa3x_sduDiscardIntervalTmr_1,N.drbPdcpDefProf_tReordering_1,N.e1CLinkStatusCuCp,N.maxNoCPUEVMs,N.actCpnrtResiliency,N.actVemResiliency,N.maxNumOfUsersPerCpCell,N.ratType,N.cpclRedundancyLevel,N.mPlane_ipV4AddressDN1_1,N.rlResumeBackOffTmr,N.actCpclResiliency,N.actNetworkSlicing,N.mPlaneDscp,N.maxParallelIncXnSetup,N.rrcGuardTimer
FROM NRBTS AS N LEFT JOIN baseline ON (baseline.Sitio = N.name)
ORDER BY N.name IS NULL OR N.name='', N.name;
--
--  BTS parameters importantes OK
--
--  half radius for caberera sites
--
DROP TABLE IF EXISTS BTS_PARAM;
CREATE TABLE BTS_PARAM ENGINE=MyISAM AS
SELECT DISTINCT
BTS.name AS BTSname, concat(B.Market,'-',B.`Localidad (CRC)`) AS Cluster, B.Region AS Region, B.Departamento AS Depto, B.Municipio AS Mun, substr(BTS.name,1,3) AS Prefijo, substr(BTS.name,-1,1) AS sector,
BTS.rc_name AS PLMN_Id,
SUBSTRING_INDEX(LEFT(BTS.distName, LOCATE('/BCF', BTS.distName)-1),'BSC-',-1) AS bsc_Id,
SUBSTRING_INDEX(LEFT(BTS.distName, LOCATE('/BTS', BTS.distName)-1),'BCF-',-1) AS bcf_Id,
SUBSTRING_INDEX(BTS.distName,'BTS-',-1) AS bts_Id,
BTS.cellId, POC.bsTxPwrMax, POC.bsTxPwrMax1x00, BTS.segmentId, BTS.nwName, BSC.name AS BSCname, BCF.name AS BCFname, TRX.initialFrequency, 1*(CONCAT(BTS.bsIdentityCodeNCC, BTS.bsIdentityCodeBCC)) AS BSIC, BTS.bsIdentityCodeNCC, BTS.bsIdentityCodeBCC, BTS.locationAreaIdLAC, BTS.usedMobileAllocation, BCF.adminState AS BCF_AdSt, BTS.adminState AS BTS_AdSt, BTS.rac, CASE WHEN TRX.initialFrequency < 512 THEN 850 ELSE 1900 END AS BandName,
BTS.distName, BTS.qSearchI, BTS.qSearchP, BTS.fddQOffset, BTS.fddQMin, BTS.rxLevAccessMin, BTS.radioLinkTimeout, BTS.radioLinkTimeoutAmr, BTS.msMaxDistInCallSetup,
B.Latitud AS Deci_Lat, B.Longitud AS Deci_Lon, SUBSTRING_INDEX(LEFT(BTS.distName, LOCATE('/BTS', BTS.distName)-1),'BCF-',-1) AS Mtx_Site, SUBSTRING_INDEX(BTS.distName,'BTS-',-1) AS Mtx_Site_ID, BTS.name AS Site_Name,
CASE WHEN substr(BTS.name,-1,1) = 'A' THEN 1 ELSE (CASE WHEN substr(BTS.name,-1,1) = 'B' THEN 2 ELSE (CASE WHEN substr(BTS.name,-1,1) = 'C' THEN 3 ELSE (CASE WHEN substr(BTS.name,-1,1) = 'D' THEN 4 ELSE (CASE WHEN substr(BTS.name,-1,1) = 'E' THEN 5 ELSE (CASE WHEN (1*substr(BTS.name,-1,1)) < 9 THEN substr(BTS.name,-1,1) ELSE NULL END)END)END)END)END)END AS sector_ID,
CASE WHEN TRX.initialFrequency < 512 THEN
(CASE WHEN G.`Map Length` < 3 THEN
(CASE WHEN B.Zona = 'Cabecera' THEN 40 ELSE 80 END)
ELSE
(CASE WHEN B.Zona = 'Cabecera' THEN 17*G.`Map Length` ELSE 35*G.`Map Length` END) END)
ELSE
(CASE WHEN G.`Map Length` < 3 THEN
(CASE WHEN B.Zona = 'Cabecera' THEN 30 ELSE 60 END)
ELSE
(CASE WHEN B.Zona = 'Cabecera' THEN (17*G.`Map Length` - 15) ELSE (35*G.`Map Length` - 30) END) END)
END AS Radius,
CASE WHEN TRX.initialFrequency < 512 THEN (CASE WHEN G.`Map Beam` < 65 THEN 40 ELSE (G.`Map Beam` - 15) END) ELSE (CASE WHEN G.`Map Beam` < 65 THEN 50 ELSE G.`Map Beam` END) END AS Beamwidth, G.Azimuth
FROM (((((BTS LEFT JOIN POC ON (BTS.distName = SUBSTRING_INDEX(POC.distName,'/POC',1))) LEFT JOIN BCF ON (SUBSTRING_INDEX(BTS.distName,'/BTS',1)=BCF.distName))  LEFT JOIN BSC ON (SUBSTRING_INDEX(BTS.distName,'/BCF',1) = BSC.distName)) LEFT JOIN baseline AS B ON (BCF.name = B.Sitio)) LEFT JOIN Baseline_GSM AS G ON (BTS.name = G.BTS_Name)) LEFT JOIN TRX ON (BTS.distName = SUBSTRING_INDEX(TRX.distName,'/TRX',1))
WHERE ((TRX.channel0Type)=4)
ORDER BY BTS.name;
--
--
--
--

--
DROP TABLE IF EXISTS NRCELL_Full;
CREATE TABLE NRCELL_Full ENGINE=MyISAM AS
SELECT DISTINCT
N1.name AS NRCELLNAME, N.NRBTSname, N.PLMN_id,N.MRBTS_id,N.NRBTS_id,SUBSTRING_INDEX(N1.distName,'NRCELL-',-1) AS NRCELL_id, N.Cluster, N.Region, N.Depto, N.Mun, N.Prefijo, N1.physCellId, N1.nrCellIdentity,N1.nrCellType,N1.prachConfigurationIndex,N1.prachRootSequenceIndex, N1.pMax,N1.pMaxNROwnCell, N1.freqBandIndicatorNR, N1.lcrId, N1.timingAdvanceOffset,N1.totalNumberOfRAPreambles,N1.chBw,N1.nrarfcn,N2.chBwDl,N2.chBwUl,N2.nrarfcnDl,N2.nrarfcnUl,
N.siteTemplateNameB,N.gNbCuName, N1.siteTemplateName AS siteTemplateNameC, N1.cellName,
N1.frRefList,N1.csirsBeamMgmt_csirsBmMgmtReIndex_1,N1.sMeasConfigSsbRsrp,N1.a1MeashoSsbRsrq_a1HysteresishoSsbRsrq_1,N1.ulPowerControlCommon_p0NominalPucchF1F3_1 AS p0NominalPucchF1F3, N1.modPeriodCoeff,N1.cellBarred,N1.dlDataDmrsFdm_actDlDataDmrsFdm_1,N1.ulPowerControlCommon_p0NominalSrs_1 AS p0NominalSrs, N1.maxNumOfSCellAlloc,N1.numOfSubSectors,N1.type0CoresetConfigurationIndex,N1.ullaBlerTarget,N1.numOfPagingFrames,N1.ulMuPairingThreshold,N1.rloSinrThreshold,N1.a2MeasRedirectSsbRsrp_a2HysteresisRedirectSsbRsrp_1,N1.version,N1.dllaDeltaCqiMax,N1.ulDataDmrsFdm_ulDataDmrsFdmThres64QamMcs_1,N1.a2MeasRedirectSsbRsrp_a2ThresholdRedirectSsbRsrp_1,N1.cellIndividualSsbRsrqOffset,N1.actPcsiOnF2Fdm,N1.ulMuLowSinrThreshold,N1.drxProfile1_drxInactivityTimer_1 AS drxInactivityTimer, N1.ullaDeltaSinrStepdown,N1.gapOffset,N1.operationalState,N1.puschDataDtxNumOfSamples,N1.drxWactDlEnabled,N1.a2MeasRedirectEnabled,N1.mcsIndexForArtificialLoad,N1.dlPtrs_dlPtrsTimeDensityThres256QamMcs1_1,N1.t300,N1.drxProfile1_drxOnDurationTimer_1 AS drxOnDurationTimer, N1.dllaBlerTarget,N1.n310,N1.n311,N1.initialPreambleReceivedTargetPower,N1.drxProfile1_drxRetransTimerUl_1 AS drxRetransTimerUl, N1.dllaDeltaCqiStepdown,N1.filterCoeffSsbRsrq,N1.filterCoeffSsbRsrp,N1.gscn,N1.a2MeashoSsbRsrq_a2ThresholdhoSsbRsrq_1,N1.ulPowerControlCommon_pucchF1DeltaF_1 AS pucchF1DeltaF, N1.a2MeashoEnabled,N1.rlResumePathLossThreshold,N1.a2MeashoSsbRsrq_a2TimeToTriggerhoSsbRsrq_1,N1.reqMinNumPuschPrb,N1.targetTotalLoad,N1.pucchDataDtxNumOfSamples,N1.reportAmount,N1.trsMutingInBlankedPRBsEnabled,N1.drxProfile1_drxLongCycle_1 AS drxLongCycle, N1.srsBmCyclicShiftOffset,N1.distName,N1.ssbScs,N1.a2MeashoSsbRsrp_a2TimeToTriggerhoSsbRsrp_1,N1.ulPowerControlCommon_p0NominalPucch_1 AS p0NominalPucch, N1.measGapSelection,N1.actBeamforming,N1.intraFreqReselection,N1.drxWactUlEnabled,N1.dlPtrs_dlPtrsFreqDensityThresNrb1_1,N1.raContentionResolutionTmr,N1.t319,N1.cellTechnology,N1.administrativeState,N1.aggregationLevel,N1.maxNumOfNonGBRBearersSA,N1.a1MeashoSsbRsrp_a1HysteresishoSsbRsrp_1,N1.a3MeasSsbRsrp_a3TimeToTriggerSsbRsrp_1 AS a3TimeToTriggerSsbRsrp, N1.cellReservedForOtherUse,N1.lteToNrTimeOffset,N1.preambleTransMax,N1.a1MeashoSsbRsrq_a1ThresholdhoSsbRsrq_1,N1.prachSequenceType,N1.targetSUOMeNBULSubframes,N1.t311,N1.t310,N1.puschMappingType,N1.dlPtrs_dlPtrsFreqDensityThresNrb0_1,N1.dmrsTypeAPosition,N1.reportOnLeave,N1.t301,N1.dlPtrs_dlPtrsTimeDensityThres64QamMcs1_1,N1.proceduralStatus,N1.maxNumOfUsersNRCell,N1.powerRampingStep,N1.rlpDetCsiBsiThreshold,N1.ulMuMaxNumPairedUEs,N1.rlpRecDlHarqThreshold,N1.msg3DeltaPreamble,N1.ullaDeltaSinrMax,N1.pagingOffset,N1.ulPowerControlCommon_actUlOpenLoopPwrCtrl_1 AS actUlOpenLoopPwrCtrl, N1.fPdcchMonOccsnPo,N1.cellBwpList_bwpDN_2,N1.actExternalAntennaBF,N1.maxNumOfUsersPerCell,N1.a2MeasRedirectSsbRsrp_a2TimeToTriggerRedirectSsbRsrp_1,N1.cellIndividualSsbRsrpOffset,N1.a1MeashoEnabled,N1.cellBwpList_bwpDN_1,N1.ifhoSsbSmtcOffset,N1.availabilityStatus,N1.dlMuMaxNumPairedUEs,N1.class,N1.rloDtxRatioThreshold,N1.actUlMuMimo,N1.ulPowerControlCommon_pucchF3DeltaF_1 AS pucchF3DeltaF, N1.msg1FrequencyStart,N1.nbrOfBlankedPRBsLowEdgeDL,N1.nbrOfBlankedPRBsLowEdgeUL,N1.reportInterval,N1.srPeriodicity,N1.ssPbchBlockPower,N1.raResponseWindow,N1.enDcSyncStatus,N1.ulPtrs_ulPtrsTimeDensityThres64QamMcs1_1,N1.dlDMRSAdditionalPosition,N1.expectedCellSize,N1.a2MeasRedirectSsbRsrq_a2TimeToTriggerRedirectSsbRsrq_1,N1.srsBmSubbandOffset,N1.a5MeasEnabled,N1.ulPowerControlCommon_alpha_1 AS alpha, N1.type0SearchSpaceConfigurationIndex,N1.numPagingOccsnPagingFrame,N1.actPRBBlanking,N1.id,N1.actDl256Qam,N1.csirsForTracking_rbAllocation_1 AS rbAllocation, N1.ulPowerControlCommon_alphaSrs_1 AS alphaSrs, N1.rModDNList,N1.frequencyDensityThresNrb0,N1.frequencyDensityThresNrb1,N1.cbraPreamblesPerSsb,N1.rlResumeSinrThreshold,N1.cellDepType,N1.absThreshSsbRsrpConsolidation,N1.dlQam256PowerBackoffSub6,N1.dllaDeltaCqiMin,N1.a1MeashoSsbRsrp_a1ThresholdhoSsbRsrp_1,N1.voiceFBMode,N1.rlpDetDlHarqThreshold,N1.lteNrDssMode,N1.rlResumeBackOffTmr,N1.dlMimoMode,N1.srsBmCombOffset,N1.pucchModeSelect,N1.actCDrx,N1.actRrcReconfigAtBeamSwitch,N1.cellReservedForOperatorUse,N1.a3MeasSsbRsrp_a3OffsetSsbRsrp_1 AS a3OffsetSsbRsrp, N1.a2MeashoSsbRsrq_a2HysteresishoSsbRsrq_1,N1.rloPathLossThreshold,N1.ulMimoMode,N1.ulPtrs_actUlPtrs_1,N1.a3MeasSsbRsrp_a3HysteresisSsbRsrp_1 AS a3HysteresisSsbRsrp, N1.nrofHARQProcessesForPDSCH,N1.a2MeashoSsbRsrp_a2HysteresishoSsbRsrp_1,N1.actSUL,N1.drxProfile1_drxRetransTimerDl_1 AS drxRetransTimerDl, N1.a2MeashoSsbRsrp_a2ThresholdhoSsbRsrp_1,N1.actSrsBmGoB,N1.ulPtrs_ulPtrsFreqDensityThresNrb0_1,N1.actDynUlDataSplitMode,N1.ccLoadThreshold,N1.cellBwpList_cellBwpId_1,N1.cellBwpList_cellBwpId_2,N1.actDlMuMimo,N1.eirpControlTimeAveragingWindowStepSize,N1.csirsForTracking_csirsTrackingPeriod_1 AS csirsTrackingPeriod, N1.maxNumOfRrcSA,N1.dedicatedSib1,N1.a2MeasRedirectSsbRsrq_a2ThresholdRedirectSsbRsrq_1,N1.a1MeashoSsbRsrq_a1TimeToTriggerhoSsbRsrq_1,N1.ulDataDmrsFdm_actUlDataDmrsFdm_1,N1.ullaDeltaSinrMin,N1.a1MeashoSsbRsrp_a1TimeToTriggerhoSsbRsrp_1,N1.ulDMRSAdditionalPosition,N1.dlDataDmrsFdm_dlDataDmrsFdmThres64QamMcs_1,N1.dlDataDmrsFdm_dlDataDmrsFdmThres256QamMcs_1,N1.powerRampingStepHighPriorityCfra,N1.a2MeasRedirectSsbRsrq_a2HysteresisRedirectSsbRsrq_1,N1.rsrpThresholdSSB,N1.beamManagementType,N1.rlpRecCsiBsiThreshold,N1.actEirpControl,N1.nbrOfBlankedPRBsHighEdgeUL,N1.ulPowerControlCommon_p0NominalPusch_1 AS p0NominalPusch, N1.pucchF3MaxCodeRate,N1.zeroCorrelationZoneConfig,N1.qRxLevMin,N1.cellReselectionPriority,N1.nbrOfSsbPerRachOccasion,N1.actAperCsi,N1.pucchF3ModulationScheme,N1.csirsBeamMgmt_csirsBmMgmtSubband_1,N1.modDNList,N1.csirsBeamMgmt_csirsBmMgmtDensity_1,N1.dciSiAggregationLevel,N1.dllaIniMcs,N1.dlPtrs_actDlPtrs_1,N1.a3MeasEnabled,N1.nbrOfBlankedPRBsHighEdgeDL,N1.configuredEpsTac,N1.rloConsecDtxThreshold,N1.mMimoAntArrayMode,N1.ulPtrs_ulPtrsFreqDensityThresNrb1_1,N1.srsBmNumCyclicShiftsPerComb,N1.ullaIniMcs,N1.rc_name,N1.time_stamp,N1.eirpControl_segmentAzimuthEdge1_1,N1.tddFrameStructure_ulDlDataSlotRatio_1,N1.eirpControl_segmentElevationEdge4_1,N1.csirsForTracking_firstRE_1 AS firstRE, N1.csirsForTracking_numUeSupportedTrsOverall_1 AS numUeSupportedTrsOverall, N1.beamSet_tiltOffset_1,N1.eirpControl_segmentAzimuthEdge0_1,N1.eirpControl_segmentElevationEdge3_1,N1.tddFrameStructure_guardPeriodLength_1,N1.beamSet_rightEdgeAngle_1,N1.tddFrameStructure_lteToNrFrameShift_1,N1.a2MeasReleaseSsbRsrp_a2ThresholdReleaseSsbRsrp_1,N1.eirpControl_numOfSegmentElevationEdges_1,N1.a2MeasReleaseEnabled,N1.eirpControl_segmentElevationEdge2_1,N1.csirsForTracking_startRB_1 AS startRB, N1.oldDN,N1.eirpControlPowerReductionFactorList,N1.csirsForTracking_numUeSupportedTrsPerCarrier_1 AS numUeSupportedTrsPerCarrier, N1.eirpControl_segmentElevationEdge1_1,N1.tddFrameStructure_frameStructureType_1,N1.eirpControl_numOfSegmentAzimuthEdges_1,N1.eirpControl_segmentElevationEdge0_1,N1.eirpControl_eirpControlTimeAveragingWindow_1,N1.beamSet_basicBeamSet_1,N1.a2MeasReleaseSsbRsrp_a2HysteresisReleaseSsbRsrp_1,N1.beamSet_nrBtsBeamRefinementP2_1,N1.beamSet_leftEdgeAngle_1,N1.tddFrameStructure_tdLteUlDlConfig_1,N1.eirpControl_minSignificantNormalizedBeamGain_1,N1.antennaMechanicalDowntilt,N1.a2MeasReleaseSsbRsrp_a2TimeToTriggerReleaseSsbRsrp_1,N1.fiveGsTac,N1.trackingAreaDN,N1.ssbSmtc1Offset,N1.ssbSmtc1Duration,N1.ssbSmtc1Periodicity,N1.a5MeasSsbRsrp_a5Threshold2SsbRsrp_1,N1.a5MeasSsbRsrp_a5TimeToTriggerSsbRsrp_1,N1.a5MeasSsbRsrp_a5Threshold1SsbRsrp_1,N1.a5MeasSsbRsrp_a5HysteresisSsbRsrp_1,
N2.id AS NRCELL_FDD_id, N2.version AS moVersion
FROM (NRBTS_Full AS N LEFT JOIN nrcell AS N1 ON (N.distName=SUBSTRING_INDEX(N1.distName,'/NRCEL',1))) LEFT JOIN nrcell_fdd AS N2 ON (SUBSTRING_INDEX(N2.distName,'/NRCELL_FDD',1)=N1.distName)
ORDER BY N1.name IS NULL OR N1.name='', N1.name;
--
--
--
-- WBTS_Full1
DROP TABLE IF EXISTS WBTS_Full1;
CREATE TABLE WBTS_Full1 ENGINE=MyISAM AS
SELECT DISTINCT
WBTS.WBTSName, concat(B.Market,'-',B.`Localidad (CRC)`) AS Cluster, B.Region AS Region, B.Departamento AS Depto, B.Municipio AS Mun,
WBTS.rc_name AS PLMN_Id, substr(WBTS.name,1,3) AS Prefijo, RNC.name AS RNCName,
SUBSTRING_INDEX(LEFT(WBTS.distName, LOCATE('/WBTS', WBTS.distName)-1),'RNC-',-1) AS RNC_id,
SUBSTRING_INDEX(WBTS.distName,'WBTS-',-1) AS WBTS_id, WBTS.distName,
 WBTS.version,WBTS.BTSAdditionalInfo,WBTS.BTSIPAddress,WBTS.BTSSupportForHSPACM,WBTS.BlindHOIntraBTSQCheck,WBTS.Cell240kmCapability,WBTS.DCNLinkStatus,WBTS.DCNSecurityStatus,WBTS.DLORLAveragingWindowSize,WBTS.DSCPHigh,WBTS.DSCPLow,WBTS.DSCPMedDCH,WBTS.DSCPMedHSPA,WBTS.DediMeasRepPeriodCSdata,WBTS.DediMeasRepPeriodPSdata,WBTS.DedicatedMeasReportPeriod,WBTS.DelayThresholdMax,WBTS.DelayThresholdMax2msTTI,WBTS.DelayThresholdMid,WBTS.DelayThresholdMid2msTTI,WBTS.DelayThresholdMin,WBTS.DelayThresholdMin2msTTI,WBTS.FreqChangeCapability,WBTS.HARQRVConfiguration,WBTS.HSDPA14MbpsPerUser,WBTS.HSDPACCEnabled,WBTS.HSDPAULCToDSCP,WBTS.HSUPACCEnabled,WBTS.HSUPADLCToDSCP,WBTS.HSUPAXUsersEnabled,WBTS.IPBasedRouteIdIub,WBTS.IPBasedRouteIdIub2,WBTS.IPBasedRouteIdIub3,WBTS.IPBasedRouteIdIub4,WBTS.IPNBId,WBTS.InactCACThresholdATM,WBTS.InactCACThresholdIP,WBTS.InactUsersCIDThreshold,WBTS.IntelligentSDPrioHO,WBTS.IubTransportSharing,WBTS.LoadControlPeriodPS,WBTS.MaxBTSOMFrameSize,WBTS.MaxFPDLFrameSizeForIPv6Iub,WBTS.MaxFPDLFrameSizeIub,WBTS.MaxNumberEDCHLCG,WBTS.MeasFiltCoeff,WBTS.MinUDPPortIub,WBTS.NESWVersion,WBTS.NEType,WBTS.NodeBRABReconfigSupport,WBTS.OverbookingSwitch,WBTS.PDUSize656WithHSDSCH,WBTS.PSAveragingWindowSize,WBTS.PSRLAveragingWindowSize,WBTS.PWSMAVTrafficVERLogic,WBTS.PWSMEnableWakeUpTime,WBTS.PWSMInUse,WBTS.PWSMRemCellSDBeginHour,WBTS.PWSMRemCellSDBeginMin,WBTS.PWSMRemCellSDEndHour,WBTS.PWSMRemCellSDEndMin,WBTS.PWSMShutdownBeginHour,WBTS.PWSMShutdownBeginMin,WBTS.PWSMShutdownEndHour,WBTS.PWSMShutdownEndMin,WBTS.PWSMWeekday,WBTS.ProbabilityFactorMax,WBTS.ProbabilityFactorMax2msTTI,WBTS.PrxAlpha,WBTS.PrxMeasAveWindow,WBTS.PrxTargetPSAdjustPeriod,WBTS.PtxAlpha,WBTS.PtxDPCHmax,WBTS.PtxDPCHmin,WBTS.PtxMeasAveWindow,WBTS.RACHloadIndicationPeriod,WBTS.RFSharingState,WBTS.RRIndPeriod,WBTS.RRMULDCHActivityFactorCSAMR,WBTS.RRMULDCHActivityFactorCSNTData,WBTS.RRMULDCHActivityFactorCSTData,WBTS.RRMULDCHActivityFactorPSBackgr,WBTS.RRMULDCHActivityFactorPSStream,WBTS.RRMULDCHActivityFactorPSTHP1,WBTS.RRMULDCHActivityFactorPSTHP2,WBTS.RRMULDCHActivityFactorPSTHP3,WBTS.RRMULDCHActivityFactorSRB,WBTS.SchedulingPeriod,WBTS.TQMId,WBTS.TQMId2,WBTS.TQMId3,WBTS.TQMId4,WBTS.ToAWEOffsetNRTDCHIP,WBTS.ToAWEOffsetRTDCHIP,WBTS.ToAWSOffsetNRTDCHIP,WBTS.ToAWSOffsetRTDCHIP,WBTS.WBTSChangeOrigin,WBTS.WBTSSWBuildId,WBTS.WinACRABsetupDL,WBTS.WinACRABsetupUL,WBTS.WinLCHSDPA,WBTS.WinLCHSUPA,WBTS.siteTemplateName,WBTS.SBTSId,WBTS.DLCECapacity,WBTS.HSDPACodeCapacity,WBTS.ULCECapacity,WBTS.bburruFlag,WBTS.nbrRepeater,WBTS.numFa,WBTS.type,WBTS.linkedMrsiteDN,WBTS.BTSRACHCapaIncCapability,WBTS.autoConfMode,WBTS.autoConfPlanReady,WBTS.autoConfStatus,WBTS.autoConfPlanName,WBTS.ATMInterfaceID,WBTS.COCOId,WBTS.IubTransportMedia,WBTS.NbrOfOverbookedHSDPAUsers,WBTS.ReleaseTimerForSharedHSDPAallocation,WBTS.SharedHSDPAVCCSelectionMethod,WBTS.SharedHSDPAallocation,WBTS.VCI,WBTS.VPI,WBTS.BroadcastSIB15,WBTS.BroadcastSIB15_2,WBTS.BroadcastSIB15_3,WBTS.EnhOLPCRTWPEnabled,WBTS.MDCBufferingTime,WBTS.SatelliteIubUsage,WBTS.ICBULUPHReportPeriod,WBTS.oldDN,WBTS.ManagedBy,WBTS.UserDefinedState
FROM (WBTS LEFT JOIN RNC ON SUBSTRING_INDEX(WBTS.distName,'/WBTS',1)=RNC.distName) LEFT JOIN baseline as B ON (B.Sitio = WBTS.name)
ORDER BY WBTS.name IS NULL OR WBTS.name='', WBTS.name;
--
--

--
--
-- LNBTS full
DROP TABLE IF EXISTS LNBTS_Full;
CREATE TABLE LNBTS_Full ENGINE=MyISAM AS
SELECT DISTINCT
L.name AS LNBTSname, concat(B.Market,'-',B.`Localidad (CRC)`) AS Cluster, B.Region AS Region, B.Departamento AS Depto, B.Municipio AS Mun,
substr(L.name,1,3) AS Prefijo, L.rc_name AS PLMN_id,
SUBSTRING_INDEX(LEFT(L.distName, LOCATE('/LNBTS', L.distName)-1),'MRBTS-',-1) AS MRBTS_id,
SUBSTRING_INDEX(L.distName,'LNBTS-',-1) AS LNBTS_id,
L.qciTab2delayTarget,L.actTransportSeparationLte,L.rlcProf103snFieldLengthUL,L.upovlhaenableSuspendSrs,L.qciTab66rlcProfIdx,L.qciTab70rlcProfIdx6cc7cc,L.actIfHo,L.rlcProf6maxRetxThresh,L.qciTab6drxProfileIndex,L.qciTab5qci,L.qciTab5schedulWeight,L.rlcProf5tReord,L.tS1RelPrepG,L.enableGrflShdn,L.pdcpProf5tDiscard,L.timDelACContPreempt,L.qciTab65maxGbrUl,L.tProhib,L.amRlcPBTab5ulPollByte,L.ilReacTimerUlTcpBoost,L.actOTNRecovery,L.rlcProf4pollPdu,L.rlcProf8pollPdu,L.tS1RelPrepL,L.actConvVoice,L.actNwReqUeCapa,L.enableAutoLock,L.consecHoFailThres,L.qciTab1enforceTtiBundling,L.qciTab1pdcpProfIdx,L.qciTab66drxProfileIndex,L.actRtPerfMonitoring,L.qciTab69schedulPrio,L.version,L.act8EpsBearers,L.qciTab69enforceTtiBundling,L.amRlcPBTab2dlPollByte,L.actZson,L.tRsrResFirst,L.pcellSwapBlockTimer,L.dynBlacklistingHoTimer,L.qciTab8pdcpProfIdx,L.rlcProf7maxRetxThresh,L.qciTab2enforceTtiBundling,L.rlcProf5maxRetxThresh,L.qciTab6rlcProfIdx3cc,L.actSpecDupGapNB,L.qciTab65qciSupp,L.qciTab69qciSupp,L.pdcpProf2tDiscard,L.btsResetRequest,L.actRLFbasedRCR,L.qciTab66pdcpProfIdx,L.actCoMp,L.actHoFromUtran,L.qciTab66prio,L.shutdownStepAmount,L.anrUtraTRSCFS,L.actCsfbECRestrRem,L.qciTab3prio,L.minNotActivatedUtraRSCFS,L.qciTab3maxGbrUl,L.qciTab65drxProfileIndex,L.qciTab6lcgid,L.rlcProf102snFieldLengthUL,L.sibUpdateRateThreshold,L.tx2RelODelta,L.qciTab7drxProfileIndex,L.qciTab65qci,L.tagMaxAM,L.sCellDeactivationTimereNB,L.tRimKaU,L.numTxWithHighNonGbr,L.qciTab9stopArpEnDc,L.amRlcPBTab4dlPollByte,L.act1xSrvcc,L.qciTab6schedulWeight,L.qciTab4enforceTtiBundling,L.blacklistS1HoEPCFailure,L.actDlIntShaping,L.tRimKaG,L.actExtMeasCtrl,L.actIncCarrMonit,L.actInterFreqServiceBasedHo,L.distName,L.actPredKpisObservability,L.qciTab5drxProfileIndex,L.amRlcPBTab4ueCategory,L.rlcProf8tReordIsca,L.maxX2CfUpRetry,L.rlcProf8maxRetxThresh,L.rlfBasedRCRdefault,L.amRlcPBTab2ueCategory,L.actCplaneOvlHandling,L.qciTab2rlcProfIdx,L.qciTab1dscp,L.actDistributedSite,L.pollPdu,L.amRlcPBTab1ulPollByte,L.qciTab2maxGbrDl,L.qciTab65enforceTtiBundling,L.rlcProf4maxRetxThresh,L.rlcProf5tProhib,L.rlcProf8tProhib,L.caClusterNumEnb,L.qciTab1schedulPrio,L.qciTab3pdcpProfIdx,L.voiceSuppMatchInd,L.actCellTrace,L.idleTimeThresUtranNR,L.qciTab6pdcpProfIdx,L.qciTab6enforceTtiBundling,L.actDynTrigLteNrDualConnectivity,L.qciTab9rlcProfIdx,L.eea0,L.qciTab2lcgid,L.actS1Flex,L.actVendSpecCellTraceEnh,L.ulamcInactT,L.txPathFailureMode,L.pureRrcPreempPrioNB,L.tRimRirU,L.idleTimeThresNbEnbExch,L.actFlexBbUsage,L.actPcellSwap,L.qciTab4qci,L.qciTab8drxProfileIndex,L.ulpcRachTgtPwrDelta,L.qciTab7enforceTtiBundling,L.actMBMSServiceContinuity,L.rlcProf104snFieldLengthUL,L.rlcProf104tReord,L.actInterEnbDLCAggr,L.maxNumX2LinksOut,L.tRimRirG,L.actAcBarringRrcConn,L.actUeBasedAnrIntraFreqLte,L.rlcProfileId,L.actUplaneOvlHandling,L.eea3,L.eea2,L.qciTab7rlcProfIdx3cc,L.qciTab9prio,L.eea1,L.qciTab2schedulBSD,L.sCellpCellHARQFdbkUsage,L.qciTab8rlcProfIdx6cc7cc,L.actCiphering,L.qciTab4prio,L.actImmHRPD,L.rlcProf6tReordIsca,L.actRLFReportEval,L.qciTab7lcgid,L.qciTab65prio,L.qciTab3qci,L.actMultipleCarrier,L.actOperatorQCI,L.actSelMobPrf,L.qciTab5rlcMode,L.actEnhCbrsCAggr,L.actUserLayerTcpMssClamping,L.moProfileSelect,L.qciTab5resType,L.rlcProf3tReord,L.actAcSrvcc,L.qciTab2qciSupp,L.actMDTSubscriberTrace,L.class,L.qciTab3enforceTtiBundling,L.qciTab7qciSupp,L.actDLCAggr,L.qciTab3l2OHFactorDL,L.recoveryResetDelay,L.actUlInDevCoexGNSS,L.consecUtranHoFailThres,L.maxParallelOutX2SetupOrECU,L.otnRecoveryPeriod,L.qciTab9schedulPrio,L.tS1RelPrepU,L.pdcpProf103tDiscard,L.actSubscriberTrace,L.rlcProf101snFieldLengthUL,L.actVoLTEQualSRVCCtoGsm,L.actUlCoMp,L.qciTab4drxProfileIndex,L.pdcpProf102snSize,L.shutdownWindow,L.actAdvScellMeas,L.qciTab9schedulWeight,L.rlcProf1tReordIsca,L.actMDTCellTrace,L.qciTab70resType,L.rlcProf102tReord,L.actAmle,L.actUeBasedAnrInterFreqLte,L.qciTab65lcgid,L.actRrcConnNoActivity,L.mlbSpecialCase,L.actBbPooling,L.pdcpProf1tDiscard,L.rlcProf5pollPdu,L.qciTab9rlcProfIdx3cc,L.actTcpBoost,L.actSrvccToWcdma,L.pdcpProf1pdcpProfileId,L.rlcProf4tReordIsca,L.rlcProf2maxRetxThresh,L.tOverbookingAc,L.actAdvUlScellHandling,L.reportTimerIMLBA4,L.rlcProf2tPollRetr,L.qciTab8qci,L.actUeBasedAnrUtran,L.actVoLTEQualInterFreqMobility,L.defProfIdxUM,L.qciTab9lcgid,L.rlcProf1pollPdu,L.actDedVoLteInterFreqHo,L.qciTab4maxGbrDl,L.id,L.qciTab8qciSupp,L.tReord,L.qciTab1maxGbrUl,L.qciTab9dscp,L.rlcProf2tReord,L.qciTab6stopArpEnDc,L.pdcpProf4statusRepReq,L.qciTab6schedulBSD,L.actLBRTXPowerSaving,L.actRedirect,L.qciTab69dscp,L.maxNumOfLnadjLimit,L.pwrFallbackCa,L.actERabModify,L.pdcpProf1statusRepReq,L.qciTab9drxProfileIndex,L.actDualBand,L.preventPsHOtoWcdma,L.pdcpProf104pdcpProfileId,L.qciTab1prio,L.actAutoLteNeighRemoval,L.actIntraFreqPciSharing,L.actOperatorQCIGBR,L.rlcProf3tReordIsca,L.actHighPrioServices,L.pdcpProf5statusRepReq,L.maxRetxThreshSrbUL,L.actIdleLBCaAware,L.pdcpProf2pdcpProfileId,L.qciTab6rlcProfIdx4cc5cc,L.actUlTxSkip,L.qciTab9rlcProfIdx4cc5cc,L.actIdleLBSupportedBands,L.rlcProf4rlcProfileId,L.rlcProf5rlcProfileId,L.rlcProf8rlcProfileId,L.actMultBearers,L.rlcProf1maxRetxThresh,L.actServicePRButiL,L.nCqiRec,L.qciTab5schedulBSD,L.supportedCellTechnology,L.rlcProf4tPollRetr,L.qciTab7stopArpEnDc,L.rlcProf3maxRetxThresh,L.qciTab69lcgid,L.maxNumX2LinksIn,L.nRimRirU,L.actDualRx1xCsfb,L.actRIMforGSM,L.tHalfRrcCon,L.x2PrdRevalWaitTmr,L.qciTab8startArpEnDc,L.actGsmRedirWithSI,L.qciTab4qciSupp,L.qciTab7startArpEnDc,L.rlcProf102rlcProfileId,L.rlcProf2tReordIsca,L.actAdvStepwiseScellAdd,L.qciTab6dscp,L.rlcProf103rlcProfileId,L.rlcProf7tPollRetr,L.qciTab2rlcMode,L.qciTab4resType,L.qciTab6rlcMode,L.qciTab8resType,L.caIntraCellHoMode,L.qciTab3drxProfileIndex,L.qciTab4pdcpProfIdx,L.qciTab70lcgid,L.caMinDlAmbr,L.tPollRetrSrbUL,L.actSdl,L.actInterFreqRstdMeasSupp,L.qciTab66maxGbrDl,L.amRlcPBTab1ueCategory,L.rlcProf5tReordIsca,L.x2CfUpRdmDelayTmr,L.actMmecPlmnIdMmeSelection,L.maxNumClusterUe,L.actMFBI, L.rlcProf3tProhib,L.rlcProf4tProhib,L.ulpcRachPwrRipOffset,L.neighbCellChkStartTime,L.qciTab4schedulPrio,L.tempRadioMasterRecovTime,L.qciTab5enforceTtiBundling,L.actOptMmeSelection,L.mcc,L.qciTab3schedulBSD,L.actMeasBasedIMLB,L.upovlhaenableInHoRed,L.qciTab7lteNrDualConnectSupport,L.pdcpProf101tDiscard,L.idleTimeThresNbeNB,L.actFlexScellSelect,L.nbEnbExchWaitTmr,L.amRlcPBTab2ulPollByte,L.upovlhaenableRrcConnRed,L.qciTab2prio,L.nRimRirG,L.actCsgS1Mobility,L.qciTab9rlcProfIdx6cc7cc,L.btsType,L.qciTab6rlcProfIdx6cc7cc,L.rlcProf102snFieldLengthDL,L.actRsrqInterRatMobility,L.qciTab1rlcProfIdx,L.actAutoUtranNeighRemoval,L.actEmerCallRedir,L.actHeNBMobility,L.actAddA3HoCheck,L.actCellTraceWithIMSI,L.qciTab7qci,L.actLteNrDualConnectivity,L.actSatBackhaul,L.rlcProf1rlcProfileId,L.actZUC,L.qciTab65schedulBSD,L.actAutoAcBarring,L.qciTab8dscp,L.qciTab8rlcProfIdx3cc,L.actHOtoWcdma,L.qciTab66qci,L.upovlhaenableTxDivTransmission,L.actUeThroughputMeas,L.amRlcPBTab3ulPollByte,L.ulamcHistMcsT,L.actIntraFreqLoadBal,L.actMultGbrBearers,L.enableBwCombCheck,L.qciTab7dscp,L.scellMeasCycle,L.actMBMSPS,L.qciTab6qci,L.qciTab2drxProfileIndex,L.actRSRPRSRQHist,L.actTempRadioMaster,L.actPCMDReport,L.pbrNonGbr,L.cpovlhaenableInHoRed,L.qciTab1rlcMode,L.qciTab4delayTarget,L.qciTab3qciSupp,L.qciTab66schedulBSD,L.qciTab9resType,L.actSecRatRep,L.tS1RelOvDeltU,L.idleTimeThresLteNR,L.tS1RelOvDeltG,L.qciTab66rlcMode,L.qciTab2l2OHFactorDL,L.qciTab4l2OHFactorUL,L.userLayerTcpMss,L.actETWS,L.qciTab4schedulBSD,L.actMroInterRatUtran,L.qciTab4lcgid,L.qciTab8schedulPrio,L.actRadioPosFlexibility,L.cPlaneDscp,L.neighbCellChkPeriodicity,L.actPartialAcHo,L.actCAggrLteNrDualConnectivity,L.actIdleLBCaAwareAdv,L.actIMSEmerSessR9,L.pdcpProf5pdcpProfileId,L.tempRadioMasterTriggerTime,L.tHoOverallD,L.sCellActivationMethod,L.amRlcPBTab3dlPollByte,L.tRsrInitWait,L.rlcProf103tReord,L.tX2RelocPrep,L.actAcBarringPlmn,L.qciTab70rlcProfIdx3cc,L.amRlcPBTab5ueCategory,L.qciTab70schedulWeight,L.rlcProf2pollPdu,L.rlcProf6pollPdu,L.idleTimeThresX2,L.qciTab9qciSupp,L.planFileActivationMode,L.qciTab65rlcProfIdx,L.qciTab8lcgid,L.qciTab65maxGbrDl,L.qciTab5schedulPrio,L.pdcpProf101snSize,L.qciTab7pdcpProfIdx,L.rlcProf103snFieldLengthDL,L.actHighRrc,L.actPdcpRohc,L.supportedNumOfLnadj,L.actArpBasedQosProfiling,L.operationalState,L.qciTab65pdcpProfIdx,L.actLocRep,L.qciTab70enforceTtiBundling,L.actAutoPlmnRemoval,L.qciTab2pdcpProfIdx,L.qciTab69resType,L.acteNACCtoGSM,L.qciTab65resType,L.actLBPowerSaving,L.pdcpProf4pdcpProfileId,L.rlcProf6tReord,L.ulCaPathlossThr,L.qciTab3resType,L.s1PrdRevalWaitTmr,L.qciTab3rlcMode,L.actUTCBroadcast,L.qciTab3maxGbrDl,L.bbPoolMinResource,L.qciTab7rlcMode,L.prohibitLBHOTimer,L.pdcpProf102tDiscard,L.qciTab7resType,L.amRlcPBTab1dlPollByte,L.qciTab1qciSupp,L.qciTab5qciSupp,L.siteTemplateName,L.timeConnFailureThreshold,L.qciTab4dscp,L.actDLUnicastMbsfn,L.nullFallback,L.qciTab70prio,L.hpsSessArpMin,L.actHeNBS1Mobility,L.actTaHistCounters,L.prioTopoHO,L.actS1OlHandling,L.actHybridS1Mobility,L.qciTab7rlcProfIdx6cc7cc,L.amRlcPBTab4ulPollByte,L.actHoWoSnChg,L.nConsecHOPrepTimeouts,L.qciTab70qci,L.qciTab7schedulPrio,L.qciTab69prio,L.rlcProf7tProhib,L.pdcpProf3tDiscard,L.qciTab66lcgid,L.etwsPrimNotifBcDur,L.pdcpProf3pdcpProfileId,L.rlcProf1tReord,L.rlcProf2tProhib,L.qciTab69rlcProfIdx,L.bbPoolEvalPeriod,L.rlcProf5tPollRetr,L.rlcProf7tReordIsca,L.mmeAssignmentMode,L.qciTab8stopArpEnDc,L.actMappedBandIFMeas,L.pdcpProf103snSize,L.qciTab2maxGbrUl,L.amRlcPBTab3ueCategory,L.qciTab65rlcMode,L.qciTab8rlcProfIdx,L.qciTab70qciSupp,L.qciTab8lteNrDualConnectSupport,L.qciTab1drxProfileIndex,L.actRfChaining,L.actCRAN,L.rlcProf104snFieldLengthDL,L.s1InducedCellDeactDelayTime,L.maxParallelIncX2SetupOrECUOvl1,L.ilMinDatvolUlTcpBoost,L.anrRobLevelUtran,L.rlcProf101tReord,L.rlcProf1tPollRetr,L.amRlcPBTab5dlPollByte,L.qciTab66dscp,L.actInterFreqMDTCellTrace,L.qciTab69schedulBSD,L.qciTab2resType,L.skipEUTRANCapabilities,L.qciTab8rlcMode,L.rlcProf101snFieldLengthDL,L.qciTab1schedulBSD,L.maxNumPreEmptions,L.maxParallelIncX2SetupOrECUOvl0,L.mnc,L.actServBasedMobThr,L.qciTab3delayTarget,L.qciTab5dscp,L.qciTab70schedulBSD,L.qciTab69qci,L.tagMaxUM,L.qciTab1delayTarget,L.qciTab3l2OHFactorUL,L.qciTab66delayTarget,L.actDCN,L.qciTab9qci,L.qciTab1lcgid,L.rlcProf4tReord,L.actAnrRtt,L.qciTab3rlcProfIdx,L.qciTab70rlcProfIdx4cc5cc,L.qciTab8rlcProfIdx4cc5cc,L.actCMAS,L.qciTab69drxProfileIndex,L.actMDTloggedCellTrace,L.qciTab70dscp,L.qciTab70schedulPrio,L.qciTab7schedulBSD,L.qciTab2dscp,L.actL1PM,L.actTempHoBlacklisting,L.qciTab6rlcProfIdx,L.pdcpProf103pdcpProfileId,L.mainTransportNwId,L.actUeLevelMro,L.enbName,L.actRrcConnRelDelay,L.maxNumAnrMoiAllowed,L.qciTab66schedulPrio,L.rlcProf3pollPdu,L.actUeLocInfo,L.actRIMforUTRAN,L.rlcProf7pollPdu,L.rlcProf8tReord,L.qciTab9enforceTtiBundling,L.pdcpProf2statusRepReq,L.qciTab2schedulPrio,L.qciTab5rlcProfIdx,L.actPeriodicCarrierBlinking,L.actFlexQCIARPPMProfiles,L.pdcpProf104snSize,L.pdcpProf3statusRepReq,L.qciTab9lteNrDualConnectSupport,L.tChangeMobilityReq,L.actUtranLoadBal,L.qciTab4maxGbrUl,L.qciTab9startArpEnDc,L.qciTab8prio,L.actAcBarringRrcReq,L.actULCAggr,L.qciTab3schedulPrio,L.sCellActivationCyclePeriod,L.qciTab1maxGbrDl,L.qciTab70rlcMode,L.anrOmExtEnable,L.actCompChecks,L.qciTab8enforceTtiBundling,L.actQCIPLMNIDProfiles,L.actMBMS,L.qciTab4rlcProfIdx,L.qciTab69pdcpProfIdx,L.rlcProf6rlcProfileId,L.rlcProf7rlcProfileId,L.qciTab66qciSupp,L.actSnChangeSnInit,L.actIPv6MBMS,L.qciTab9schedulBSD,L.qciTab5schedulType,L.rlcProf2rlcProfileId,L.rlcProf3rlcProfileId,L.pdcpProf101rohcMaxCid,L.caConfigRatioOvl1,L.qciTab5pdcpProfIdx,L.upovlhaenableERabSetupRed,L.actNonGbrServiceDiff,L.actHOtoHrpd,L.actCsfbPsHoToUtra,L.actImmXrtt,L.actEnhAcAndGbrServices,L.rlcProf104rlcProfileId,L.pdcpProf4snSize,L.qciTab65dscp,L.rlcProf101rlcProfileId,L.hpsSessArpMax,L.qciTab66maxGbrUl,L.qciTab8schedulBSD,L.actDualCarrier,L.qciTab6startArpEnDc,L.actCSFBRedir,L.pdcpProf5snSize,L.rlcProf7tReord,L.qciTab65schedulPrio,L.qciTab7rlcProfIdx,L.scellActivationLevel,L.qciTab2qci,L.keyRefrMarg,L.qciTab6lteNrDualConnectSupport,L.tPollRetrSrbDL,L.rachAccessForHoFromUtran,L.maxRetxThreshSrbDL,L.qciTab8schedulWeight,L.actRsrqInterFreqMobility,L.actPreempVulCatM,L.qciTab5prio,L.tPollRetr,L.cpovlhaenableRrcConnRed,L.qciTab70rlcProfIdx,L.ulpcRssiMaxIAw,L.actRLFbasedRCRTargetCRNTI,L.actRLFbasedRCREnhanced,L.rlcProf1tProhib,L.rlcProf6tProhib,L.pdcpProf101pdcpProfileId,L.qciTab1qci,L.qciTab9pdcpProfIdx,L.nCqiDtx,L.qciTab3lcgid,L.srvccDelayTimer,L.qciTab5lcgid,L.qciTab70drxProfileIndex,L.qciTab7prio,L.pdcpProf104tDiscard,L.utranPrdRevalWaitTmr,L.actAcBarringACS,L.actLTES1Ho,L.qciTab7rlcProfIdx4cc5cc,L.tRimPollG,L.actContextPreemption,L.qciTab69rlcMode,L.pdcpProf3snSize,L.actPlmnUnavailForCellReport,L.supportedNumOfAnrMoi,L.actSrvccToGsm,L.tRimPollU,L.eia3,L.actA3ScellSelect,L.eia2,L.actInterFreqLB,L.eia1,L.eia0,L.rlcProf6tPollRetr,L.anrIfTRSC,L.geranDtmCap,L.qciTab65delayTarget,L.actAcBarringCFR,L.pdcpProf102pdcpProfileId,L.pdcpProf1snSize,L.pdcpProf4tDiscard,L.qciTab66resType,L.actCaIntraCellHo,L.actProSeComm,L.qciTab4rlcMode,L.actPlmnBasedPreemption,L.qciTab1resType,L.qciTab6prio,L.qciTab6schedulPrio,L.actLPPaEcid,L.qciTab6resType,L.qciTab9rlcMode,L.caSchedFairFact,L.actInterEnbULCAggr,L.qciTab6qciSupp,L.actOptimizedBbUsage,L.multScellReleaseTimer,L.forcedPlanFileActivation,L.congWeightAlg,L.rlcProf3tPollRetr,L.actDynMBMSRes,L.actIdleLB,L.qciTab4l2OHFactorDL,L.act1xCsfb,L.defProfIdxAM,L.pdcpProf2snSize,L.qciTab70pdcpProfIdx,L.actRRCConnReestablRLF,L.pwsWithEmAreaId,L.qciTab7schedulWeight,L.qciTab3dscp,L.actLPPaOtdoa,L.anrRobLevel,L.rrcGuardTimer,L.qciTab2l2OHFactorUL,L.qciTab66enforceTtiBundling,L.actPubSafetyBearers,L.time_stamp,L.actLteU,L.caClusterId,L.caClusterMemberId,L.actGTPpktSeqMon,L.qciTab4gbrOverbookingFactor,L.caUlIntraBandAmpr,L.rlcProf5snFieldLengthDl,L.actLteNrDss,L.dlCaPreferred,L.qciTab70stopArpEnDc,L.rlcProf4snFieldLengthDl,L.actTM9Block,L.pdcpProf1001snSizeDl,L.rlcProf6snFieldLengthDl,L.zsonOpMode,L.rlcProf3snFieldLengthDl,L.actVoLteNoEnDc,L.qciTab70lteNrDualConnectSupport,L.qciTab69stopArpEnDc,L.caMinUlAmbr,L.zsonEventTriggerEnable,L.actLteNrFastNbrRelAdd,L.actProhibitWcdmaMobPreQci1,L.actVoLTEQualSrvccToWcdma,L.maxEUTRANCapabilitySize,L.actReduceAcqiReqTxSkip,L.rlcProf1snFieldLengthDl,L.qciTab3gbrOverbookingFactor,L.rlcProf2snFieldLengthDl,L.ilGrantGapTcpBoostTxSkip,L.timeOfContBadUlPktsToTrigHoForHfnReset,L.ilReacTimerUlTxSkip,L.actEnDcX2PartialReset,L.qciTab69lteNrDualConnectSupport,L.rlcProf6snFieldLengthUl,L.qciTab69startArpEnDc,L.actIdleLBTM9aware,L.tLteNrDualConnectPrep,L.actMultiSCGSplit,L.rlcProf5snFieldLengthUl,L.interFreqPCISharing,L.qciTab2gbrOverbookingFactor,L.rlcProf4snFieldLengthUl,L.qciTab5lteNrDualConnectSupport,L.pdcpProf1001snSizeUl,L.actRCEFReporting,L.actEvtSecRatRep,L.actSIB24,L.actUlpcDiffPusch,L.rlcProf3snFieldLengthUl,L.actProhibitCaSpecCellDepl,L.oldDN,L.ilGrantGapTxSkip,L.enableCombRsrpRsrq,L.actEndcHo,L.rlcProf1snFieldLengthUl,L.pdcpProf1001statusRepReq,L.actRCREnDc,L.pdcpProf1001tDiscard,L.pdcpProf1001pdcpProfileId,L.qciTab5startArpEnDc,L.ilReacTimerUlTcpBoostTxSkip,L.actLPPaEcidNB,L.qciTab5stopArpEnDc,L.actStepAddBearENDC,L.actRLFbasedRCRConfigL1,L.rlcProf2snFieldLengthUl,L.commLossRecoveryTimer,L.qciTab70startArpEnDc,L.actLocRepNB,L.qciTab9arpEnDcMask,L.actCmasConfigurablePrio,L.actLaaPrefOverEnDc,L.enableBwComSetChkEnDc,L.qciTab70arpEnDcMask,L.actIdleLBNrAware,L.qciTab69nrPdcpProfIdx,L.actCellTraceNB,L.actMultiSCGSplitwoeLcId,L.actFlexCaMgmt,L.qciTab69arpEnDcMask,L.actRLFbasedRCREnhancedIntra,L.actReturnTo5GSA,L.qciTab7nrPdcpProfIdx,L.nrRestrictionOverride,L.qciTab6arpEnDcMask,L.actMeasGapIfEnDc,L.actPeriodicB1NR,L.qciTab70nrPdcpProfIdx,L.actEnDcLteDlMimoOptBcSel,L.actPMQAPProfilesExtension,L.actX2gNB128,L.qciTab8nrPdcpProfIdx,L.qciTab7arpEnDcMask,L.qciTab9nrPdcpProfIdx,L.actMeasGapCoordEnDc,L.arpOffsetUsageOnBBpool,L.actRCRMacRetry,L.actUeBasedAnrNr,L.actCoC2kWcdmaGsmMob,L.actArpAcOffset,L.qciTab8arpEnDcMask,L.actDrxCoordEnDc,L.actHoFromNr,L.actEnhFlexCaWithEnDc,L.actEnDcNrFeatSetIdBcSel,L.actLoadPmCounter,L.actB1NrBasedImlb5GSa,L.qciTab6nrPdcpProfIdx,L.actOptimizedL3Pool,L.actIdleLBEnDcAware,L.qciTab5arpEnDcMask,L.actAcBarringSpecialClass,L.actEndcAutoX2Setup,L.qciTab8boostFactorUl,L.qciTab8boostFactorDl,L.qciTab5nrPdcpProfIdx,L.tmpActFeat1,L.reqFreqBands_bandPrio_2,L.reqFreqBands_bandPrio_1,L.actB1NrBasedImlb,L.reqFreqBands_bandNumber_2,L.reqFreqBands_bandNumber_1,L.tmpParam1,L.forcedDrxTReportCGI,F.actMFBI AS actMFBI_1, F.actSrvccToWcdma AS actSrvccToWcdma_1, F.actUnlicensedDfs,F.tempRadioMasterRecovTime AS tempRadioMasterRecovTime_1, F.actDedFreqListsLB,F.actIMSEmerSessR9 AS actIMSEmerSessR9_1, F.actDistributedSite AS actDistributedSite_1, F.cIoTEpsPlmnIdList_attachNoPDNConn_1,F.tempRadioMasterTriggerTime AS tempRadioMasterTriggerTime_1, F.actProSeComm AS actProSeComm_1, F.actTempRadioMaster AS actTempRadioMaster_1, F.actUnlicensedAcc,F.cIoTEpsPlmnIdList_mncLength_1,F.actDedVoLteInterFreqHo AS actDedVoLteInterFreqHo_1, F.id AS id_1, F.actOptimizedBbUsage AS actOptimizedBbUsage_1, F.cIoTEpsPlmnIdList_mcc_1,F.class AS class_1, F.actConvVoice AS actConvVoice_1, F.actMultefire,F.actUnlicensedDcs,F.actPeriodicCarrierBlinking AS actPeriodicCarrierBlinking_1, F.actSfn,F.numTxWithHighNonGbr AS numTxWithHighNonGbr_1, F.actFlexBbUsage AS actFlexBbUsage_1, F.actUtranLoadBal AS actUtranLoadBal_1, F.version AS version_1, F.act1xSrvcc AS act1xSrvcc_1, F.actDualBand AS actDualBand_1, F.actHighRrc AS actHighRrc_1, F.actDlIntShaping AS actDlIntShaping_1, F.preventPsHOtoWcdma AS preventPsHOtoWcdma_1, F.actInterFreqServiceBasedHo AS actInterFreqServiceBasedHo_1, F.actSrvccToGsm AS actSrvccToGsm_1, F.distName AS distName_1, F.actInDevCoexLaa,F.cIoTEpsPlmnIdList_mnc_1,F.actHighPrioServices AS actHighPrioServices_1, F.actPubSafetyBearers AS actPubSafetyBearers_1, F.rc_name AS rc_name_1, F.time_stamp AS time_stamp_1, F.maxBtsTimeError,F.actLaaDpc,F.actInterSiteLaa
FROM (lnbts AS L LEFT JOIN lnbts_fdd AS F ON (L.distName=SUBSTRING_INDEX(F.distName,'/LNBTS_FDD',1))) LEFT JOIN baseline AS B ON (B.Sitio = L.name)
ORDER BY L.name IS NULL OR L.name='', L.name;
--
--
-- LNCEL full
DROP TABLE IF EXISTS LNCEL_Full;
CREATE TABLE LNCEL_Full ENGINE=MyISAM AS
SELECT DISTINCT
L.name AS LNCELname, concat(B.Market,'-',B.`Localidad (CRC)`) AS Cluster, B.Region AS Region, B.Departamento AS Depto, B.Municipio AS Mun,
CONCAT(LB.LNBTSname, substr(L.name,-1,1)) AS KeySector, LB.PLMN_id, substr(L.name,1,3) AS Prefijo, substr(L.name,-1,1) AS Sector,
CASE WHEN F.earfcnDL BETWEEN 2750 and 3449 THEN 2600 ELSE (CASE WHEN F.earfcnDL BETWEEN 600 and 1199 THEN 1900 ELSE (CASE WHEN F.earfcnDL BETWEEN 9210 and 9659 THEN 700 ELSE (CASE WHEN F.earfcnDL BETWEEN 2400 and 2649 THEN 850 ELSE NULL END)END)END)END AS Banda, LB.MRBTS_id,LB.LNBTS_id, SUBSTRING_INDEX(L.distName,'LNCEL-',-1) AS LNCEL_id, LB.LNBTSname, LB.operationalState AS LNBTS_OpSt, L.administrativeState AS LNCEL_AdSt, L.Operationalstate AS LNCEL_OpSt, CASE WHEN F.dlRsBoost=700 THEN -3 ELSE (CASE WHEN F.dlRsBoost=1000 THEN 0 ELSE (CASE WHEN F.dlRsBoost=1177 THEN 1.77 ELSE (CASE WHEN F.dlRsBoost=1300 THEN 3 ELSE (CASE WHEN F.dlRsBoost=1477 THEN 4.77 ELSE (CASE WHEN F.dlRsBoost=1600 THEN 6 ELSE NULL END)END)END)END)END)END AS PowerBoost, L.phyCellId, Round((3*(L.phyCellId*1.0/3-CAST(L.phyCellId/3 AS UNSIGNED))),0) as PCIMod3, Round((6*(L.phyCellId*1.0/6-CAST(L.phyCellId/6 AS UNSIGNED))),0) as PCIMod6, Round((30*(L.phyCellId*1.0/30-CAST(L.phyCellId/30 AS UNSIGNED))),0) as PCIMod30, CASE WHEN (LB.operationalState=5 AND L.administrativeState=1 AND L.operationalState=1) THEN 1 ELSE 0 END AS Estado,
L.qrxlevmin, F.dlChBw AS dlChBw1, L.dlChBw AS dlChBw2, L.earfcnDL as earfcnDL1, F.earfcnDL,L.earfcnUL AS earfcnUL1, F.earfcnUL, L.cellReSelPrio AS cellReSelPrio1, S.cellReSelPrio,
L.a1ReportInterval,L.a1TimeToTriggerDeactInterMeas,L.a2RedirectQci1,L.a2TimeToTriggerActC2kMeas,L.a2TimeToTriggerActGERANMeas,L.a2TimeToTriggerActInterFreqMeas,L.a2TimeToTriggerActWcdmaMeas,L.a2TimeToTriggerMobRsrq,L.a2TimeToTriggerRedirect,L.a2TimeToTriggerRedirectRsrq,L.a3Offset,L.a3ReportAmount,L.a3ReportInterval,L.a3TimeToTrigger,L.a3TriggerQuantityHO,L.a5ReportAmount,L.a5ReportInterval,L.a5TimeToTrigger,L.a5TriggerQuantityIntraFreqHO,L.acBarCsfbOcacBarAC,L.acBarCsfbOcacBarTime,L.acBarCsfbOcOvlacBarACOvl,L.acBarCsfbOcOvlacBarTimeOvl,L.acBarCsfbOcOvlprobFacOvl,L.acBarCsfbOcprobFac,L.acBarMMTelVideoOcacBarAC,L.acBarMMTelVideoOcacBarTime,L.acBarMMTelVideoOcOvlacBarACOvl,L.acBarMMTelVideoOcOvlacBarTimeOvl,L.acBarMMTelVideoOcOvlprobFacOvl,L.acBarMMTelVideoOcprobFac,L.acBarMMTelVoiceOcacBarAC,L.acBarMMTelVoiceOcacBarTime,L.acBarMMTelVoiceOcOvlacBarACOvl,L.acBarMMTelVoiceOcOvlacBarTimeOvl,L.acBarMMTelVoiceOcOvlprobFacOvl,L.acBarMMTelVoiceOcprobFac,L.acBarSkipForMMTELVideo,S.acBarSkipForMMTELVideo AS acBarSkipForMMTELVideo_2,L.acBarSkipForMMTELVoice,S.acBarSkipForMMTELVoice AS acBarSkipForMMTELVoice_2,L.acBarSkipForSMS,S.acBarSkipForSMS AS acBarSkipForSMS_2,S.acbECTimer,S.acbImmediateMax,S.acbNumRrcConnCellStart,S.acbNumRrcConnCellStop,S.acbNumRrcReqStart,S.acbNumRrcReqStop,S.acbNumSteps,S.acbPlmnNumSteps,S.acbProfileId,S.acbRrcConnCellStartTimer,S.acbRrcConnCellStopTimer,S.acbRrcReqFactor,S.acbUpdateTimer,L.act1TxIn2Tx,F.act1TxIn2Tx AS act1TxIn2Tx_1,L.act3fdd3tddRestrict,L.actAcHpsLimits,L.actAir2Ground,L.actAmle,L.actAmleServCellFilter,L.actAntPortMap,F.actAperPmiPolling,L.actAutoPucchAlloc,F.actAutoPucchAlloc AS actAutoPucchAlloc_1,L.actCaArchEnh,L.actCaArchEnhImp,L.actCaBlocking,L.actCarelCounters,L.actCaScellSchedWeightFactor,F.actCatM,L.actCombSuperCell,F.actCombSuperCell AS actCombSuperCell_1,L.actCsiRsSubFNonTM9Sch,L.actDataSessionProf,L.actDeltaCqiAgingScellChEst,L.actDl256QamChQualEst,L.actDlIsh,F.actDlMuMimo,L.actDlPwBackoff,L.actDlsLdAdaptPf,F.actDlSlimCarrier,L.actDlsOldtc,L.actDlsVoicePacketAgg,L.actDownSampling,L.actDrx,L.actDrxDuringMeasGap,L.actDrxDuringTTIB,L.actDynamicDataSessionProf,L.actEDrxIdle,L.actEicic,L.actEirpControl,L.actFastMimoSwitch,F.actFastMimoSwitch AS actFastMimoSwitch_1,L.actFastPdcchAdapt,L.actFlexDupGap,L.actFlowCtrlEnh,L.actForcedDrxS1Ho,L.actGsmSrvccMeasOpt,L.actHapPrachCfg,L.actHapPrachTaFilt,L.actInactiveTimeForwarding,L.actInterFreqLB,L.actInterFreqSPIDBasedHo,L.actIntraFreqLoadBal,L.activatedMimoTM,F.activatedMimoTM AS activatedMimoTM_1,L.actLBSpidUeSel,L.actLdPdcch,L.actLiquidCell,F.actLiquidCell AS actLiquidCell_1,L.actMaxNumUeDlNonGbr,L.actMcsUpgrade,L.actMfbiDupFre,L.actMicroDtx,F.actMMimo,L.actModulationSchemeDl,L.actModulationSchemeUL,L.actNBIoT,L.actNbrForNonGbrBearers,L.actNoIntraBandIFMeasurements,L.actOlLaPdcch,L.actOtdoa,F.actPdcchLoadGen,L.actPdcchQci1SrbControl,L.actProactSchedBySrb,L.actPrsTxDiv,F.actPusch100Prb,L.actPuschMask,F.actPuschMask AS actPuschMask_1,L.actPuschPrbDistribution,L.actQci1BlerTgt,L.actQci1eVTT,L.actQci1RfDrx,L.actRbr,F.actRedFreqOffset,L.actReducedFormat,L.actRepeaterMode,F.actRepeaterMode AS actRepeaterMode_1,L.actResourceAllocType1,L.actRIPAlarming,F.actRIPAlarming AS actRIPAlarming_1,L.actScellBadChQualExtMonitor,L.actScellConfigForHiDemand,L.actSdlc,F.actSdlc AS actSdlc_1,L.actServRlqInterFreqLB,F.actShutdownTxPath,L.actSixIfMeasurements,F.actSlimCoexCatM,L.actSmartDrx,L.actSpatialPucchBundling,L.actSrb1Robustness,F.actSrs14Pos,L.actSuperCell,F.actSuperCell AS actSuperCell_1,L.actTcpServiceDiff,L.actTcpUlPowerBoost,F.actTmSwitchMMimo,L.actTtibAcqi,L.actTtibAdaptUlMinTbs,L.actTtibRsc,L.actTtiBundling,L.actUciOnlyGrants,F.actUciOnlyGrants AS actUciOnlyGrants_1,L.actUePowerBasedMobThr,L.actUl256QamChQualEst,L.actUlDynamicTargetBler,L.actUlGrpHop,L.actUlLnkAdp,L.actUlMultiCluster,F.actUlMultiCluster AS actUlMultiCluster_1,L.actUlpcMethod,L.actUlpcRachPwrCtrl,F.actUlPwrRestrScn,L.actUlsLdAdaptPf,L.actUlsOptimizePrbMcs,L.actVoipCovBoost,L.actVoipCovBoostEnh,L.actVoLteSrcRate,L.adaptMaxUEConn,L.adaptPdcchDwellTime,L.addAUeRrHo,L.addAUeTcHo,L.addEmergencySessions,L.addGbrTrafficRrHo,L.addGbrTrafficTcHo,L.addNumDrbRadioReasHo,F.addNumDrbRadioReasHo AS addNumDrbRadioReasHo_1,L.addNumDrbTimeCriticalHo,F.addNumDrbTimeCriticalHo AS addNumDrbTimeCriticalHo_1,L.addNumQci1DrbRadioReasHo,F.addNumQci1DrbRadioReasHo AS addNumQci1DrbRadioReasHo_1,L.addNumQci1DrbTimeCriticalHo,F.addNumQci1DrbTimeCriticalHo AS addNumQci1DrbTimeCriticalHo_1,L.addSpectrEmi,L.alarmThresholdCrossingTime,F.alarmThresholdCrossingTime AS alarmThresholdCrossingTime_1,L.alarmThresholdULSF,F.alarmThresholdULSF AS alarmThresholdULSF_1,L.allowPbIndexZero,L.altitude,L.amleMaxNumHo,L.amlePeriodLoadExchange,L.amountBlankedRes,L.amRlcSnFieldLengthDl,L.angle,L.applyFeicicFunctionality,L.applyOutOfSyncState,L.arpPrioLev,L.autoAcBarringStartTimer,S.autoAcBarringStartTimer AS autoAcBarringStartTimer_2,L.autoACBarringStopTimer,S.autoAcbPlmnRmvlStopTimer,S.autoPlmnRmvlStartTimer,L.blacklistHoL_blacklistTopo_1,L.blacklistHoL_blacklistTopo_2,L.blacklistHoL_blacklistTopo_3,L.blacklistHoL_blacklistTopo_4,L.blacklistHoL_blacklistTopo_5,L.blacklistHoL_blacklistTopo_6,L.blacklistHoL_blacklistTopo_7,L.blacklistHoL_blacklistTopo_8,L.blacklistHoL_blacklistTopo_9,L.blacklistHoL_freqEutra_1,L.blacklistHoL_freqEutra_2,L.blacklistHoL_freqEutra_3,L.blacklistHoL_freqEutra_4,L.blacklistHoL_freqEutra_5,L.blacklistHoL_freqEutra_6,L.blacklistHoL_freqEutra_7,L.blacklistHoL_freqEutra_8,L.blacklistHoL_freqEutra_9,L.blacklistHoL_phyCellIdRange_1,L.blacklistHoL_phyCellIdRange_2,L.blacklistHoL_phyCellIdRange_3,L.blacklistHoL_phyCellIdRange_4,L.blacklistHoL_phyCellIdRange_5,L.blacklistHoL_phyCellIdRange_6,L.blacklistHoL_phyCellIdRange_7,L.blacklistHoL_phyCellIdRange_8,L.blacklistHoL_phyCellIdRange_9,L.blacklistHoL_phyCellIdStart_1,L.blacklistHoL_phyCellIdStart_2,L.blacklistHoL_phyCellIdStart_3,L.blacklistHoL_phyCellIdStart_4,L.blacklistHoL_phyCellIdStart_5,L.blacklistHoL_phyCellIdStart_6,L.blacklistHoL_phyCellIdStart_7,L.blacklistHoL_phyCellIdStart_8,L.blacklistHoL_phyCellIdStart_9,L.blankedPucch,F.blankedPucch AS blankedPucch_1,L.boostGuardTime,L.caPoolId,F.catMBProfId,F.catMProfId,L.cellBarred,S.cellBarred AS cellBarred_2,L.cellCapClass,L.cellIndOffServ,L.cellName,L.cellPwrRedForMBMS,L.cellResetRequest,L.cellResourceSharingMode,S.cellSelectionInfoV920qQualMinOffsetR9,S.cellSelectionInfoV920qQualMinR9,L.cellSrPeriod,L.cellTechnology,L.cellType,L.celResTiFHM,S.celResTiFHM AS celResTiFHM_2,L.celResTiFMM,S.celResTiFMM AS celResTiFMM_2,L.class,F.class AS class_1,S.class AS class_2,L.confidence,L.cqiAperEnable,L.cqiAperMode,F.cqiAperPollT,L.cqiPerNp,L.cqiPerSbCycK,L.cqiPerSimulAck,L.creCqiAvg,L.csgType,F.csiRepSubmode,F.csiRsConfigInfocsiRsPwrOffset,L.csiRsPwrOffset,F.csiRsPwrOffset AS csiRsPwrOffset_1,L.csiRsPwrOffsetAP,F.csiRsPwrOffsetAP AS csiRsPwrOffsetAP_1,L.csiRsPwrOffsetOverlap,F.csiRsPwrOffsetOverlap AS csiRsPwrOffsetOverlap_1,L.csiRsResourceConf,F.csiRsResourceConf AS csiRsResourceConf_1,L.csiRsSubfr,F.csiRsSubfr AS csiRsSubfr_1,L.csiRsSubfrConf,F.csiRsSubfrConf AS csiRsSubfrConf_1,S.dayLt,L.defaultLnRelGnbCellId,L.defPagCyc,L.degreesOfLatitude,L.degreesOfLongitude,L.deltaFPucchF1bCSr10,S.deltaFPucchF1bCSr10 AS deltaFPucchF1bCSr10_2,L.deltaFPucchF3r10,S.deltaFPucchF3r10 AS deltaFPucchF3r10_2,L.deltaLbCioMargin,L.deltaPreMsg3,L.deltaPucchShift,L.deltaTfEnabled,L.deploymentType,L.dFpucchF1,L.dFpucchF1b,L.dFpucchF2,L.dFpucchF2a,L.dFpucchF2b,L.directionOfAltitude,L.distName,F.distName AS distName_1,S.distName AS distName_2,L.dl256QamDeactChQualThr,L.dl256QamReactChQualThr,L.dl64QamEnable,L.dlamcCqiDef,L.dlamcEnable,L.dlCaCqiWindow,L.dlCaMinPcellCqi,L.dlCaMinPcellCqiQci1,L.dlCellPwrRed, L.dlInterferenceEnable,L.dlInterferenceLevel,L.dlInterferenceModulation,L.dlMaxBoostBytes,L.dlMimoMode,F.dlMimoMode AS dlMimoMode_1,L.dlMinBoostBytes,L.dlOlqcEnable,L.dlPathlossChg,L.dlPcfichBoost,L.dlpcMimoComp,F.dlpcMimoComp AS dlpcMimoComp_1,L.dlPhichBoost,L.dlPwBackoffApp,L.dlPwBackoffThreshold,L.dlRsBoost,F.dlRsBoost AS dlRsBoost_1,L.dlsDciCch,L.dlsOldtcTarget,L.dlsPdschNbrCongDetAct,L.dlSrbCqiOffset,F.dlSrbMimoMode,L.dlsUsePartPrb,L.dlTargetBler,L.drxApplyDeviceType,L.drxInactivityT,L.drxLongCycle,L.drxOnDuratT,L.drxProfile101drxInactivityT,L.drxProfile101drxLongCycle,L.drxProfile101drxOnDuratT,L.drxProfile101drxProfileIndex,L.drxProfile101drxProfilePriority,L.drxProfile101drxRetransT,L.drxProfile102drxInactivityT,L.drxProfile102drxLongCycle,L.drxProfile102drxOnDuratT,L.drxProfile102drxProfileIndex,L.drxProfile102drxProfilePriority,L.drxProfile102drxRetransT,L.drxProfile103drxInactivityT,L.drxProfile103drxLongCycle,L.drxProfile103drxOnDuratT,L.drxProfile103drxProfileIndex,L.drxProfile103drxProfilePriority,L.drxProfile103drxRetransT,L.drxProfile105drxInactivityT,L.drxProfile105drxLongCycle,L.drxProfile105drxOnDuratT,L.drxProfile105drxProfileIndex,L.drxProfile105drxProfilePriority,L.drxProfile105drxRetransT,L.drxProfile1drxProfileIndex,L.drxProfile1drxProfilePriority,L.drxProfile2drxInactivityT,L.drxProfile2drxLongCycle,L.drxProfile2drxOnDuratT,L.drxProfile2drxProfileIndex,L.drxProfile2drxProfilePriority,L.drxProfile2drxRetransT,L.drxProfile3drxInactivityT,L.drxProfile3drxLongCycle,L.drxProfile3drxOnDuratT,L.drxProfile3drxProfileIndex,L.drxProfile3drxProfilePriority,L.drxProfile3drxRetransT,L.drxProfile4drxInactivityT,L.drxProfile4drxLongCycle,L.drxProfile4drxOnDuratT,L.drxProfile4drxProfileIndex,L.drxProfile4drxProfilePriority,L.drxProfile4drxRetransT,L.drxProfile5drxInactivityT,L.drxProfile5drxLongCycle,L.drxProfile5drxOnDuratT,L.drxProfile5drxProfileIndex,L.drxProfile5drxProfilePriority,L.drxProfile5drxRetransT,L.drxProfileIndex,L.drxProfilePriority,L.drxRetransT,L.drxSmartProfile2drxInactivityT,L.drxSmartProfile2drxLongCycle,L.drxSmartProfile2drxOnDuratT,L.drxSmartProfile2drxProfileIndex,L.drxSmartProfile2drxProfilePriority,L.drxSmartProfile2drxRetransT,L.drxSmartProfile2drxShortCycle,L.drxSmartProfile2drxShortCycleT,L.drxSmartProfile2smartStInactFactor,L.drxSmartProfile3drxInactivityT,L.drxSmartProfile3drxLongCycle,L.drxSmartProfile3drxOnDuratT,L.drxSmartProfile3drxProfileIndex,L.drxSmartProfile3drxProfilePriority,L.drxSmartProfile3drxRetransT,L.drxSmartProfile3drxShortCycle,L.drxSmartProfile3drxShortCycleT,L.drxSmartProfile3smartStInactFactor,L.drxSmartProfile4drxInactivityT,L.drxSmartProfile4drxLongCycle,L.drxSmartProfile4drxOnDuratT,L.drxSmartProfile4drxProfileIndex,L.drxSmartProfile4drxProfilePriority,L.drxSmartProfile4drxRetransT,L.drxSmartProfile4drxShortCycle,L.drxSmartProfile4drxShortCycleT,L.drxSmartProfile4smartStInactFactor,L.drxSmartProfile5drxInactivityT,L.drxSmartProfile5drxLongCycle,L.drxSmartProfile5drxOnDuratT,L.drxSmartProfile5drxProfileIndex,L.drxSmartProfile5drxProfilePriority,L.drxSmartProfile5drxRetransT,L.drxSmartProfile5drxShortCycle,L.drxSmartProfile5drxShortCycleT,L.drxSmartProfile5smartStInactFactor,L.dSrTransMax,L.eCallAcBarred,S.eCallAcBarred AS eCallAcBarred_2,L.eCallAcBarredOvl,S.eCallAcBarredOvl AS eCallAcBarredOvl_2,L.ecidMeasSupervisionTimer,L.eIcicAbsAdaptationBeta,L.eIcicAbsAdaptationThreshold0To1,L.eIcicAbsDeltaAdjustment,L.eIcicAbsPatChangeDelayT,L.eIcicCioAdaptAlgo,L.eIcicCreDelta,L.eIcicMaxCre,L.eIcicMaxMutePattern,L.eIcicMaxNumPartners,L.eIcicMp0DelayT,L.eIcicPartnerCacAbsTarget,L.eIcicPartnerCacTarget,L.enableAmcPdcch,L.enableBetterCellHo,L.enableCovHo,L.enableDl16Qam,L.enableLowAgg,L.enablePcPdcch,L.enableVoLteUePcellSwap,L.energySavingState,L.eUlLaAtbPeriod,L.eUlLaBlerAveWin,L.eUlLaDeltaMcs,L.eUlLaLowMcsThr,L.eUlLaLowPrbThr,L.eUlLaPrbIncDecFactor,L.eutraCelId,L.expectedCellRange,L.expectedCellSize,L.filterCoeff,L.filterCoefficientCpichEcn0,L.filterCoefficientCpichRscp,L.filterCoefficientCSFBCpichEcn0,L.filterCoefficientCSFBCpichRscp,L.filterCoefficientRSRP,L.filterCoefficientRSRQ,L.filterCoefficientRSSI,F.fourLayerMimoAvSpectralEff,L.fUlLAAtbTrigThr,L.furtherPlmnIdL_autoRemovalAllowed_1,L.furtherPlmnIdL_cellReserve_1,L.furtherPlmnIdL_mcc_1,L.furtherPlmnIdL_mnc_1,L.furtherPlmnIdL_upperLayerIndicationR15_1,L.gbrCongHandling,L.grpAssigPUSCH,L.harqMaxMsg3,L.harqMaxTrDl,L.harqMaxTrSignalingDl,L.harqMaxTrUlTtiBundling,L.harqMaxTrVoLteDl,L.harqMaxTxUl,L.heNBName,S.heNBName AS heNBName_2,L.highLoadGbrDl,L.highLoadNonGbrDl,L.highLoadPdcch,L.hopModePusch,L.hysA3Offset,L.hysteresisLoadDlGbr,L.hysteresisLoadDlNonGbr,L.hysteresisLoadPdcch,L.hysThreshold2a,L.hysThreshold2C2k,L.hysThreshold2GERAN,L.hysThreshold2InterFreq,L.hysThreshold2MobRsrq,L.hysThreshold2Wcdma,L.hysThreshold3,L.hysThreshold4,L.hysThreshold4Rsrq,L.id,F.id AS id_1,S.id AS id_2,L.idleLBCapThresh,L.idleLBCapThreshCaUe,L.idleLBCapThreshCaUeAdv,L.idleLBCellReSelPrioEnDc,L.idleLBCelResWeight,L.idleLBCelResWeightEnDc,L.idleLBPercCaUe,L.idleLBPercentageOfUes,L.idleLBPercUeTM9,L.iFLBA4ActLim,L.iFLBBearCheckTimer,L.iFLBCandSelUpdateTimer,L.iFLBHighLoadGBRDL,L.iFLBHighLoadNonGBRDL,L.iFLBHighLoadPdcch,L.iFLBLoadStepGBRDL,L.iFLBLoadStepNonGBRDL,L.iFLBLoadStepPdcch,L.iFLBRetryTimer,L.iFServiceBasedHoRetryTimer,L.ilReacTimerUl,L.inactivityTimer,L.inactivityTimerMult,L.inactivityTimerPubSafety,L.inactivityTimerQci5Sign,L.incIRATHeadroom,L.iniDl256QamChQualEst,L.iniMcsDl,L.iniMcsUl,L.iniPrbsUl,L.iniUl256QamChQualEst,L.intraPresAntP,S.intraPresAntP AS intraPresAntP_2,L.intrFrqCelRes,S.intrFrqCelRes AS intrFrqCelRes_2,L.ishPrId,L.latitudeSign,L.lbLoadFilCoeff,L.lcrId,L.liquidCellSuMuMode,F.liquidCellSuMuMode AS liquidCellSuMuMode_1,F.lnuprId,L.loadBalancingProfile,L.longPeriodScellChEst,L.lowerMarginCio,L.lteNrDssMode,S.ltmOff,L.maxBitrateDl,L.maxBitrateUl,L.maxCrPgDl,L.maxCrRa4Dl,L.maxCrRaDl,L.maxCrRaDlHo,L.maxCrSibDl,L.maxDlPwBackoffValue1,L.maxDlPwBackoffValue2,L.maxGbrTrafficLimit,L.maxLbPartners,L.maxNbrTrafficLimit,L.maxNrSymPdcch,F.maxNrSymPdcch AS maxNrSymPdcch_1,L.maxNumActDrb,F.maxNumActDrb AS maxNumActDrb_1,L.maxNumActUE,F.maxNumActUE AS maxNumActUE_1,L.maxNumAmleNeigh,L.maxNumCaConfUe,F.maxNumCaConfUe AS maxNumCaConfUe_1,L.maxNumCaConfUe3c,F.maxNumCaConfUe3c AS maxNumCaConfUe3c_1,L.maxNumCaConfUeDc,F.maxNumCaConfUeDc AS maxNumCaConfUeDc_1,L.maxNumCaUeScell,L.maxNumIFCarrMeas,L.maxNumQci1Drb,F.maxNumQci1Drb AS maxNumQci1Drb_1,L.maxNumRrc,L.maxNumRrcEmergency,L.maxNumScells,L.maxNumUeDl,F.maxNumUeDl AS maxNumUeDl_1,L.maxNumUeProactiveUl,L.maxNumUeProactiveUlNonTxSkip,L.maxNumUeUl,F.maxNumUeUl AS maxNumUeUl_1,L.maxNumVoLteProactUlGrantsPerTti,L.maxPdcchAgg,L.maxPdcchAggHighLoad,L.maxPeriodicCqiIncrease,L.maxPhyCces,L.maxPrbHighPrioUciGrant,F.maxPrbHighPrioUciGrant AS maxPrbHighPrioUciGrant_1,L.maxPrbsPerNbrUe,L.maxTcpUlPowerBoostUEs,L.mbmsNeighCellConfigIntraF,S.mbmsNeighCellConfigIntraF AS mbmsNeighCellConfigIntraF_2,L.mbrSelector,L.mcc,L.mdtxAggressiveness,L.mdtxPdcchSymb,L.measQuantityCSFBUtra,L.measQuantityUtra,L.mimoClCqiThD,F.mimoClCqiThD AS mimoClCqiThD_1,L.mimoClCqiThU,F.mimoClCqiThU AS mimoClCqiThU_1,L.mimoClRiThD,F.mimoClRiThD AS mimoClRiThD_1,L.mimoClRiThU,F.mimoClRiThU AS mimoClRiThU_1,L.mimoOlCqiThD,F.mimoOlCqiThD AS mimoOlCqiThD_1,L.mimoOlCqiThU,F.mimoOlCqiThU AS mimoOlCqiThU_1,L.mimoOlRiThD,F.mimoOlRiThD AS mimoOlRiThD_1,L.mimoOlRiThU,F.mimoOlRiThU AS mimoOlRiThU_1,L.minBitrateDl,L.minBitrateUl,L.minInactivityTimeThresh,L.minTcpPacketSize,L.mlbEicicOperMode,L.mnc,L.mobStateParamNCelChgHgh,L.mobStateParamNCelChgMed,L.mobStateParamTEval,L.mobStateParamTHystNorm,L.modPeriodCoeff,S.modPeriodCoeff AS modPeriodCoeff_2,L.moPrMappingList_lteNrDualConnectSupport_1,L.moPrMappingList_mcc_1,L.moPrMappingList_mnc_1,L.moPrMappingList_mncLength_1,L.moPrMappingList_moPrId_1,L.moPrMappingList_spid_1,L.msg3ConsecutiveDtx,L.msg3DtxOffset,L.multCioAdaptExecEicic,L.multLoadMeasRrm,L.multLoadMeasRrmEicic,L.multNumUeHighPrioUciGrant,F.multNumUeHighPrioUciGrant AS multNumUeHighPrioUciGrant_1,L.multUciGrant,F.multUciGrant AS multUciGrant_1,L.n1PucchAn,L.n310,S.n310 AS n310_2,L.n310PubSafety,L.n310Qci1,L.n311,S.n311 AS n311_2,L.name,L.nbIoTMode,L.nbrCongHandling,L.nbrUlDlSF,L.nCellChgHigh,S.nCellChgHigh AS nCellChgHigh_2,L.nCellChgMed,S.nCellChgMed AS nCellChgMed_2,L.nCqiRb,L.nomNumPrbNonGbr,L.nOverbookingRac,L.nPucchF3Prbs,F.numBlankDlPrbsDown,F.numBlankDlPrbsUp,L.numCaUeThreshold,L.numOfCsiRsAntennaPorts,F.numOfCsiRsAntennaPorts AS numOfCsiRsAntennaPorts_1,L.ocAcBarAC,S.ocAcBarAC AS ocAcBarAC_2,L.ocAcBarACOvl,S.ocAcBarACOvl AS ocAcBarACOvl_2,L.ocAcBarTime,S.ocAcBarTime AS ocAcBarTime_2,L.ocAcBarTimeOvl,S.ocAcBarTimeOvl AS ocAcBarTimeOvl_2,L.ocAcProbFac,S.ocAcProbFac AS ocAcProbFac_2,L.ocAcProbFacOvl,S.ocAcProbFacOvl AS ocAcProbFacOvl_2,L.offsetFreqIntra,L.oldDN,L.orientationOfMajorAxis,L.p0NomPucch,L.p0NomPusch,L.p0NomPuschIAw,L.pagingNb,L.pcellSwapMaxHoRate,L.pciControl,L.pdcchAggDefUe,L.pdcchAggMsg4,L.pdcchAggPaging,L.pdcchAggPreamb,L.pdcchAggRaresp,L.pdcchAggRarespHo,L.pdcchAggSib,L.pdcchAlpha,L.pdcchCongDetActDl,L.pdcchCongDetActUl,L.pdcchCqiShift,L.pdcchCqiShift4Tx,L.pdcchHarqTargetBler,F.pdcchLoadLevel,F.pdcchLoadPsdOffset,L.pdcchOrderConfig,L.pdcchUlDlBal,L.perDl256QamChQualEst,L.periodicCqiFeedbackType,L.perUl256QamChQualEst,L.pFreqPrio,L.phichDur,L.phichRes,L.pMax,F.pMaxLaa,L.pMaxOwnCell,S.pMaxOwnCell AS pMaxOwnCell_2,L.prachConfIndex,F.prachConfIndex AS prachConfIndex_1,L.prachControl,L.prachCS,F.prachCS AS prachCS_1,L.prachDetThresScaling,L.prachFreqOff,F.prachFreqOff AS prachFreqOff_1,L.prachHsFlag,F.prachHsFlag AS prachHsFlag_1,L.prachPwrRamp,S.prachPwrRamp AS prachPwrRamp_2,L.preambTxMax,S.preambTxMax AS preambTxMax_2,L.pref4LayerMimoVsCAggr,L.preventCellActivation,L.primPlmnCellres,S.primPlmnCellres AS primPlmnCellres_2,S.primPlmnUpperLayerIndicationR15,L.prsConfigurationIndex,F.prsConfigurationIndex AS prsConfigurationIndex_1,L.prsMutingInfo,L.prsMutingInfoPatternLen,L.prsNumDlFrames,F.prsNumDlFrames AS prsNumDlFrames_1,L.prsPowerBoost,L.pucchControl,L.pucchNAnCs,F.pucchNAnCs AS pucchNAnCs_1,L.puschAckOffI,L.puschCqiOffI,L.puschHarqMode,L.puschLoadHysteresis,L.puschLoadIndexThr,L.puschRiOffI,L.qci1DlTargetBler,L.qci1DrxOffThreshold,L.qci1DrxOnThreshold,L.qci1HarqMaxTrDl,L.qci1HarqMaxTrUl,L.qci1ProtectionTimer,L.qci1ReconStopTimer,L.qci1ThroughputFactorDl,L.qci1ThroughputFactorUl,L.qci1UlTargetBler,L.qHyst,S.qHyst AS qHyst_2,L.qHystSfHigh,S.qHystSfHigh AS qHystSfHigh_2,L.qHystSfMed,S.qHystSfMed AS qHystSfMed_2,S.qrxlevmin AS qrxlevmin_2,L.qrxlevminintraF,S.qrxlevminintraF AS SIB_qrxlevminintraF,L.rachDensity,F.rachDensity AS rachDensity_1,L.raContResoT,L.raLargeMcsUl,L.raMsgPoffGrB,L.raNondedPreamb,L.raPreGrASize,L.raRespWinSize,L.raSmallMcsUl,L.raSmallVolUl,L.rbrCellPrbUsage,L.rbrDlQueryRespMode,L.rbrIndexHighThreshold,L.rbrMeasTime,L.rbrOperMode,L.rbrPhrDelta,L.rbrQueryWaitTimer,L.rbrStepSizeDown,L.rbrStepSizeUp,L.rbrUpWaitTimer,L.rc_name,F.rc_name AS rc_name_1,S.rc_name AS rc_name_2,L.rcAmbrMgnDl,L.rcAmbrMgnUl,L.rcEnableDl,L.rcEnableUl,L.redBwEnDl,L.redBwMaxRbDl,L.redBwMaxRbUl,L.redBwMinRbUl,L.redBwRpaEnUl,F.redFreqOffset,L.reportAmountPerLoc,L.reportIntervalPerLoc,L.reqMaxCCsDlOffset,L.respectIncMonLimits,L.rfSensitivity,F.rfSensitivity AS rfSensitivity_1,L.riEnable,L.riPerM,L.riPerOffset,F.rootSeqIndex,L.rootSeqIndex AS rootSeqIndex_1,L.rttCellIdInfo,L.rttCsfbType,L.sbHoMode,L.scellBadChQualThr,L.scellChQualThreshold,L.scellFastSchedulingSelect,L.scellGoodChQualThr,L.scellNotDetectableThr,L.scellStateForPcellSwap,L.schedulingWeightSF,L.selectOuterPuschRegion,F.selectOuterPuschRegion AS selectOuterPuschRegion_1,L.shortPeriodScellChEst,L.sib2SchedulingsiMessagePeriodicity,S.sib2SchedulingsiMessagePeriodicity AS sib2SchedulingsiMessagePeriodicity_2,L.sib2SchedulingsiMessageRepetition,S.sib2SchedulingsiMessageRepetition AS sib2SchedulingsiMessageRepetition_2,L.sib2SchedulingsiMessageSibType,S.sib2SchedulingsiMessageSibType AS sib2SchedulingsiMessageSibType_2,L.sib2xTransmit,S.sib2xTransmit AS sib2xTransmit_2,L.sib3SchedulingsiMessagePeriodicity,S.sib3SchedulingsiMessagePeriodicity AS sib3SchedulingsiMessagePeriodicity_2,L.sib3SchedulingsiMessageRepetition,S.sib3SchedulingsiMessageRepetition AS sib3SchedulingsiMessageRepetition_2,L.sib3SchedulingsiMessageSibType,S.sib3SchedulingsiMessageSibType AS sib3SchedulingsiMessageSibType_2,L.sibSchedulingList_siMessagePeriodicity_1,S.sibSchedulingList_siMessagePeriodicity_1 AS sibSchedulingList_siMessagePeriodicity_1_2,L.sibSchedulingList_siMessagePeriodicity_2,S.sibSchedulingList_siMessagePeriodicity_2 AS sibSchedulingList_siMessagePeriodicity_2_2,S.sibSchedulingList_siMessagePeriodicity_3,L.sibSchedulingList_siMessageRepetition_1,S.sibSchedulingList_siMessageRepetition_1 AS sibSchedulingList_siMessageRepetition_1_2,L.sibSchedulingList_siMessageRepetition_2,S.sibSchedulingList_siMessageRepetition_2 AS sibSchedulingList_siMessageRepetition_2_2,S.sibSchedulingList_siMessageRepetition_3,L.sibSchedulingList_siMessageSibType_1,S.sibSchedulingList_siMessageSibType_1 AS sibSchedulingList_siMessageSibType_1_2,L.sibSchedulingList_siMessageSibType_2,S.sibSchedulingList_siMessageSibType_2 AS sibSchedulingList_siMessageSibType_2_2,S.sibSchedulingList_siMessageSibType_3,L.sigAcBarAC,S.sigAcBarAC AS sigAcBarAC_2,L.sigAcBarACOvl,S.sigAcBarACOvl AS sigAcBarACOvl_2,L.sigAcBarTime,S.sigAcBarTime AS sigAcBarTime_2,L.sigAcBarTimeOvl,S.sigAcBarTimeOvl AS sigAcBarTimeOvl_2,L.sigAcProbFac,S.sigAcProbFac AS sigAcProbFac_2,L.sigAcProbFacOvl,S.sigAcProbFacOvl AS sigAcProbFacOvl_2,L.sIntrasearch,S.sIntrasearch AS sIntrasearch_2,L.siteTemplateName,L.siWindowLen,S.siWindowLen AS siWindowLen_2,F.slimRfFilterDL,F.slimRfFilterUL,L.sNonIntrsearch,S.sNonIntrsearch AS sNonIntrsearch_2,L.srsActivation,F.srsActivation AS srsActivation_1,L.srsPwrOffset,F.srsPwrOffset AS srsPwrOffset_1,L.stInactFactor,L.syncDeboost4Tx,L.syncSigTxMode,F.syncSigTxMode AS syncSigTxMode_1,L.t300,S.t300 AS t300_2,L.t301,S.t301 AS t301_2,L.t301Guard,L.t302,L.t304eNaccGsm,L.t304InterRAT,L.t304InterRATGsm,L.t304IntraLte,L.t310,S.t310 AS t310_2,L.t310PubSafety,L.t311,S.t311 AS t311_2,L.t312,L.t320,L.tac,L.taMaxOffset,L.targetLoadGbrDl,L.targetLoadNonGbrDl,L.targetLoadPdcch,L.targetSelMethod,L.taTimer,L.taTimerMargin,L.tC2KMeasReport,L.tC2kRelocExec,L.tC2KRelocOverallHrpd,L.tC2KRelocPrep,L.tC2KRelocPrepHrpd,L.tEvaluation,S.tEvaluation AS tEvaluation_2,L.tExtendedWait,L.threshold1,L.threshold2a,L.threshold2aHpue,L.threshold2aQci1,L.threshold2aRsrq,L.threshold2C2k,L.threshold2C2kQci1,L.threshold2GERAN,L.threshold2GERANQci1,L.threshold2InterFreq,L.threshold2InterFreqHpue,L.threshold2InterFreqQci1,L.threshold2MobRsrq,L.threshold2Wcdma,L.threshold2WcdmaQci1,L.threshold3,L.threshold3a,L.threshold3aRsrqIntraFreq,L.threshold3RsrqIntraFreq,L.threshold4,L.threshold4Rsrq,L.threshSrvLow,S.threshSrvLow AS threshSrvLow_2,L.tHystNormal,S.tHystNormal AS tHystNormal_2,L.time_stamp,F.time_stamp AS time_stamp_1,S.time_stamp AS time_stamp_2,L.timeBetweenTcpPackets,L.timeNextBoostingRound,L.timeToTriggerSfHigh,L.timeToTriggerSfMedium,L.tLoadMeasX2,L.tLoadMeasX2Eicic,L.tmpActFeat1,L.tmpParam6,L.tPageCorrInt,L.tPeriodicBsr,L.tPeriodicPhr,L.tPingPong,L.tProhibitPhr,L.tReselEutr,S.tReselEutr AS tReselEutr_2,L.tReTxBsrTime,L.tStoreUeCntxt,L.ttibAltUlPrbThreshold,L.ttibMinDelayAfterBearerSetup,L.ttibMinUlPrb,L.ttibOperMode,L.ttibSinrDwellTimeIn,L.ttibSinrDwellTimeOut,L.ttibSinrThresholdIn,L.ttibSinrThresholdOut,L.ttibUlsMinTbs,L.ttiBundlingBlerTarget,L.ttiBundlingBlerThreshold,L.ttiBundlingSinrThreshold,L.tULHOPrepTransfer,L.tUlHoPrepTransferHrpd,F.twoLayerMimoAvSpectralEff,L.ueLevelMroOffset,L.ul256QamDeactChQualThr,L.ul256QamReactChQualThr,L.ulamcAllTbEn,L.ulamcSwitchPer,L.ulatbEventPer,L.ulCacIgnore,L.ulCacSelection,L.ulCaMinPcellSinr,L.ulCaMinPcellSinrQci1,L.ulCaSinrWindow,L.ulChBw,F.ulChBw AS ulChBw_1,L.ulCombinationMode,F.ulCombinationMode AS ulCombinationMode_1,F.ulInterferenceOffset,L.ulMaxBoostBytes,L.uLMeasAlphaBase,F.uLMeasAlphaBase AS uLMeasAlphaBase_1,L.uLMeasHystJT,F.uLMeasHystJT AS uLMeasHystJT_1,L.uLMeasHystSuMu,F.uLMeasHystSuMu AS uLMeasHystSuMu_1,L.uLMeasN,F.uLMeasN AS uLMeasN_1,L.uLMeasThrJtCsiRs,F.uLMeasThrJtCsiRs AS uLMeasThrJtCsiRs_1,L.uLMeasThrSuMuCsiRs,F.uLMeasThrSuMuCsiRs AS uLMeasThrSuMuCsiRs_1,L.ulMinBoostBytes,L.ulpcAlpha,L.ulpcCEBalanceIAw,L.ulpcIniPrePwr,S.ulpcIniPrePwr AS ulpcIniPrePwr_2,L.ulpcLowlevCch,L.ulpcLowlevSch,L.ulpcLowqualCch,L.ulpcLowqualSch,L.ulpcMinQualIAw,L.ulpcMinWaitForPc,L.ulpcRarespTpc,F.ulpcRarespTpc AS ulpcRarespTpc_1,L.ulpcReadPeriod,L.ulpcRefPwrIAw,L.ulpcUplevCch,L.ulpcUplevSch,L.ulpcUpqualCch,L.ulpcUpqualSch,L.ulRsCs,L.ulsFdPrbAssignAlg,L.ulSinrLowThreshold,L.ulsMaxPacketAgg,L.ulsMinNumCoverageLimitationStateCheck,L.ulsMinRbPerUe,L.ulsMinTbs,L.ulsNumSchedAreaUl,L.ulsPhrQci1Hyst,L.ulsPhrQci1Low,L.ulsPuschNbrCongDetAct,L.ulsSchedMethod,L.ulStaticCac,L.ulTargetBler,L.uncertaintyAltitude,L.uncertaintySemiMajor,L.uncertaintySemiMinor,L.upperMarginCio,L.usageOfMaxDlPwBackoffValue2,L.useT312,L.utranLbLoadThresholdshighLoadGbrDl,F.utranLbLoadThresholdshighLoadGbrDl AS utranLbLoadThresholdshighLoadGbrDl_1,L.utranLbLoadThresholdshighLoadNonGbrDl,F.utranLbLoadThresholdshighLoadNonGbrDl AS utranLbLoadThresholdshighLoadNonGbrDl_1,L.utranLbLoadThresholdshighLoadPdcch,F.utranLbLoadThresholdshighLoadPdcch AS utranLbLoadThresholdshighLoadPdcch_1,L.version,F.version AS version_1,S.version AS version_2,L.voLteProactUlGrantNonTtibTxSkip,L.voLteProactUlGrantPeriodRegTx,L.voLteProactUlGrantPeriodTtib,L.voLteProactUlGrantPeriodTtibTxSkip,L.zsonPciPrachControl,L.zsonProfileId,
B.`Escenario Configuracion Banda 1900` AS Escenario_1900BL, B.Latitud, B.Longitud, B.Zona, BL.Azimuth AS Az, BL.`Tilt Electrico` AS Tilt_E, BL.`Tilt Mecanico` AS Tilt_M, BL.Antena, BL.`Altura Antena` AS Altura_Antena
FROM ((((lncel AS L LEFT JOIN LNBTS_Full AS LB ON (SUBSTRING_INDEX(L.distName,'/LNCEL-',1)=LB.distName)) LEFT JOIN lncel_fdd AS F ON (L.distName = SUBSTRING_INDEX(F.distName,'/LNCEL_FDD',1))) LEFT JOIN sib AS S ON (L.distName = SUBSTRING_INDEX(S.distName,'/SIB-',1))) LEFT JOIN baseline as B ON (B.Sitio = LB.LNBTSname)) LEFT JOIN Baseline_LTempF AS BL ON (L.name = BL.LNB)
GROUP BY L.eutraCelId;
--
--
--
--
DROP TABLE IF EXISTS Sites_L651;
CREATE TABLE Sites_L651 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNBTSname, L.earfcnDL, 'Baja' AS Escenario_1900
FROM LNCEL_Full AS L
WHERE L.earfcnDL = 651 AND L.LNBTSname IS NOT NULL;
--
DROP TABLE IF EXISTS Sites_L626;
CREATE TABLE Sites_L626 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNBTSname, L.earfcnDL, 'Alta' AS Escenario_1900
FROM LNCEL_Full AS L
WHERE L.earfcnDL = 626 AND L.LNBTSname IS NOT NULL;
--
--
DROP TABLE IF EXISTS Sites_L1900;
CREATE TABLE Sites_L1900 ENGINE=MyISAM AS
SELECT * FROM Sites_L651
UNION ALL
SELECT * FROM Sites_L626
ORDER BY
    LNBTSname;
--
--
-- 626 651 675: 50-130, 2434 2437 2453: 30-200, 3075 3100: 60-110, 3225: 70-90, 9560: 40-150, other:80-70
--
DROP TABLE IF EXISTS LTE_Param;
CREATE TABLE LTE_Param ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Prefijo, L.Mun, L.Sector, L.KeySector, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNBTSname, L.Banda, L.earfcnDL, L.eutraCelId, L.phyCellId, L.rootSeqIndex, L.PowerBoost, (L.angle)/10 AS tilt, L.Estado, L.LNBTS_OpSt, L.LNCEL_AdSt ,L.LNCEL_OpSt,  L.PCIMod3, L.PCIMod6, L.PCIMod30, L.earfcnUL, L.version, L.lcrId,L.tac,L.cellType,L.maxNumActDrb,L.maxNumActUE,L.maxNumUeDl,L.maxNumUeUl,L.mbrSelector,L.t302,L.t304InterRAT,L.t304InterRATGsm,L.t304IntraLte,L.t304eNaccGsm,L.t320,L.hopModePusch,L.pMax,L.actDrx, L.t300,L.t301,L.t310,L.t311,L.tEvaluation,L.tHystNormal,L.qHyst,L.cellReSelPrio,L.n310,L.qrxlevmin,L.QrxlevminintraF,L.SIB_QrxlevminintraF, L.sIntrasearch,L.sNonIntrsearch, L.threshold1, L.threshold3, L.threshold3a, L.threshold2InterFreqQci1, L.threshold2a, L.threshold2aQci1, L.threshold2Wcdma, L.threshold2WcdmaQci1, L.threshold4, L.a3Offset, L.measQuantityUtra, L.threshold2InterFreq, L.dlCellPwrRed,L.dlChBw1, L.dlChBw2,L.a2TimeToTriggerActWcdmaMeas,L.Latitud, L.Longitud, L.Az, L.Tilt_E, L.Tilt_M, L.Antena, L.Altura_Antena, L.DistName, L.Escenario_1900BL, S.Escenario_1900, L.Latitud AS Deci_Lat, L.Longitud AS Deci_Lon, L.MRBTS_id AS Mtx_Site, L.eutraCelId AS Mtx_Site_ID, L.Sector*1 AS sector_ID, L.LNCELname AS Site_Name,
CASE WHEN L.earfcnDL < 1200 THEN 50 ELSE (CASE WHEN L.earfcnDL < 2650 THEN 30 ELSE (CASE WHEN L.earfcnDL < 3101 THEN 60 ELSE (CASE WHEN L.earfcnDL < 3450 THEN 70 ELSE (CASE WHEN L.earfcnDL < 9610 THEN 40 ELSE 80 END)END)END)END)END AS Beamwidth,
CASE WHEN L.Zona = 'Rural' THEN (
CASE WHEN L.earfcnDL < 1200 THEN 130 ELSE (CASE WHEN L.earfcnDL < 2650 THEN 200 ELSE (CASE WHEN L.earfcnDL < 3101 THEN 110 ELSE (CASE WHEN L.earfcnDL < 3450 THEN 90 ELSE (CASE WHEN L.earfcnDL < 9610 THEN 150 ELSE 70 END)END)END)END)END)
ELSE (
CASE WHEN L.earfcnDL < 1200 THEN 60 ELSE (CASE WHEN L.earfcnDL < 2650 THEN 90 ELSE (CASE WHEN L.earfcnDL < 3101 THEN 50 ELSE (CASE WHEN L.earfcnDL < 3450 THEN 40 ELSE (CASE WHEN L.earfcnDL < 9610 THEN 75 ELSE 30 END)END)END)END)END)
END  AS Radius,
L.Az AS Azimuth
FROM LNCEL_Full AS L LEFT JOIN Sites_L1900 AS S ON (L.LNBTSname = S.LNBTSname);
--
--
--
DROP TABLE IF EXISTS Sites_L9560;
CREATE TABLE Sites_L9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNBTSname, L.earfcnDL
FROM LTE_Param AS L
WHERE L.earfcnDL = 9560 AND L.LNBTSname IS NOT NULL;
--
DROP TABLE IF EXISTS Sites_L3225;
CREATE TABLE Sites_L3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNBTSname, L.earfcnDL
FROM LTE_Param AS L
WHERE L.earfcnDL = 3225 AND L.LNBTSname IS NOT NULL;
--
DROP TABLE IF EXISTS Sites_L3075;
CREATE TABLE Sites_L3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNBTSname, L.earfcnDL
FROM LTE_Param AS L
WHERE L.earfcnDL = 3075 AND L.LNBTSname IS NOT NULL;
--
--
--
--
-- WCEL_FULL1
DROP TABLE IF EXISTS WCEL_FULL1;
CREATE TABLE WCEL_FULL1 ENGINE=MyISAM AS
SELECT DISTINCT
W.name AS WCELName, concat(B.Market,'-',B.`Localidad (CRC)`) AS Cluster, B.Region AS Region, B.Departamento AS Depto, B.Municipio AS Mun, substr(W.name,1,3) AS Prefijo, B.Zona, B.Latitud, B.Longitud, BU.Antena, BU.`Altura Antena` AS Altura_Antena, BU.Azimuth, BU.`Tilt Electrico` AS Tilt_E, BU.`Tilt Mecanico` AS Tilt_M, BU.`Map Length` AS Map_Length, BU.`Map Beam` AS Map_Beam, B.`Escenario Configuracion Banda 1900` AS Escenario_1900BL, S.Escenario_1900,
W.UARFCN, CASE WHEN W.UARFCN < 9685 THEN 850 ELSE 1900 END Banda, WB.WBTSName, WB.PLMN_id, WB.RNCName, WB.RNC_id, WB.WBTS_id,
SUBSTRING_INDEX(W.distName,'/WCEL-',-1) AS WCEL_id,
W.URAId, substr(W.name,-1,1) AS Sector, CONCAT(WB.WBTSName,"_",W.SectorID) AS SectorIdName,  W.AbsPrioCellReselec,W.ACBarredList,W.ActivationTimeOffset,W.AdminCellState,W.AdminPICState,W.AICHTraTime,W.AllowedRACHSubChannels,W.AltScramblingCodeCM,W.AmpliRatioOptHSRACH,W.AMROverSC,W.AMROverTransmission,W.AMROverTxNC,W.AMROverTxNonHSPA,W.AMROverTxTotal,W.AMRSF,W.AMRTargetSC,W.AMRTargetTransmission,W.AMRTargetTxNC,W.AMRTargetTxNonHSPA,W.AMRTargetTxTotal,W.AMRUnderSC,W.AMRUnderTransmission,W.AMRUnderTxNC,W.AMRUnderTxNonHSPA,W.AMRUnderTxTotal,W.angle,W.AppAwareRANCapability,W.AppAwareRANEnabled,W.AssignedPICPool,W.ATOSRBsOnHSPA,W.BlindHOEcNoThrTarget,W.BlindHORSCPThrTarget,W.CableLoss,W.CCHSetupEnabled,W.Cell_Reserved,W.CellAdditionalInfo,W.CellBarred,W.cellLevel,W.CellRange,W.CellSelQualMeas,W.CellWeightForHSDPALayering,W.CId,W.CIRForFDPCH,W.class,W.CodeTreeOptimisation,W.CodeTreeOptimisationGuardTime,W.CodeTreeOptTimer,W.CodeTreeUsage,W.CPCEnabled,W.CPICHEcNoSRBMapRRC,W.CPICHRSCPSRBMapRRC,W.CPICHtoRefRABoffset,W.CSAMRModeSET,W.CSAMRModeSETWB,W.CSGroupId,W.CTCHCapaHighPri,W.CUCEcNoThreshold,W.CUCRSCPThreshold,W.DCellHSDPACapaHO,W.DCellHSDPAEnabled,W.DCellHSDPAFmcsId,W.DefMeasCtrlReading,W.DeltaPrxMaxDown,W.DeltaPrxMaxUp,W.DeltaPtxMaxDown,W.DeltaPtxMaxUp,W.DirectedRRCEnabled,W.DirectedRRCForHSDPALayerEnabled,W.DirectSCCEnabled,W.distName,W.DLLoadStateTTT,W.DPCHOverHSPDSCHThreshold,W.DPCModeChangeSupport,W.DRRCprxMargin,W.DRRCprxOffset,W.DRRCptxMargin,W.DRRCptxOffset,W.DRXCycleHSFACH,W.DRXInactiveTimerHSFACH,W.DRXInterruptHSDSCHData,W.DynVCPFunctionalityControl,W.DynVCPMinHSDPAUsers,W.DynVoiceCallPriorityEnabled,W.EbNoSetIdentifier,W.EDCHCapability,W.EDCHMinimumSetETFCI,W.EDCHMinSetETFCIT0,W.EDCHOpState,W.EIRPLimitMinUserPower,W.EIRPLimitOffsetOne,W.EIRPLimitOffsetTwo,W.EIRPLimitOptionalities,W.EMEHCellStates,W.EMEHEnabled,W.EMEHLowHSUPATput,W.EMEHNormalHSUPATput,W.EMEHOptions,W.EMEHPreventivePrxOffset,W.EMEHReactivePrxOffset,W.EVAMCapability,W.FachLoadMarginCCH,W.FachLoadThresholdCCH,W.FastActOfTargetServCell,W.FastCompletionOfSCC,W.FastHSPAMobilityEnabled,W.FDPCHCodeChangeEnabled,W.FDPCHEnabled,W.FDPCHSetup,W.FMCLIdentifier,W.GSMCellReselection,W.GuaranteedVoiceDLCode,W.HappyBitDelayConHSRACH,W.HCS_PRIO,W.HHoMaxAllowedBitrateDL,W.HHoMaxAllowedBitrateUL,W.HSCapabilityHONumbUE,W.HSCapabilityHOPeriod,W.HSDPA64QAMallowed,W.HSDPA64UsersEnabled,W.HSDPAcapability,W.HSDPACellChangeMinInterval,W.HSDPACPICHAveWindow,W.HSDPACPICHReportPeriod,W.HSDPAenabled,W.HSDPAFmcgIdentifier,W.HSDPAFmciIdentifier,W.HSDPAFmcsIdentifier,W.HSDPALayeringCommonChEnabled,W.HSDPAMaxCellChangeRepetition,W.HSDPAServCellWindow,W.HSDPASRBWindow,W.HSDSCHOpState,W.HSFACHActivityAveWin,W.HSFACHActivityThr,W.HSFACHActTimeToTrigger,W.HSFACHCapability,W.HSFACHDRXEnabled,W.HSFACHEnabled,W.HSFACHRABDRAEnabled,W.HSFACHRel7ConSetupEC,W.HSFACHRel8ConSetupEC,W.HSFACHRLCTimeToTrigger,W.HSFACHVolThrDL,W.HSLoadStateHSDBRLimit,W.HSLoadStateHSDOffset,W.HSLoadStateHSUBRLimit,W.HSLoadStateHSUOffset,W.HSLoadStateHSUResThr,W.HSPA128UsersPerCell,W.HSPA72UsersPerCell,W.HSPACapaHO,W.HSPAFmcsIdentifier,W.HspaMultiNrtRabSupport,W.HSPAQoSEnabled,W.HSPASCCSpecificATO,W.HSPDSCHCodeSet,W.HSPDSCHMarginSF128,W.HSPwrOffsetUpdateDelay,W.HSRACHActivityAveWin,W.HSRACHActivityThr,W.HSRACHActTimeToTrigger,W.HSRACHCapability,W.HSRACHCommonEDCHRes,W.HSRACHEnabled,W.HSRACHExtendedAI,W.HSRACHImplicitRelease,W.HSRACHMaxAllocTimeCCCH,W.HSRACHMaxPeriodCollis,W.HSRACHMaxTotSymbolRate,W.HSRACHMPO,W.HSRACHSubChannelNumber,W.HSRACHTimeToTrigger,W.HSRACHTransmisBackOff,W.HSRACHVolThrUL,W.HSUPA16QAMAllowed,W.HSUPA2MSTTIEnabled,W.HSUPAEnabled,W.HSUPAUserLimit16QAM,W.ICBDLDowngradeThreshold,W.ICBDLHSDPAUSersInCell,W.ICBDLMaxDecrease,W.ICBDLUpgradeThreshold,W.ICBEnabled,W.ICBULHSUPAUserLimit,W.ICBULMaxIncrease,W.ICBULSurrCellLoadOffset,W.ICRCapability,W.id,W.IncomingLTEISHO,W.InitialBitRateDL,W.InitialBitRateUL,W.InterfRedAppliedCell,W.InterFreqScaleTresel,W.InterRATScaleTresel,W.IntraFreq_Cell_Reselect_Ind,W.KforCTCH,W.LAC,W.LayeringRRCConnRelTargFreq_TargetFrequency_1,W.LayeringRRCConnRelTargFreq_TargetFrequency_2,W.LayeringRRCConnRelTargFreq_TargetFrequency_3,W.LayeringRRCConnRelTargFreq_TargetFrequency_4,W.LayeringRRCConnRelTargFreq_TargetFrequency_5,W.LayeringRRCConnRelTargFreq_TargetFrequency_6,W.LayeringRRCConnRelTargFreq_TargetFrequency_7,W.LayeringRRCConnRelTargFreq_TargetFrequency_8,W.LayeringRRCRelEnabled,W.LHOCapaReqRejRateDL,W.LHOCapaReqRejRateUL,W.LHODelayOFFCapaReqRejRate,W.LHODelayOFFHardBlocking,W.LHODelayOFFInterference,W.LHODelayOFFResRateSC,W.LHOHardBlockingBaseLoad,W.LHOHardBlockingRatio,W.LHOHystTimeCapaReqRejRate,W.LHOHystTimeHardBlocking,W.LHOHystTimeInterference,W.LHOHystTimeResRateSC,W.LHONRTTrafficBaseLoad,W.LHONumbUEInterFreq,W.LHONumbUEInterRAT,W.LHOPwrOffsetDL,W.LHOPwrOffsetUL,W.LHOResRateSC,W.LHOWinSizeOFFCapaReqRejRate,W.LHOWinSizeOFFHardBlocking,W.LHOWinSizeOFFInterference,W.LHOWinSizeOFFResRateSC,W.LHOWinSizeONCapaReqRejRate,W.LHOWinSizeONHardBlocking,W.LHOWinSizeONInterference,W.LHOWinSizeONResRateSC,W.LoadBasedCPICHEcNoSRBHSPA,W.LoadBasedCPICHEcNoThreEDCH2MS,W.LTECellReselection,W.LTEHandoverEnabled,W.LTELayerCellHSLoad,W.LTELayeringMeasActivation,W.MassEventHandler,W.MaxBitRateDLPSNRT,W.MaxBitRateULPSNRT,W.MaxCodeReleases,W.MaxDLPowerCapability,W.MaxIncrInterferenceUL,W.MaxNbrOfHSSCCHCodes,W.MaxNumberEDCHCell,W.MaxNumberHSDPAUsers,W.MaxNumberHSDSCHMACdFlows,W.MaxNumberUECmHO,W.MaxNumberUECmSLHO,W.MaxNumberUEHSPACmHO,W.MaxNumberUEHSPACmNCHO,W.MaxNumbHSDPAUsersS,W.MaxNumbHSDSCHMACdFS,W.MaxTotalUplinkSymbolRate,W.MBLBEnhancementsEnabled,W.MBLBInactivityEnabled,W.MBLBLoadInfoDistr,W.MBLBMobilityEnabled,W.MBLBRABSetupEnabled,W.MBLBRABSetupMultiRAB,W.MBLBStateTransEnabled,W.MDTPeriodicMeasEnabled,W.MEHHSDPAUserNbrCQI,W.MEHHSUPAUserNbr2msTTI,W.MEHLoadStateTtT,W.MEHMaxHSUPAUsers,W.MEHQueueThreshold,W.MEHULLHSDPAUALimit,W.MHA,W.MinAllowedBitRateDL,W.MinAllowedBitRateUL,W.N300,W.N312,W.N312Conn,W.N313,W.N315,W.name,W.NASsignVolThrDL,W.NASsignVolThrUL,W.NbrOfSCCPCHs,W.NCr,W.NforCTCH,W.NonHCSNcr,W.NonHCSTcrMax,W.NonHCSTcrMaxHyst,W.NrtFmcgIdentifier,W.NrtFmciIdentifier,W.NrtFmcsIdentifier,W.NumberEDCHReservedSHOBranchAdditions,W.NumofEagch,W.NumofErgHich,W.OCdlNrtDCHgrantedMinAllocT,W.OCULNRTDCHGrantedMinAllocT,W.oldDN,W.PBSgrantedMinDCHallocTequalP,W.PBSgrantedMinDCHallocThigherP,W.PBSgrantedMinDCHallocTlowerP,W.PBSHSMinAllocEqual,W.PBSHSMinAllocHigher,W.PBSHSMinAllocLower,W.PCH24kbpsEnabled,W.PFLIdentifier,W.PI_amount,W.PICState,W.PO1_15,W.PO1_30,W.PO1_60,W.PowerOffsetLastPreamblePRACHmessage,W.PowerOffsetPreamHSRACH,W.PowerOffsetUpdMsgSize,W.PowerRampStepPRACHpreamble,W.PowerSaveHSPAType,W.PRACH_preamble_retrans,W.PRACHDelayRange,W.PRACHRequiredReceivedCI,W.PRACHScramblingCode,W.PredWCDMALTELoadBalEnabled,W.PriScrCode,W.ProgLTELayeringEnabled,W.PrxLoadMarginDCH,W.PrxLoadMarginEDCH,W.PrxLoadMarginMaxDCH,W.PrxMaxOrigTargetBTS,W.PrxMaxTargetBTS,W.PrxMeasFilterCoeff,W.PrxNoise,W.PrxNoiseAutotuning,W.PrxOffset,W.PrxOffsetWPS,W.PrxTarget,W.PrxTargetMax,W.PrxTargetPSMax,W.PrxTargetPSMaxtHSRACH,W.PrxTargetPSMin,W.PrxTargetPSStepDown,W.PrxTargetPSStepUp,W.PSGroupId,W.PtxAICH,W.PtxBCCHHSPDSCH,W.PtxBCCHHSSCCH,W.PtxCellMax,W.PtxDLabsMax,W.PtxFDPCHMax,W.PtxFDPCHMin,W.PtxHighHSDPAPwr,W.PtxMarginCCH,W.PtxMaxEHICH,W.PtxMaxHSDPA,W.PtxMeasFilterCoeff,W.PtxOffset,W.PtxOffsetEAGCH,W.PtxOffsetEAGCHDPCCH,W.PtxOffsetEHICHDPCCH,W.PtxOffsetERGCH,W.PtxOffsetERGCHDPCCH,W.PtxOffsetExxCH2ms,W.PtxOffsetExxCHSHO,W.PtxOffsetFDPCHSHO,W.PtxOffsetWPS,W.PTxPICH,W.PtxPrimaryCCPCH,W.PtxPrimaryCPICH,W.PtxPrimarySCH,W.PtxPSstreamAbsMax,W.PtxSCCPCH1,W.PtxSCCPCH2,W.PtxSCCPCH2SF128,W.PtxSCCPCH3,W.PtxSecSCH,W.PtxTarget,W.PtxTargetPSAdjustPeriod,W.PtxTargetPSMax,W.PtxTargetPSMaxtHSRACH,W.PtxTargetPSMin,W.PtxTargetPSStepDown,W.PtxTargetPSStepUp,W.PtxTargetTotMax,W.PtxTargetTotMin,W.PtxThresholdCCH,W.PWSMAVLimitDCHSDPA,W.PWSMAVLimitNRTHSDPA,W.PWSMAVLimitRTDCH,W.PWSMAVLimitRTHSDPA,W.PWSMAVPwrNRTHSDPA,W.PWSMAVPwrRTHSDPA,W.PWSMCellGroup,W.PWSMEXPwrLimit,W.PWSMEXUsrLimit,W.PWSMSDLimitDCHSDPA,W.PWSMSDLimitNRTDCH,W.PWSMSDLimitNRTHSDPA,W.PWSMSDLimitRTDCH,W.PWSMSDLimitRTHSDPA,W.PWSMSDPwrNRTHSDPA,W.PWSMSDPwrRTDCH,W.PWSMSDPwrRTHSDPA,W.PWSMShutdownOrder,W.PWSMShutdownRemCell,W.QHCS,W.Qhyst1,W.Qhyst1FACH,W.Qhyst1PCH,W.Qhyst2,W.Qhyst2FACH,W.Qhyst2PCH,W.QqualMin,W.QrxlevMin,W.RAC,W.RACH_tx_Max,W.RACH_Tx_NB01max,W.RACH_Tx_NB01min,W.RACHCapacity,W.RACHInterFreqMesQuant,W.RACHIntraFreqMesQuant,W.RachLoadMarginCCH,W.RachLoadThresholdCCH,W.RACHmeasFilterCoeff,W.RACHPreambleSignatures,W.radioCapacity,W.rc_name,W.RefServForCodePower,W.RelocComm_in_InterRNC_HHO,W.RNARGroupId,W.RRCconnRepTimer1,W.RRCconnRepTimer2,W.RsrvdSignaturesOffset,W.RtFmcgIdentifier,W.RtFmciIdentifier,W.RtFmcsIdentifier,W.RTWithHSDPAFmcgIdentifier,W.RTWithHSDPAFmciIdentifier,W.RTWithHSDPAFmcsIdentifier,W.RTWithHSPAFmcsIdentifier,W.RXBurstHSFACH,W.RxDivIndicator,W.SABEnabled,W.SAC,W.SACB,W.SectorID,W.ServHONumbUEInterFreq,W.ServHONumbUEInterRAT,W.ServHOPeriodInterFreq,W.ServHOPeriodInterRAT,W.SHCS_RAT,W.SHCS_RATConn,W.ShutdownStepAmount,W.ShutdownWindow,W.SIB11bisLength,W.SIB11Length,W.SIB12Length,W.SIB4Indicator,W.SIB7factor,W.Sintersearch,W.SintersearchConn,W.Sintrasearch,W.SintrasearchConn,W.SIRDPCCHOffsetEDPCH,W.siteTemplateName,W.Slimit_SearchRAT,W.Slimit_SearchRATConn,W.SmartLTELayeringEnabled,W.SmartLTELayeringRSCP,W.SmartLTELayeringTSysSel,W.SmartLTELayeringUA,W.SmartTrafVolThrDL,W.SmartTrafVolThrUL,W.SpeedScaleTresel,W.Sprioritysearch1,W.Sprioritysearch2,W.SRBBitRateRRCSetupEC,W.SRBDCHFmcsId,W.SRBHSPAFmcsId,W.SRBMapRRCSetupEC,W.Ssearch_RAT,W.Ssearch_RATConn,W.SsearchHCS,W.SsearchHCSConn,W.T300,W.T312,W.T312Conn,W.T313,W.T315,W.T321,W.TargetNSEDCHToTotalEDCHPR,W.TargetsystemBackgroundCall,W.TargetsystemConversationalCall,W.TargetsystemDetach,W.TargetsystemEmergencyCall,W.TargetsystemHighPrioritySignalling,W.TargetsystemInteractiveCall,W.TargetsysteminterRATchangeorder,W.TargetsysteminterRATreselection,W.TargetsystemLowPrioritySignalling,W.TargetsystemMBMSrbrequest,W.TargetsystemMBMSreception,W.Targetsystemreestablishment,W.Targetsystemregistration,W.TargetsystemStreamingCall,W.TargetsystemSubscribedTraffic,W.Targetsystemunknown,W.TBarred,W.Tcell,W.TCrmax,W.TCrmaxHyst,W.Threshservlow,W.Threshservlow2,W.time_stamp,W.ToAWE_CCH,W.ToAWS_CCH,W.TPCCommandERTarget,W.TrafVolThresholdDLLow,W.Treselection,W.TreselectionFACH,W.TreselectionPCH,W.UEDRXCapability,W.UEtxPowerMaxDPCH,W.UEtxPowerMaxPRACH,W.UEtxPowerMaxPRACHConn,W.ULLoadStateHSUBRLimit,W.ULLoadStateHSUOffset,W.UseOfHCS,W.UTRAN_DRX_length,W.VCPMaxHSDPAUsers,W.VCPPtxOffset,W.version,W.VoiceCallPriority,W.VoiceOverrideSTHSUPA,W.WACSetIdentifier,W.WCDMACellReselection,W.WCDMALTELoadBalEnabled,W.WCELChangeOrigin,W.WCELMCC,W.WCELMNC,W.WCelState
FROM (((wcel AS W LEFT JOIN wbts_full1 AS WB ON (SUBSTRING_INDEX(W.distName,'/WCEL-',1)=WB.distName)) LEFT JOIN baseline AS B ON (B.Sitio = WB.WBTSName)) LEFT JOIN Baseline_UMTS AS BU ON (W.name = BU.BTS_Name)) LEFT JOIN Sites_L1900 AS S ON (WB.WBTSName = S.LNBTSname)
ORDER BY W.name;
--
-- WCEL parametros importantes, OK
--
DROP TABLE IF EXISTS WCEL_PARAM1;
CREATE TABLE WCEL_PARAM1 ENGINE=MyISAM AS
SELECT W.WCELName, W.Cluster, W.Region, W.Depto, W.Mun, W.Prefijo, W.Banda, W.PLMN_id, W.Sector, W.WBTSName, W.WCEL_id, W.RNCName, W.RNC_id, W.WBTS_id, W.CId, W.Latitud, W.Longitud, W.Antena, W.Altura_Antena, W.Azimuth, W.Tilt_E, W.Tilt_M, W.Map_Length, W.Map_Beam, W.PriScrCode, (W.angle)/10 AS tilt, W.LAC, W.RAC, W.AdminCellState, W.WCelState, W.URAid, W.PCH24kbpsEnabled, W.NbrOfSCCPCHs, W.Tcell, W.PrxTarget, W.PtxPrimaryCPICH, W.PtxCellMax, W.MaxDLPowerCapability, W.PtxHighHSDPAPwr, W.PtxTarget, W.PtxTargetPSMax, W.PtxTargetPSMin, W.PtxMaxHSDPA, W.PtxDLabsMax, W.MaxNbrOfHSSCCHCodes, W.InitialBitRateDL, W.InitialBitRateUL, W.MinAllowedBitRateDL, W.MinAllowedBitRateUL, W.T300, W.T312, W.T313, W.N300, W.N312, W.N313, W.N315, W.T315, W.RtFmcsIdentifier, W.NrtFmcsIdentifier, W.RTWithHSDPAFmcgIdentifier, W.RTWithHSDPAFmciIdentifier, W.RTWithHSDPAFmcsIdentifier, W.NrtFmcgIdentifier, W.NrtFmciIdentifier, W.RtFmcgIdentifier, W.RtFmciIdentifier, W.UARFCN, W.SHCS_RAT, W.SsearchHCS, W.SHCS_RATConn, W.SsearchHCSConn, W.PrxOffset, W.PrxNoise, W.CSAMRModeSET, W.CSAMRModeSETWB,  W.CellBarred, W.HSPA128UsersPerCell, W.SectorID, W.HSDPAFmciIdentifier, W.HSDPAFmcsIdentifier, W.HSPAFmcsIdentifier, W.HSDPAFmcgIdentifier, W.LTECellReselection, W.QqualMin, W.QrxlevMin, W.AdminPICState, W.ULLoadStateHSUOffset, W.MaxNumberEDCHCell, W.MaxNumberHSDPAUsers, W.SmartLTELayeringEnabled, W.SmartLTELayeringRSCP, W.IncomingLTEISHO, W.distName, W.SectorIdName, W.Escenario_1900BL, W.Escenario_1900, W.Latitud AS Deci_Lat, W.Longitud AS Deci_Lon, W.WBTS_id AS Mtx_Site, W.CId AS Mtx_Site_ID, W.SectorID*1 AS sector_ID, W.WCELName AS Site_Name,
CASE WHEN W.Zona = 'Rural' THEN (
CASE WHEN W.UARFCN < 4365 THEN (CASE WHEN G.`Map Length` < 3 THEN 90 ELSE (36*G.`Map Length`) END) ELSE (CASE WHEN W.UARFCN < 4388 THEN (CASE WHEN G.`Map Length` < 3 THEN 80 ELSE (30*G.`Map Length`) END) ELSE (CASE WHEN W.UARFCN < 9701 THEN (CASE WHEN G.`Map Length` < 3 THEN 110 ELSE (50*G.`Map Length`) END) ELSE (CASE WHEN G.`Map Length` < 3 THEN 100 ELSE (43*G.`Map Length`) END) END)END)END)
ELSE (
CASE WHEN W.UARFCN < 4365 THEN (CASE WHEN G.`Map Length` < 3 THEN 50 ELSE (18*G.`Map Length`) END) ELSE (CASE WHEN W.UARFCN < 4388 THEN (CASE WHEN G.`Map Length` < 3 THEN 40 ELSE (15*G.`Map Length`) END) ELSE (CASE WHEN W.UARFCN < 9701 THEN (CASE WHEN G.`Map Length` < 3 THEN 70 ELSE (25*G.`Map Length`) END) ELSE (CASE WHEN G.`Map Length` < 3 THEN 60 ELSE (21*G.`Map Length`) END) END)END)END
)
END AS Radius,
CASE WHEN W.UARFCN < 4365 THEN (CASE WHEN G.`Map Beam` < 30 THEN 50 ELSE (G.`Map Beam`) END) ELSE (CASE WHEN W.UARFCN < 4388 THEN (CASE WHEN G.`Map Beam` < 30 THEN 60 ELSE (CASE WHEN G.`Map Beam` > 350 THEN G.`Map Beam` - 30 ELSE G.`Map Beam` + 10 END) END) ELSE (CASE WHEN W.UARFCN < 9701 THEN (CASE WHEN G.`Map Beam` < 30 THEN 30 ELSE (G.`Map Beam` - 20) END) ELSE (CASE WHEN G.`Map Beam` < 30 THEN 40 ELSE (G.`Map Beam` - 10) END) END)END)END AS Beamwidth
FROM WCEL_FULL1 AS W LEFT JOIN Baseline_UMTS AS G ON (W.WCELName = G.BTS_Name)
WHERE W.WCEL_id IS NOT NULL
ORDER BY W.WCELName IS NULL OR W.WCELName='', W.WCELName;
--
--
--
-- IRFIM custom
DROP TABLE IF EXISTS IRFIM_ref;
CREATE TABLE IRFIM_ref ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
SUBSTRING_INDEX(I.distName,'IRFIM-',-1) AS IRFIM_id, I.distName, I.version,I.dlCarFrqEut,I.enableA4IMLB,I.eutCelResPrio,I.idleLBEutCelResPrio,I.idleLBEutCelResWeight,I.incMonExSel,I.interFrqThrH,I.interFrqThrL,I.interPresAntP,I.interTResEut,I.mbmsNeighCellConfigInterF,I.measBdw,I.minDeltaRsrpIMLB,I.minDeltaRsrqIMLB,I.minRsrpIMLB,I.minRsrqIMLB,I.qOffFrq,I.qRxLevMinInterF,I.reducedMeasPerformance,I.id,I.idleLBEutCelResPrio2CC
FROM IRFIM AS I LEFT JOIN LNCEL_Full AS L ON (SUBSTRING_INDEX(I.distName,'/IRFIM-',1)=L.distName);
--
--
-- LNHOIF custom
DROP TABLE IF EXISTS LNHOIF_ref;
CREATE TABLE LNHOIF_ref ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, H.eutraCarrierInfo, CASE WHEN H.eutraCarrierInfo BETWEEN 2750 and 3449 THEN 2600 ELSE (CASE WHEN H.eutraCarrierInfo BETWEEN 600 and 1199 THEN 1900 ELSE (CASE WHEN H.eutraCarrierInfo BETWEEN 9210 and 9659 THEN 700 ELSE (CASE WHEN H.eutraCarrierInfo BETWEEN 2400 and 2649 THEN 850 ELSE NULL END)END)END)END AS BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, SUBSTRING_INDEX(H.distName,'LNHOIF-',-1) AS LNHOIF_id, H.distName, H.version,H.a3OffsetRsrpInterFreq,H.a3OffsetRsrpInterFreqQci1,H.a3ReportIntervalRsrpInterFreq,H.a3TimeToTriggerRsrpInterFreq,H.a5ReportIntervalInterFreq,H.a5TimeToTriggerInterFreq,H.hysA3OffsetRsrpInterFreq,H.hysThreshold3InterFreq,H.iFGroupPrio,H.interPresAntP,H.measQuantInterFreq,H.measurementBandwidth,H.offsetFreqInter,H.threshold3InterFreq,H.threshold3InterFreqQci1,H.threshold3aInterFreq,H.threshold3aInterFreqQci1,H.thresholdRsrpIFLBFilter,H.thresholdRsrpIFSBFilter,H.thresholdRsrqIFLBFilter,H.thresholdRsrqIFSBFilter,H.a3OffsetRsrqInterFreq,H.a3ReportIntervalRsrqInterFreq,H.a3TimeToTriggerRsrqInterFreq,H.hysA3OffsetRsrqInterFreq,H.a3ReportAmountRsrpInterFreq,H.a3ReportAmountRsrqInterFreq,H.a5ReportAmountRsrpInterFreq,H.a5ReportAmountRsrqInterFreq,H.id,H.t312,H.a3OffsetRsrpInterFreqHpue,H.a3OffsetRsrpInterFreqCatM,H.a3ReportIntervalRsrpInterFreqCatM,H.a3TimeToTriggerRsrpInterFreqCatM,H.hysA3OffsetRsrpInterFreqCatM,H.reducedMeasPerf,H.threshold3InterFreqHpue,H.threshold3aInterFreqHpue,H.useT312,H.thresholdRsrpEndcFilt
FROM LNHOIF AS H LEFT JOIN LNCEL_Full AS L ON (SUBSTRING_INDEX(H.distName,'/LNHOIF-',1)=L.distName);
--
--  IRFIM AUDIT WITHOUT ID
--
-- Q1 to 626
DROP TABLE IF EXISTS IRFIM_626AUD;
CREATE TABLE IRFIM_626AUD ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
L.IRFIM_id, L.dlCarFrqEut, L.enableA4IMLB, L.eutCelResPrio, L.idleLBEutCelResPrio, L.idleLBEutCelResWeight, L.interPresAntP, L.measBdw, L.minRsrpIMLB, L.minRsrqIMLB, L.qRxLevMinInterF, 1 AS enableA4IMLB_N, 5 AS eutCelResPrio_N, 30 AS idleLBEutCelResPrio_N, 4 AS idleLBEutCelResWeight_N, 1 AS interPresAntP_N, 1 AS measBdw_N, -112 AS minRsrpIMLB_N, -140 AS minRsrqIMLB_N, -118 AS qRxLevMinInterF_N
,CASE WHEN L.enableA4IMLB <> 1 THEN 1 ELSE 0 END AS enableA4IMLB_D,CASE WHEN L.eutCelResPrio <> 5 THEN 1 ELSE 0 END AS eutCelResPrio_D,CASE WHEN L.idleLBEutCelResPrio <> 30 THEN 1 ELSE 0 END AS idleLBEutCelResPrio_D,CASE WHEN L.idleLBEutCelResWeight <> 4 THEN 1 ELSE 0 END AS idleLBEutCelResWeight_D,CASE WHEN L.interPresAntP <> 1 THEN 1 ELSE 0 END AS interPresAntP_D,CASE WHEN L.measBdw <> 1 THEN 1 ELSE 0 END AS measBdw_D,CASE WHEN L.minRsrpIMLB <> -112 THEN 1 ELSE 0 END AS minRsrpIMLB_D,CASE WHEN L.minRsrqIMLB <> -140 THEN 1 ELSE 0 END AS minRsrqIMLB_D,CASE WHEN L.qRxLevMinInterF <> -118 THEN 1 ELSE 0 END AS qRxLevMinInterF_D
FROM IRFIM_ref AS L WHERE L.dlCarFrqEut=626 AND (L.enableA4IMLB<>1 OR L.eutCelResPrio<>5 OR L.idleLBEutCelResPrio<>30 OR L.idleLBEutCelResWeight<>4 OR L.interPresAntP<>1 OR L.measBdw<>1 OR L.minRsrpIMLB<>-112 OR L.minRsrqIMLB<>-140 OR L.qRxLevMinInterF<>-118);
--
--
-- Q2 to 651
DROP TABLE IF EXISTS IRFIM_651AUD;
CREATE TABLE IRFIM_651AUD ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
L.IRFIM_id, L.dlCarFrqEut, L.enableA4IMLB, L.eutCelResPrio, L.idleLBEutCelResPrio, L.idleLBEutCelResWeight, L.interPresAntP, L.measBdw, L.minRsrpIMLB, L.minRsrqIMLB, L.qRxLevMinInterF, 1 AS enableA4IMLB_N, 6 AS eutCelResPrio_N, 30 AS idleLBEutCelResPrio_N, 8 AS idleLBEutCelResWeight_N, 1 AS interPresAntP_N, 2 AS measBdw_N, -114 AS minRsrpIMLB_N, -140 AS minRsrqIMLB_N, -120 AS qRxLevMinInterF_N
,CASE WHEN L.enableA4IMLB <> 1 THEN 1 ELSE 0 END AS enableA4IMLB_D,CASE WHEN L.eutCelResPrio <> 6 THEN 1 ELSE 0 END AS eutCelResPrio_D,CASE WHEN L.idleLBEutCelResPrio <> 30 THEN 1 ELSE 0 END AS idleLBEutCelResPrio_D,CASE WHEN L.idleLBEutCelResWeight <> 8 THEN 1 ELSE 0 END AS idleLBEutCelResWeight_D,CASE WHEN L.interPresAntP <> 1 THEN 1 ELSE 0 END AS interPresAntP_D,CASE WHEN L.measBdw <> 2 THEN 1 ELSE 0 END AS measBdw_D,CASE WHEN L.minRsrpIMLB <> -114 THEN 1 ELSE 0 END AS minRsrpIMLB_D,CASE WHEN L.minRsrqIMLB <> -140 THEN 1 ELSE 0 END AS minRsrqIMLB_D,CASE WHEN L.qRxLevMinInterF <> -120 THEN 1 ELSE 0 END AS qRxLevMinInterF_D
FROM IRFIM_ref AS L WHERE L.dlCarFrqEut=651 AND (L.enableA4IMLB<>1 OR L.eutCelResPrio<>6 OR L.idleLBEutCelResPrio<>30 OR L.idleLBEutCelResWeight<>8 OR L.interPresAntP<>1 OR L.measBdw<>2 OR L.minRsrpIMLB<>-114 OR L.minRsrqIMLB<>-140 OR L.qRxLevMinInterF<>-120);
--
--
-- Q3 to 9560
DROP TABLE IF EXISTS IRFIM_9560AUD;
CREATE TABLE IRFIM_9560AUD ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
L.IRFIM_id, L.dlCarFrqEut, L.enableA4IMLB, L.eutCelResPrio, L.idleLBEutCelResPrio, L.idleLBEutCelResWeight, L.interPresAntP, L.measBdw, L.minRsrpIMLB, L.minRsrqIMLB, L.qRxLevMinInterF, 1 AS enableA4IMLB_N, 6 AS eutCelResPrio_N, 30 AS idleLBEutCelResPrio_N, 10 AS idleLBEutCelResWeight_N, 1 AS interPresAntP_N, 3 AS measBdw_N, -114 AS minRsrpIMLB_N, -140 AS minRsrqIMLB_N, -120 AS qRxLevMinInterF_N
,CASE WHEN L.enableA4IMLB <> 1 THEN 1 ELSE 0 END AS enableA4IMLB_D,CASE WHEN L.eutCelResPrio <> 6 THEN 1 ELSE 0 END AS eutCelResPrio_D,CASE WHEN L.idleLBEutCelResPrio <> 30 THEN 1 ELSE 0 END AS idleLBEutCelResPrio_D,CASE WHEN L.idleLBEutCelResWeight <> 10 THEN 1 ELSE 0 END AS idleLBEutCelResWeight_D,CASE WHEN L.interPresAntP <> 1 THEN 1 ELSE 0 END AS interPresAntP_D,CASE WHEN L.measBdw <> 3 THEN 1 ELSE 0 END AS measBdw_D,CASE WHEN L.minRsrpIMLB <> -114 THEN 1 ELSE 0 END AS minRsrpIMLB_D,CASE WHEN L.minRsrqIMLB <> -140 THEN 1 ELSE 0 END AS minRsrqIMLB_D,CASE WHEN L.qRxLevMinInterF <> -120 THEN 1 ELSE 0 END AS qRxLevMinInterF_D
FROM IRFIM_ref AS L WHERE L.dlCarFrqEut=9560 AND (L.enableA4IMLB<>1 OR L.eutCelResPrio<>6 OR L.idleLBEutCelResPrio<>30 OR L.idleLBEutCelResWeight<>10 OR L.interPresAntP<>1 OR L.measBdw<>3 OR L.minRsrpIMLB<>-114 OR L.minRsrqIMLB<>-140 OR L.qRxLevMinInterF<>-120);
--
--
-- Q4 3225 to 3075
DROP TABLE IF EXISTS IRFIM32253075AUD;
CREATE TABLE IRFIM32253075AUD ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
L.IRFIM_id, L.dlCarFrqEut, L.enableA4IMLB, L.eutCelResPrio, L.idleLBEutCelResPrio, L.idleLBEutCelResWeight, L.interPresAntP, L.measBdw, L.minRsrpIMLB, L.minRsrqIMLB, L.qRxLevMinInterF, 1 AS enableA4IMLB_N, 7 AS eutCelResPrio_N, 30 AS idleLBEutCelResPrio_N, 30 AS idleLBEutCelResWeight_N, 1 AS interPresAntP_N, 4 AS measBdw_N, -116 AS minRsrpIMLB_N, -140 AS minRsrqIMLB_N, -122 AS qRxLevMinInterF_N
,CASE WHEN L.enableA4IMLB <> 1 THEN 1 ELSE 0 END AS enableA4IMLB_D,CASE WHEN L.eutCelResPrio <> 7 THEN 1 ELSE 0 END AS eutCelResPrio_D,CASE WHEN L.idleLBEutCelResPrio <> 30 THEN 1 ELSE 0 END AS idleLBEutCelResPrio_D,CASE WHEN L.idleLBEutCelResWeight <> 30 THEN 1 ELSE 0 END AS idleLBEutCelResWeight_D,CASE WHEN L.interPresAntP <> 1 THEN 1 ELSE 0 END AS interPresAntP_D,CASE WHEN L.measBdw <> 4 THEN 1 ELSE 0 END AS measBdw_D,CASE WHEN L.minRsrpIMLB <> -116 THEN 1 ELSE 0 END AS minRsrpIMLB_D,CASE WHEN L.minRsrqIMLB <> -140 THEN 1 ELSE 0 END AS minRsrqIMLB_D,CASE WHEN L.qRxLevMinInterF <> -122 THEN 1 ELSE 0 END AS qRxLevMinInterF_D
FROM IRFIM_ref AS L WHERE L.earfcnDL=3225 AND L.dlCarFrqEut=3075 AND (L.enableA4IMLB<>1 OR L.eutCelResPrio<>7 OR L.idleLBEutCelResPrio<>30 OR L.idleLBEutCelResWeight<>30 OR L.interPresAntP<>1 OR L.measBdw<>4 OR L.minRsrpIMLB<>-116 OR L.minRsrqIMLB<>-140 OR L.qRxLevMinInterF<>-122);
--
--
-- Q5 3075 to 3225
DROP TABLE IF EXISTS IRFIM30753225AUD;
CREATE TABLE IRFIM30753225AUD ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
L.IRFIM_id, L.dlCarFrqEut, L.enableA4IMLB, L.eutCelResPrio, L.idleLBEutCelResPrio, L.idleLBEutCelResWeight, L.interPresAntP, L.measBdw, L.minRsrpIMLB, L.minRsrqIMLB, L.qRxLevMinInterF, 1 AS enableA4IMLB_N, 7 AS eutCelResPrio_N, 30 AS idleLBEutCelResPrio_N, 30 AS idleLBEutCelResWeight_N, 1 AS interPresAntP_N, 4 AS measBdw_N, -116 AS minRsrpIMLB_N, -140 AS minRsrqIMLB_N, -122 AS qRxLevMinInterF_N
,CASE WHEN L.enableA4IMLB <> 1 THEN 1 ELSE 0 END AS enableA4IMLB_D,CASE WHEN L.eutCelResPrio <> 7 THEN 1 ELSE 0 END AS eutCelResPrio_D,CASE WHEN L.idleLBEutCelResPrio <> 30 THEN 1 ELSE 0 END AS idleLBEutCelResPrio_D,CASE WHEN L.idleLBEutCelResWeight <> 30 THEN 1 ELSE 0 END AS idleLBEutCelResWeight_D,CASE WHEN L.interPresAntP <> 1 THEN 1 ELSE 0 END AS interPresAntP_D,CASE WHEN L.measBdw <> 4 THEN 1 ELSE 0 END AS measBdw_D,CASE WHEN L.minRsrpIMLB <> -116 THEN 1 ELSE 0 END AS minRsrpIMLB_D,CASE WHEN L.minRsrqIMLB <> -140 THEN 1 ELSE 0 END AS minRsrqIMLB_D,CASE WHEN L.qRxLevMinInterF <> -122 THEN 1 ELSE 0 END AS qRxLevMinInterF_D
FROM IRFIM_ref AS L WHERE L.earfcnDL=3075 AND L.dlCarFrqEut=3225 AND (L.enableA4IMLB<>1 OR L.eutCelResPrio<>7 OR L.idleLBEutCelResPrio<>30 OR L.idleLBEutCelResWeight<>30 OR L.interPresAntP<>1 OR L.measBdw<>4 OR L.minRsrpIMLB<>-116 OR L.minRsrqIMLB<>-140 OR L.qRxLevMinInterF<>-122);
--
--
-- Q6 to 3075
DROP TABLE IF EXISTS IRFIM_3075AUD;
CREATE TABLE IRFIM_3075AUD ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
L.IRFIM_id, L.dlCarFrqEut, L.enableA4IMLB, L.eutCelResPrio, L.idleLBEutCelResPrio, L.idleLBEutCelResWeight, L.interPresAntP, L.measBdw, L.minRsrpIMLB, L.minRsrqIMLB, L.qRxLevMinInterF, 1 AS enableA4IMLB_N, 7 AS eutCelResPrio_N, 30 AS idleLBEutCelResPrio_N, 15 AS idleLBEutCelResWeight_N, 1 AS interPresAntP_N, 4 AS measBdw_N, -116 AS minRsrpIMLB_N, -140 AS minRsrqIMLB_N, -122 AS qRxLevMinInterF_N
,CASE WHEN L.enableA4IMLB <> 1 THEN 1 ELSE 0 END AS enableA4IMLB_D,CASE WHEN L.eutCelResPrio <> 7 THEN 1 ELSE 0 END AS eutCelResPrio_D,CASE WHEN L.idleLBEutCelResPrio <> 30 THEN 1 ELSE 0 END AS idleLBEutCelResPrio_D,CASE WHEN L.idleLBEutCelResWeight <> 15 THEN 1 ELSE 0 END AS idleLBEutCelResWeight_D,CASE WHEN L.interPresAntP <> 1 THEN 1 ELSE 0 END AS interPresAntP_D,CASE WHEN L.measBdw <> 4 THEN 1 ELSE 0 END AS measBdw_D,CASE WHEN L.minRsrpIMLB <> -116 THEN 1 ELSE 0 END AS minRsrpIMLB_D,CASE WHEN L.minRsrqIMLB <> -140 THEN 1 ELSE 0 END AS minRsrqIMLB_D,CASE WHEN L.qRxLevMinInterF <> -122 THEN 1 ELSE 0 END AS qRxLevMinInterF_D
FROM IRFIM_ref AS L WHERE (L.earfcnDL=626 OR L.earfcnDL=651 OR L.earfcnDL=9560) AND L.dlCarFrqEut=3075 AND (L.enableA4IMLB<>1 OR L.eutCelResPrio<>7 OR L.idleLBEutCelResPrio<>30 OR L.idleLBEutCelResWeight<>15 OR L.interPresAntP<>1 OR L.measBdw<>4 OR L.minRsrpIMLB<>-116 OR L.minRsrqIMLB<>-140 OR L.qRxLevMinInterF<>-122);
--
--
-- Q7 to 3225
DROP TABLE IF EXISTS IRFIM_3225AUD;
CREATE TABLE IRFIM_3225AUD ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
L.IRFIM_id, L.dlCarFrqEut, L.enableA4IMLB, L.eutCelResPrio, L.idleLBEutCelResPrio, L.idleLBEutCelResWeight, L.interPresAntP, L.measBdw, L.minRsrpIMLB, L.minRsrqIMLB, L.qRxLevMinInterF, 1 AS enableA4IMLB_N, 7 AS eutCelResPrio_N, 30 AS idleLBEutCelResPrio_N, 15 AS idleLBEutCelResWeight_N, 1 AS interPresAntP_N, 4 AS measBdw_N, -116 AS minRsrpIMLB_N, -140 AS minRsrqIMLB_N, -122 AS qRxLevMinInterF_N
,CASE WHEN L.enableA4IMLB <> 1 THEN 1 ELSE 0 END AS enableA4IMLB_D,CASE WHEN L.eutCelResPrio <> 7 THEN 1 ELSE 0 END AS eutCelResPrio_D,CASE WHEN L.idleLBEutCelResPrio <> 30 THEN 1 ELSE 0 END AS idleLBEutCelResPrio_D,CASE WHEN L.idleLBEutCelResWeight <> 15 THEN 1 ELSE 0 END AS idleLBEutCelResWeight_D,CASE WHEN L.interPresAntP <> 1 THEN 1 ELSE 0 END AS interPresAntP_D,CASE WHEN L.measBdw <> 4 THEN 1 ELSE 0 END AS measBdw_D,CASE WHEN L.minRsrpIMLB <> -116 THEN 1 ELSE 0 END AS minRsrpIMLB_D,CASE WHEN L.minRsrqIMLB <> -140 THEN 1 ELSE 0 END AS minRsrqIMLB_D,CASE WHEN L.qRxLevMinInterF <> -122 THEN 1 ELSE 0 END AS qRxLevMinInterF_D
FROM IRFIM_ref AS L WHERE (L.earfcnDL=626 OR L.earfcnDL=651 OR L.earfcnDL=9560) AND L.dlCarFrqEut=3225 AND (L.enableA4IMLB<>1 OR L.eutCelResPrio<>7 OR L.idleLBEutCelResPrio<>30 OR L.idleLBEutCelResWeight<>15 OR L.interPresAntP<>1  OR L.measBdw<>4 OR L.minRsrpIMLB<>-116 OR L.minRsrqIMLB<>-140 OR L.qRxLevMinInterF<>-122);
--
--
--
--
-- AMLEPR custom
DROP TABLE IF EXISTS AMLEPR_ref;
CREATE TABLE AMLEPR_ref ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
CASE WHEN A.targetCarrierFreq BETWEEN 2750 and 3449 THEN 2600 ELSE (CASE WHEN A.targetCarrierFreq BETWEEN 600 and 1199 THEN 1900 ELSE (CASE WHEN A.targetCarrierFreq BETWEEN 9210 and 9659 THEN 700 ELSE (CASE WHEN A.targetCarrierFreq BETWEEN 2400 and 2649 THEN 850 ELSE NULL END)END)END)END AS BandaT, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNBTSname,
L.PLMN_id,
SUBSTRING_INDEX(A.distName,'AMLEPR-',-1) AS AMLEPR_id, A.version,A.cacHeadroom,A.deltaCac,A.maxCacThreshold,A.targetCarrierFreq,A.id
FROM AMLEPR AS A LEFT JOIN LNCEL_Full AS L ON (SUBSTRING_INDEX(A.distName,'/AMLEPR-',1)=L.distName);
--
--
--  AMLEPR AUDIT WITHOUT ID
--
DROP TABLE IF EXISTS AMLEPR_3075_3225;
CREATE TABLE AMLEPR_3075_3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
L.BandaT, L.LNBTSname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id, L.cacHeadroom, L.deltaCac, L.maxCacThreshold, L.targetCarrierFreq, 0 AS cacHeadroom_N, 15 AS deltaCac_N, 30 AS maxCacThreshold_N,CASE WHEN L.cacHeadroom <> 0 THEN 1 ELSE 0 END AS cacHeadroom_D,CASE WHEN L.deltaCac <> 15 THEN 1 ELSE 0 END AS deltaCac_D,CASE WHEN L.maxCacThreshold <> 30 THEN 1 ELSE 0 END AS maxCacThreshold_D
FROM AMLEPR_ref AS L
WHERE L.earfcnDL=3075 AND L.targetCarrierFreq=3225 AND (L.cacHeadroom<>0 OR L.deltaCac<>15 OR L.maxCacThreshold<>30);
--
--
DROP TABLE IF EXISTS AMLEPR_3075_651;
CREATE TABLE AMLEPR_3075_651 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
L.BandaT, L.LNBTSname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id, L.cacHeadroom, L.deltaCac, L.maxCacThreshold, L.targetCarrierFreq, 0 AS cacHeadroom_N, 30 AS deltaCac_N, 7 AS maxCacThreshold_N,CASE WHEN L.cacHeadroom <> 0 THEN 1 ELSE 0 END AS cacHeadroom_D,CASE WHEN L.deltaCac <> 30 THEN 1 ELSE 0 END AS deltaCac_D,CASE WHEN L.maxCacThreshold <> 7 THEN 1 ELSE 0 END AS maxCacThreshold_D
FROM AMLEPR_ref AS L
WHERE L.earfcnDL=3075 AND L.targetCarrierFreq=651 AND (L.cacHeadroom<>0 OR L.deltaCac<>30 OR L.maxCacThreshold<>7);
--
--
DROP TABLE IF EXISTS AMLEPR_3075_626;
CREATE TABLE AMLEPR_3075_626 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
L.BandaT, L.LNBTSname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id, L.cacHeadroom, L.deltaCac, L.maxCacThreshold, L.targetCarrierFreq, 0 AS cacHeadroom_N, 45 AS deltaCac_N, 7 AS maxCacThreshold_N,CASE WHEN L.cacHeadroom <> 0 THEN 1 ELSE 0 END AS cacHeadroom_D,CASE WHEN L.deltaCac <> 45 THEN 1 ELSE 0 END AS deltaCac_D,CASE WHEN L.maxCacThreshold <> 7 THEN 1 ELSE 0 END AS maxCacThreshold_D
FROM AMLEPR_ref AS L
WHERE L.earfcnDL=3075 AND L.targetCarrierFreq=626 AND (L.cacHeadroom<>0 OR L.deltaCac<>45 OR L.maxCacThreshold<>7);
--
--
DROP TABLE IF EXISTS AMLEPR_3075_9560;
CREATE TABLE AMLEPR_3075_9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
L.BandaT, L.LNBTSname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id, L.cacHeadroom, L.deltaCac, L.maxCacThreshold, L.targetCarrierFreq, 0 AS cacHeadroom_N, 30 AS deltaCac_N, 7 AS maxCacThreshold_N,CASE WHEN L.cacHeadroom <> 0 THEN 1 ELSE 0 END AS cacHeadroom_D,CASE WHEN L.deltaCac <> 30 THEN 1 ELSE 0 END AS deltaCac_D,CASE WHEN L.maxCacThreshold <> 7 THEN 1 ELSE 0 END AS maxCacThreshold_D
FROM AMLEPR_ref AS L
WHERE L.earfcnDL=3075 AND L.targetCarrierFreq=9560 AND (L.cacHeadroom<>0 OR L.deltaCac<>30 OR L.maxCacThreshold<>7);
--
--
DROP TABLE IF EXISTS AMLEPR_3225_3075;
CREATE TABLE AMLEPR_3225_3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
L.BandaT, L.LNBTSname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id, L.cacHeadroom, L.deltaCac, L.maxCacThreshold, L.targetCarrierFreq, 0 AS cacHeadroom_N, 15 AS deltaCac_N, 30 AS maxCacThreshold_N,CASE WHEN L.cacHeadroom <> 0 THEN 1 ELSE 0 END AS cacHeadroom_D,CASE WHEN L.deltaCac <> 15 THEN 1 ELSE 0 END AS deltaCac_D,CASE WHEN L.maxCacThreshold <> 30 THEN 1 ELSE 0 END AS maxCacThreshold_D
FROM AMLEPR_ref AS L
WHERE L.earfcnDL=3225 AND L.targetCarrierFreq=3075 AND (L.cacHeadroom<>0 OR L.deltaCac<>15 OR L.maxCacThreshold<>30);
--
--
DROP TABLE IF EXISTS AMLEPR_3225_651;
CREATE TABLE AMLEPR_3225_651 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
L.BandaT, L.LNBTSname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id, L.cacHeadroom, L.deltaCac, L.maxCacThreshold, L.targetCarrierFreq, 0 AS cacHeadroom_N, 30 AS deltaCac_N, 7 AS maxCacThreshold_N,CASE WHEN L.cacHeadroom <> 0 THEN 1 ELSE 0 END AS cacHeadroom_D,CASE WHEN L.deltaCac <> 30 THEN 1 ELSE 0 END AS deltaCac_D,CASE WHEN L.maxCacThreshold <> 7 THEN 1 ELSE 0 END AS maxCacThreshold_D
FROM AMLEPR_ref AS L
WHERE L.earfcnDL=3225 AND L.targetCarrierFreq=651 AND (L.cacHeadroom<>0 OR L.deltaCac<>30 OR L.maxCacThreshold<>7);
--
--
DROP TABLE IF EXISTS AMLEPR_3225_626;
CREATE TABLE AMLEPR_3225_626 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
L.BandaT, L.LNBTSname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id, L.cacHeadroom, L.deltaCac, L.maxCacThreshold, L.targetCarrierFreq, 0 AS cacHeadroom_N, 45 AS deltaCac_N, 7 AS maxCacThreshold_N,CASE WHEN L.cacHeadroom <> 0 THEN 1 ELSE 0 END AS cacHeadroom_D,CASE WHEN L.deltaCac <> 45 THEN 1 ELSE 0 END AS deltaCac_D,CASE WHEN L.maxCacThreshold <> 7 THEN 1 ELSE 0 END AS maxCacThreshold_D
FROM AMLEPR_ref AS L
WHERE L.earfcnDL=3225 AND L.targetCarrierFreq=626 AND (L.cacHeadroom<>0 OR L.deltaCac<>45 OR L.maxCacThreshold<>7);
--
--
DROP TABLE IF EXISTS AMLEPR_3225_9560;
CREATE TABLE AMLEPR_3225_9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
L.BandaT, L.LNBTSname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id, L.cacHeadroom, L.deltaCac, L.maxCacThreshold, L.targetCarrierFreq, 0 AS cacHeadroom_N, 30 AS deltaCac_N, 7 AS maxCacThreshold_N,CASE WHEN L.cacHeadroom <> 0 THEN 1 ELSE 0 END AS cacHeadroom_D,CASE WHEN L.deltaCac <> 30 THEN 1 ELSE 0 END AS deltaCac_D,CASE WHEN L.maxCacThreshold <> 7 THEN 1 ELSE 0 END AS maxCacThreshold_D
FROM AMLEPR_ref AS L
WHERE L.earfcnDL=3225 AND L.targetCarrierFreq=9560 AND (L.cacHeadroom<>0 OR L.deltaCac<>30 OR L.maxCacThreshold<>7);
--
--
DROP TABLE IF EXISTS AMLEPR_651_3075;
CREATE TABLE AMLEPR_651_3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
L.BandaT, L.LNBTSname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id, L.cacHeadroom, L.deltaCac, L.maxCacThreshold, L.targetCarrierFreq, 0 AS cacHeadroom_N, 20 AS deltaCac_N, 50 AS maxCacThreshold_N,CASE WHEN L.cacHeadroom <> 0 THEN 1 ELSE 0 END AS cacHeadroom_D,CASE WHEN L.deltaCac <> 20 THEN 1 ELSE 0 END AS deltaCac_D,CASE WHEN L.maxCacThreshold <> 50 THEN 1 ELSE 0 END AS maxCacThreshold_D
FROM AMLEPR_ref AS L
WHERE L.earfcnDL=651 AND L.targetCarrierFreq=3075 AND (L.cacHeadroom<>0 OR L.deltaCac<>20 OR L.maxCacThreshold<>50);
--
--
DROP TABLE IF EXISTS AMLEPR_651_3225;
CREATE TABLE AMLEPR_651_3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
L.BandaT, L.LNBTSname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id, L.cacHeadroom, L.deltaCac, L.maxCacThreshold, L.targetCarrierFreq, 0 AS cacHeadroom_N, 20 AS deltaCac_N, 50 AS maxCacThreshold_N,CASE WHEN L.cacHeadroom <> 0 THEN 1 ELSE 0 END AS cacHeadroom_D,CASE WHEN L.deltaCac <> 20 THEN 1 ELSE 0 END AS deltaCac_D,CASE WHEN L.maxCacThreshold <> 50 THEN 1 ELSE 0 END AS maxCacThreshold_D
FROM AMLEPR_ref AS L
WHERE L.earfcnDL=651 AND L.targetCarrierFreq=3225 AND (L.cacHeadroom<>0 OR L.deltaCac<>20 OR L.maxCacThreshold<>50);
--
--
DROP TABLE IF EXISTS AMLEPR_651_626;
CREATE TABLE AMLEPR_651_626 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
L.BandaT, L.LNBTSname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id, L.cacHeadroom, L.deltaCac, L.maxCacThreshold, L.targetCarrierFreq, 0 AS cacHeadroom_N, 15 AS deltaCac_N, 60 AS maxCacThreshold_N,CASE WHEN L.cacHeadroom <> 0 THEN 1 ELSE 0 END AS cacHeadroom_D,CASE WHEN L.deltaCac <> 15 THEN 1 ELSE 0 END AS deltaCac_D,CASE WHEN L.maxCacThreshold <> 50 THEN 1 ELSE 0 END AS maxCacThreshold_D
FROM AMLEPR_ref AS L
WHERE L.earfcnDL=651 AND L.targetCarrierFreq=626 AND (L.cacHeadroom <> 0 OR L.deltaCac <> 15 OR L.maxCacThreshold <> 50);
--
--
DROP TABLE IF EXISTS AMLEPR_651_9560;
CREATE TABLE AMLEPR_651_9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
L.BandaT, L.LNBTSname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id, L.cacHeadroom, L.deltaCac, L.maxCacThreshold, L.targetCarrierFreq, 0 AS cacHeadroom_N, 15 AS deltaCac_N, 50 AS maxCacThreshold_N,CASE WHEN L.cacHeadroom <> 0 THEN 1 ELSE 0 END AS cacHeadroom_D,CASE WHEN L.deltaCac <> 15 THEN 1 ELSE 0 END AS deltaCac_D,CASE WHEN L.maxCacThreshold <> 50 THEN 1 ELSE 0 END AS maxCacThreshold_D
FROM AMLEPR_ref AS L
WHERE L.earfcnDL=651 AND L.targetCarrierFreq=9560 AND (L.cacHeadroom<>0 OR L.deltaCac<>15 OR L.maxCacThreshold<>50);
--
--
DROP TABLE IF EXISTS AMLEPR_626_3075;
CREATE TABLE AMLEPR_626_3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
L.BandaT, L.LNBTSname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id, L.cacHeadroom, L.deltaCac, L.maxCacThreshold, L.targetCarrierFreq, 0 AS cacHeadroom_N, 15 AS deltaCac_N, 65 AS maxCacThreshold_N,CASE WHEN L.cacHeadroom <> 0 THEN 1 ELSE 0 END AS cacHeadroom_D,CASE WHEN L.deltaCac <> 15 THEN 1 ELSE 0 END AS deltaCac_D,CASE WHEN L.maxCacThreshold <> 65 THEN 1 ELSE 0 END AS maxCacThreshold_D
FROM AMLEPR_ref AS L
WHERE L.earfcnDL=626 AND L.targetCarrierFreq=3075 AND (L.cacHeadroom<>0 OR L.deltaCac<>15 OR L.maxCacThreshold<>65);
--
--
DROP TABLE IF EXISTS AMLEPR_626_3225;
CREATE TABLE AMLEPR_626_3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
L.BandaT, L.LNBTSname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id, L.cacHeadroom, L.deltaCac, L.maxCacThreshold, L.targetCarrierFreq, 0 AS cacHeadroom_N, 15 AS deltaCac_N, 65 AS maxCacThreshold_N,CASE WHEN L.cacHeadroom <> 0 THEN 1 ELSE 0 END AS cacHeadroom_D,CASE WHEN L.deltaCac <> 15 THEN 1 ELSE 0 END AS deltaCac_D,CASE WHEN L.maxCacThreshold <> 65 THEN 1 ELSE 0 END AS maxCacThreshold_D
FROM AMLEPR_ref AS L
WHERE L.earfcnDL=626 AND L.targetCarrierFreq=3225 AND (L.cacHeadroom<>0 OR L.deltaCac<>15 OR L.maxCacThreshold<>65);
--
--
DROP TABLE IF EXISTS AMLEPR_626_651;
CREATE TABLE AMLEPR_626_651 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
L.BandaT, L.LNBTSname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id, L.cacHeadroom, L.deltaCac, L.maxCacThreshold, L.targetCarrierFreq, 0 AS cacHeadroom_N, 15 AS deltaCac_N, 65 AS maxCacThreshold_N,CASE WHEN L.cacHeadroom <> 0 THEN 1 ELSE 0 END AS cacHeadroom_D,CASE WHEN L.deltaCac <> 15 THEN 1 ELSE 0 END AS deltaCac_D,CASE WHEN L.maxCacThreshold <> 65 THEN 1 ELSE 0 END AS maxCacThreshold_D
FROM AMLEPR_ref AS L
WHERE L.earfcnDL=626 AND L.targetCarrierFreq=651 AND (L.cacHeadroom<>0 OR L.deltaCac<>15 OR L.maxCacThreshold<>65);
--
--
DROP TABLE IF EXISTS AMLEPR_626_9560;
CREATE TABLE AMLEPR_626_9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
L.BandaT, L.LNBTSname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id, L.cacHeadroom, L.deltaCac, L.maxCacThreshold, L.targetCarrierFreq, 0 AS cacHeadroom_N, 15 AS deltaCac_N, 65 AS maxCacThreshold_N,CASE WHEN L.cacHeadroom <> 0 THEN 1 ELSE 0 END AS cacHeadroom_D,CASE WHEN L.deltaCac <> 15 THEN 1 ELSE 0 END AS deltaCac_D,CASE WHEN L.maxCacThreshold <> 65 THEN 1 ELSE 0 END AS maxCacThreshold_D
FROM AMLEPR_ref AS L
WHERE L.earfcnDL=626 AND L.targetCarrierFreq=9560 AND (L.cacHeadroom<>0 OR L.deltaCac<>15 OR L.maxCacThreshold<>65);
--
--
DROP TABLE IF EXISTS AMLEPR_9560_3075;
CREATE TABLE AMLEPR_9560_3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
L.BandaT, L.LNBTSname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id, L.cacHeadroom, L.deltaCac, L.maxCacThreshold, L.targetCarrierFreq, 0 AS cacHeadroom_N, 20 AS deltaCac_N, 50 AS maxCacThreshold_N,CASE WHEN L.cacHeadroom <> 0 THEN 1 ELSE 0 END AS cacHeadroom_D,CASE WHEN L.deltaCac <> 20 THEN 1 ELSE 0 END AS deltaCac_D,CASE WHEN L.maxCacThreshold <> 50 THEN 1 ELSE 0 END AS maxCacThreshold_D
FROM AMLEPR_ref AS L
WHERE L.earfcnDL=9560 AND L.targetCarrierFreq=3075 AND (L.cacHeadroom<>0 OR L.deltaCac<>20 OR L.maxCacThreshold<>50);
--
--
DROP TABLE IF EXISTS AMLEPR_9560_3225;
CREATE TABLE AMLEPR_9560_3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
L.BandaT, L.LNBTSname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id, L.cacHeadroom, L.deltaCac, L.maxCacThreshold, L.targetCarrierFreq, 0 AS cacHeadroom_N, 20 AS deltaCac_N, 50 AS maxCacThreshold_N,CASE WHEN L.cacHeadroom <> 0 THEN 1 ELSE 0 END AS cacHeadroom_D,CASE WHEN L.deltaCac <> 20 THEN 1 ELSE 0 END AS deltaCac_D,CASE WHEN L.maxCacThreshold <> 50 THEN 1 ELSE 0 END AS maxCacThreshold_D
FROM AMLEPR_ref AS L
WHERE L.earfcnDL=9560 AND L.targetCarrierFreq=3225 AND (L.cacHeadroom<>0 OR L.deltaCac<>20 OR L.maxCacThreshold<>50);
--
--
DROP TABLE IF EXISTS AMLEPR_9560_651;
CREATE TABLE AMLEPR_9560_651 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
L.BandaT, L.LNBTSname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id, L.cacHeadroom, L.deltaCac, L.maxCacThreshold, L.targetCarrierFreq, 0 AS cacHeadroom_N, 15 AS deltaCac_N, 60 AS maxCacThreshold_N,CASE WHEN L.cacHeadroom <> 0 THEN 1 ELSE 0 END AS cacHeadroom_D,CASE WHEN L.deltaCac <> 15 THEN 1 ELSE 0 END AS deltaCac_D,CASE WHEN L.maxCacThreshold <> 50 THEN 1 ELSE 0 END AS maxCacThreshold_D
FROM AMLEPR_ref AS L
WHERE L.earfcnDL=9560 AND L.targetCarrierFreq=651 AND (L.cacHeadroom <> 0 OR L.deltaCac <> 15 OR L.maxCacThreshold <> 50);
--
--
DROP TABLE IF EXISTS AMLEPR_9560_626;
CREATE TABLE AMLEPR_9560_626 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,
L.BandaT, L.LNBTSname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id, L.cacHeadroom, L.deltaCac, L.maxCacThreshold, L.targetCarrierFreq, 0 AS cacHeadroom_N, 15 AS deltaCac_N, 50 AS maxCacThreshold_N,CASE WHEN L.cacHeadroom <> 0 THEN 1 ELSE 0 END AS cacHeadroom_D,CASE WHEN L.deltaCac <> 15 THEN 1 ELSE 0 END AS deltaCac_D,CASE WHEN L.maxCacThreshold <> 50 THEN 1 ELSE 0 END AS maxCacThreshold_D
FROM AMLEPR_ref AS L
WHERE L.earfcnDL=9560 AND L.targetCarrierFreq=626 AND (L.cacHeadroom<>0 OR L.deltaCac<>15 OR L.maxCacThreshold<>50);
--
--
--
--
--  LNCEL IRFIM combinations FROM 626 TO 3075
DROP TABLE IF EXISTS LNCEL_IRFIM626_3075;
CREATE TABLE LNCEL_IRFIM626_3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 3075 AS dlCarFrqEut,1 AS enableA4IMLB,7 AS eutCelResPrio,30 AS idleLBEutCelResPrio,15 AS idleLBEutCelResWeight,1 AS interPresAntP,1 AS IRFIM_id,4 AS measBdw,-116 AS minRsrpIMLB,-140 AS minRsrqIMLB,-122 AS qRxLevMinInterF
FROM LNCEL_Full AS L INNER JOIN Sites_L3075 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 626;
--
--  LNCEL IRFIM combinations FROM 626 TO 3225
DROP TABLE IF EXISTS LNCEL_IRFIM626_3225;
CREATE TABLE LNCEL_IRFIM626_3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 3225 AS dlCarFrqEut,1 AS enableA4IMLB,7 AS eutCelResPrio,30 AS idleLBEutCelResPrio,15 AS idleLBEutCelResWeight,1 AS interPresAntP,2 AS IRFIM_id,4 AS measBdw,-116 AS minRsrpIMLB,-140 AS minRsrqIMLB,-122 AS qRxLevMinInterF
FROM LNCEL_Full AS L INNER JOIN Sites_L3225 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 626;
--
--  LNCEL IRFIM combinations FROM 626 TO 9560
DROP TABLE IF EXISTS LNCEL_IRFIM626_9560;
CREATE TABLE LNCEL_IRFIM626_9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 9560 AS dlCarFrqEut,1 AS enableA4IMLB,6 AS eutCelResPrio,30 AS idleLBEutCelResPrio,10 AS idleLBEutCelResWeight,1 AS interPresAntP,5 AS IRFIM_id,3 AS measBdw,-114 AS minRsrpIMLB,-140 AS minRsrqIMLB,-120 AS qRxLevMinInterF
FROM LNCEL_Full AS L INNER JOIN Sites_L9560 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 626;
--
--  LNCEL IRFIM combinations FROM 651 TO 3075
DROP TABLE IF EXISTS LNCEL_IRFIM651_3075;
CREATE TABLE LNCEL_IRFIM651_3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 3075 AS dlCarFrqEut,1 AS enableA4IMLB,7 AS eutCelResPrio,30 AS idleLBEutCelResPrio,15 AS idleLBEutCelResWeight,1 AS interPresAntP,1 AS IRFIM_id,4 AS measBdw,-116 AS minRsrpIMLB,-140 AS minRsrqIMLB,-122 AS qRxLevMinInterF
FROM LNCEL_Full AS L INNER JOIN Sites_L3075 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 651;
--
--  LNCEL IRFIM combinations FROM 651 TO 3225
DROP TABLE IF EXISTS LNCEL_IRFIM651_3225;
CREATE TABLE LNCEL_IRFIM651_3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 3225 AS dlCarFrqEut,1 AS enableA4IMLB,7 AS eutCelResPrio,30 AS idleLBEutCelResPrio,15 AS idleLBEutCelResWeight,1 AS interPresAntP,2 AS IRFIM_id,4 AS measBdw,-116 AS minRsrpIMLB,-140 AS minRsrqIMLB,-122 AS qRxLevMinInterF
FROM LNCEL_Full AS L INNER JOIN Sites_L3225 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 651;
--
--  LNCEL IRFIM combinations FROM 651 TO 9560
DROP TABLE IF EXISTS LNCEL_IRFIM651_9560;
CREATE TABLE LNCEL_IRFIM651_9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 9560 AS dlCarFrqEut,1 AS enableA4IMLB,6 AS eutCelResPrio,30 AS idleLBEutCelResPrio,10 AS idleLBEutCelResWeight,1 AS interPresAntP,5 AS IRFIM_id,3 AS measBdw,-114 AS minRsrpIMLB,-140 AS minRsrqIMLB,-120 AS qRxLevMinInterF
FROM LNCEL_Full AS L INNER JOIN Sites_L9560 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 651;
--
--  LNCEL IRFIM combinations FROM 3075 TO 651
DROP TABLE IF EXISTS LNCEL_IRFIM3075_651;
CREATE TABLE LNCEL_IRFIM3075_651 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 651 AS dlCarFrqEut,1 AS enableA4IMLB,6 AS eutCelResPrio,30 AS idleLBEutCelResPrio,8 AS idleLBEutCelResWeight,1 AS interPresAntP,4 AS IRFIM_id,2 AS measBdw,-114 AS minRsrpIMLB,-140 AS minRsrqIMLB,-120 AS qRxLevMinInterF
FROM LNCEL_Full AS L INNER JOIN Sites_L651 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 3075;
--
--  LNCEL IRFIM combinations FROM 3075 TO 626
DROP TABLE IF EXISTS LNCEL_IRFIM3075_626;
CREATE TABLE LNCEL_IRFIM3075_626 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 626 AS dlCarFrqEut,1 AS enableA4IMLB,5 AS eutCelResPrio,30 AS idleLBEutCelResPrio,4 AS idleLBEutCelResWeight,1 AS interPresAntP,3 AS IRFIM_id,1 AS measBdw,-112 AS minRsrpIMLB,-140 AS minRsrqIMLB,-118 AS qRxLevMinInterF
FROM LNCEL_Full AS L INNER JOIN Sites_L626 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 3075;
--
--  LNCEL IRFIM combinations FROM 3075 TO 3225
DROP TABLE IF EXISTS LNCEL_IRFIM3075_3225;
CREATE TABLE LNCEL_IRFIM3075_3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 3225 AS dlCarFrqEut,1 AS enableA4IMLB,7 AS eutCelResPrio,30 AS idleLBEutCelResPrio,30 AS idleLBEutCelResWeight,1 AS interPresAntP,2 AS IRFIM_id,4 AS measBdw,-116 AS minRsrpIMLB,-140 AS minRsrqIMLB,-122 AS qRxLevMinInterF
FROM LNCEL_Full AS L INNER JOIN Sites_L3225 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 3075;
--
--  LNCEL IRFIM combinations FROM 3075 TO 9560
DROP TABLE IF EXISTS LNCEL_IRFIM3075_9560;
CREATE TABLE LNCEL_IRFIM3075_9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 9560 AS dlCarFrqEut,1 AS enableA4IMLB,6 AS eutCelResPrio,30 AS idleLBEutCelResPrio,10 AS idleLBEutCelResWeight,1 AS interPresAntP,5 AS IRFIM_id,3 AS measBdw,-114 AS minRsrpIMLB,-140 AS minRsrqIMLB,-120 AS qRxLevMinInterF
FROM LNCEL_Full AS L INNER JOIN Sites_L9560 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 3075;
--
--  LNCEL IRFIM combinations FROM 3225 TO 651
DROP TABLE IF EXISTS LNCEL_IRFIM3225_651;
CREATE TABLE LNCEL_IRFIM3225_651 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 651 AS dlCarFrqEut,1 AS enableA4IMLB,6 AS eutCelResPrio,30 AS idleLBEutCelResPrio,8 AS idleLBEutCelResWeight,1 AS interPresAntP,4 AS IRFIM_id,2 AS measBdw,-114 AS minRsrpIMLB,-140 AS minRsrqIMLB,-120 AS qRxLevMinInterF
FROM LNCEL_Full AS L INNER JOIN Sites_L651 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 3225;
--
--  LNCEL IRFIM combinations FROM 3225 TO 626
DROP TABLE IF EXISTS LNCEL_IRFIM3225_626;
CREATE TABLE LNCEL_IRFIM3225_626 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 626 AS dlCarFrqEut,1 AS enableA4IMLB,5 AS eutCelResPrio,30 AS idleLBEutCelResPrio,4 AS idleLBEutCelResWeight,1 AS interPresAntP,3 AS IRFIM_id,1 AS measBdw,-112 AS minRsrpIMLB,-140 AS minRsrqIMLB,-118 AS qRxLevMinInterF
FROM LNCEL_Full AS L INNER JOIN Sites_L626 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 3225;
--
--  LNCEL IRFIM combinations FROM 3225 TO 3075
DROP TABLE IF EXISTS LNCEL_IRFIM3225_3075;
CREATE TABLE LNCEL_IRFIM3225_3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 3075 AS dlCarFrqEut,1 AS enableA4IMLB,7 AS eutCelResPrio,30 AS idleLBEutCelResPrio,30 AS idleLBEutCelResWeight,1 AS interPresAntP,1 AS IRFIM_id,4 AS measBdw,-116 AS minRsrpIMLB,-140 AS minRsrqIMLB,-122 AS qRxLevMinInterF
FROM LNCEL_Full AS L INNER JOIN Sites_L3075 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 3225;
--
--  LNCEL IRFIM combinations FROM 3225 TO 9560
DROP TABLE IF EXISTS LNCEL_IRFIM3225_9560;
CREATE TABLE LNCEL_IRFIM3225_9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 9560 AS dlCarFrqEut,1 AS enableA4IMLB,6 AS eutCelResPrio,30 AS idleLBEutCelResPrio,10 AS idleLBEutCelResWeight,1 AS interPresAntP,5 AS IRFIM_id,3 AS measBdw,-114 AS minRsrpIMLB,-140 AS minRsrqIMLB,-120 AS qRxLevMinInterF
FROM LNCEL_Full AS L INNER JOIN Sites_L9560 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 3225;
--
--  LNCEL IRFIM combinations FROM 9560 TO 651
DROP TABLE IF EXISTS LNCEL_IRFIM9560_651;
CREATE TABLE LNCEL_IRFIM9560_651 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 651 AS dlCarFrqEut,1 AS enableA4IMLB,6 AS eutCelResPrio,30 AS idleLBEutCelResPrio,8 AS idleLBEutCelResWeight,1 AS interPresAntP,4 AS IRFIM_id,2 AS measBdw,-114 AS minRsrpIMLB,-140 AS minRsrqIMLB,-120 AS qRxLevMinInterF
FROM LNCEL_Full AS L INNER JOIN Sites_L651 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 9560;
--
--  LNCEL IRFIM combinations FROM 9560 TO 626
DROP TABLE IF EXISTS LNCEL_IRFIM9560_626;
CREATE TABLE LNCEL_IRFIM9560_626 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 626 AS dlCarFrqEut,1 AS enableA4IMLB,5 AS eutCelResPrio,30 AS idleLBEutCelResPrio,4 AS idleLBEutCelResWeight,1 AS interPresAntP,3 AS IRFIM_id,1 AS measBdw,-112 AS minRsrpIMLB,-140 AS minRsrqIMLB,-118 AS qRxLevMinInterF
FROM LNCEL_Full AS L INNER JOIN Sites_L626 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 9560;
--
--  LNCEL IRFIM combinations FROM 9560 TO 3075
DROP TABLE IF EXISTS LNCEL_IRFIM9560_3075;
CREATE TABLE LNCEL_IRFIM9560_3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 3075 AS dlCarFrqEut,1 AS enableA4IMLB,7 AS eutCelResPrio,30 AS idleLBEutCelResPrio,15 AS idleLBEutCelResWeight,1 AS interPresAntP,1 AS IRFIM_id,4 AS measBdw,-116 AS minRsrpIMLB,-140 AS minRsrqIMLB,-122 AS qRxLevMinInterF
FROM LNCEL_Full AS L INNER JOIN Sites_L3075 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 9560;
--
--  LNCEL IRFIM combinations FROM 9560 TO 3225
DROP TABLE IF EXISTS LNCEL_IRFIM9560_3225;
CREATE TABLE LNCEL_IRFIM9560_3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 3225 AS dlCarFrqEut,1 AS enableA4IMLB,7 AS eutCelResPrio,30 AS idleLBEutCelResPrio,15 AS idleLBEutCelResWeight,1 AS interPresAntP,2 AS IRFIM_id,4 AS measBdw,-116 AS minRsrpIMLB,-140 AS minRsrqIMLB,-122 AS qRxLevMinInterF
FROM LNCEL_Full AS L INNER JOIN Sites_L3225 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 9560;
--
--
DROP TABLE IF EXISTS LNCEL_IRFIM_FULL;
CREATE TABLE LNCEL_IRFIM_FULL ENGINE=MyISAM AS
SELECT * FROM LNCEL_IRFIM626_3075
UNION ALL
SELECT * FROM LNCEL_IRFIM626_3225
UNION ALL
SELECT * FROM LNCEL_IRFIM626_9560
UNION ALL
SELECT * FROM LNCEL_IRFIM651_3075
UNION ALL
SELECT * FROM LNCEL_IRFIM651_3225
UNION ALL
SELECT * FROM LNCEL_IRFIM651_9560
UNION ALL
SELECT * FROM LNCEL_IRFIM3075_651
UNION ALL
SELECT * FROM LNCEL_IRFIM3075_626
UNION ALL
SELECT * FROM LNCEL_IRFIM3075_3225
UNION ALL
SELECT * FROM LNCEL_IRFIM3075_9560
UNION ALL
SELECT * FROM LNCEL_IRFIM3225_651
UNION ALL
SELECT * FROM LNCEL_IRFIM3225_626
UNION ALL
SELECT * FROM LNCEL_IRFIM3225_3075
UNION ALL
SELECT * FROM LNCEL_IRFIM3225_9560
UNION ALL
SELECT * FROM LNCEL_IRFIM9560_651
UNION ALL
SELECT * FROM LNCEL_IRFIM9560_626
UNION ALL
SELECT * FROM LNCEL_IRFIM9560_3075
UNION ALL
SELECT * FROM LNCEL_IRFIM9560_3225
ORDER BY
    Region DESC, LNCELname;
--
--
--
DROP TABLE IF EXISTS IRFIM_Miss;
CREATE TABLE IRFIM_Miss ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,L.dlCarFrqEut,L.enableA4IMLB, L.eutCelResPrio, L.idleLBEutCelResPrio, L.idleLBEutCelResWeight, L.interPresAntP, L.IRFIM_id, L.measBdw, L.minRsrpIMLB, L.minRsrqIMLB, L.qRxLevMinInterF, I.dlCarFrqEut AS dlCarFrqEutMiss
FROM LNCEL_IRFIM_Full AS L LEFT JOIN IRFIM_ref AS I ON ((L.PLMN_id = I.PLMN_id) AND (L.MRBTS_id = I.MRBTS_id) AND (L.LNBTS_id = I.LNBTS_id) AND (L.LNCEL_id = I.LNCEL_id) AND (L.dlCarFrqEut = I.dlCarFrqEut))
WHERE I.dlCarFrqEut IS NULL
ORDER BY L.Region DESC, L.LNCELname;
--
--
--
--
--   
--  LNCEL LNHOIF combinations FROM 9560 TO 626
DROP TABLE IF EXISTS LNCEL_LNHOIF9560_626;
CREATE TABLE LNCEL_LNHOIF9560_626 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
626 AS eutraCarrierInfo,1 AS measurementBandwidth,30 AS a3OffsetRsrpInterFreq,30 AS a3OffsetRsrpInterFreqQCI1,30 AS hysA3OffsetRsrpInterFreq,12 AS iFGroupPrio,-140 AS thresholdRsrqIFLBFilter,30 AS threshold3aInterFreqQci1,30 AS threshold3aInterFreq,23 AS threshold3InterFreqQci1,-110 AS thresholdRsrpIFLBFilter,23 AS threshold3InterFreq
FROM LNCEL_Full AS L INNER JOIN Sites_L626 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL =9560;
--
--
--  LNCEL LNHOIF combinations FROM 3225 TO 626
DROP TABLE IF EXISTS LNCEL_LNHOIF3225_626;
CREATE TABLE LNCEL_LNHOIF3225_626 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
626 AS eutraCarrierInfo,1 AS measurementBandwidth,30 AS a3OffsetRsrpInterFreq,30 AS a3OffsetRsrpInterFreqQCI1,30 AS hysA3OffsetRsrpInterFreq,12 AS iFGroupPrio,-140 AS thresholdRsrqIFLBFilter,30 AS threshold3aInterFreqQci1,30 AS threshold3aInterFreq,23 AS threshold3InterFreqQci1,-110 AS thresholdRsrpIFLBFilter,23 AS threshold3InterFreq
FROM LNCEL_Full AS L INNER JOIN Sites_L626 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL =3225;
--
--
--  LNCEL LNHOIF combinations FROM 3075 TO 626
DROP TABLE IF EXISTS LNCEL_LNHOIF3075_626;
CREATE TABLE LNCEL_LNHOIF3075_626 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
626 AS eutraCarrierInfo,1 AS measurementBandwidth,30 AS a3OffsetRsrpInterFreq,30 AS a3OffsetRsrpInterFreqQCI1,30 AS hysA3OffsetRsrpInterFreq,12 AS iFGroupPrio,-140 AS thresholdRsrqIFLBFilter,30 AS threshold3aInterFreqQci1,30 AS threshold3aInterFreq,23 AS threshold3InterFreqQci1,-110 AS thresholdRsrpIFLBFilter,23 AS threshold3InterFreq
FROM LNCEL_Full AS L INNER JOIN Sites_L626 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL =3075;
--
--
--  LNCEL LNHOIF combinations FROM 9560 TO 651
DROP TABLE IF EXISTS LNCEL_LNHOIF9560_651;
CREATE TABLE LNCEL_LNHOIF9560_651 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
651 AS eutraCarrierInfo,2 AS measurementBandwidth,30 AS a3OffsetRsrpInterFreq,30 AS a3OffsetRsrpInterFreqQCI1,30 AS hysA3OffsetRsrpInterFreq,12 AS iFGroupPrio,-140 AS thresholdRsrqIFLBFilter,28 AS threshold3aInterFreqQci1,28 AS threshold3aInterFreq,23 AS threshold3InterFreqQci1,-112 AS thresholdRsrpIFLBFilter,23 AS threshold3InterFreq
FROM LNCEL_Full AS L INNER JOIN Sites_L651 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL =9560;
--
--
--  LNCEL LNHOIF combinations FROM 3225 TO 651
DROP TABLE IF EXISTS LNCEL_LNHOIF3225_651;
CREATE TABLE LNCEL_LNHOIF3225_651 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
651 AS eutraCarrierInfo,2 AS measurementBandwidth,30 AS a3OffsetRsrpInterFreq,30 AS a3OffsetRsrpInterFreqQCI1,30 AS hysA3OffsetRsrpInterFreq,12 AS iFGroupPrio,-140 AS thresholdRsrqIFLBFilter,28 AS threshold3aInterFreqQci1,28 AS threshold3aInterFreq,23 AS threshold3InterFreqQci1,-112 AS thresholdRsrpIFLBFilter,23 AS threshold3InterFreq
FROM LNCEL_Full AS L INNER JOIN Sites_L651 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL =3225;
--
--
--  LNCEL LNHOIF combinations FROM 3075 TO 651
DROP TABLE IF EXISTS LNCEL_LNHOIF3075_651;
CREATE TABLE LNCEL_LNHOIF3075_651 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
651 AS eutraCarrierInfo,2 AS measurementBandwidth,30 AS a3OffsetRsrpInterFreq,30 AS a3OffsetRsrpInterFreqQCI1,30 AS hysA3OffsetRsrpInterFreq,12 AS iFGroupPrio,-140 AS thresholdRsrqIFLBFilter,28 AS threshold3aInterFreqQci1,28 AS threshold3aInterFreq,23 AS threshold3InterFreqQci1,-112 AS thresholdRsrpIFLBFilter,23 AS threshold3InterFreq
FROM LNCEL_Full AS L INNER JOIN Sites_L651 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL =3075;
--
--
--  LNCEL LNHOIF combinations FROM 626 TO 9560
DROP TABLE IF EXISTS LNCEL_LNHOIF626_9560;
CREATE TABLE LNCEL_LNHOIF626_9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
9560 AS eutraCarrierInfo,3 AS measurementBandwidth,30 AS a3OffsetRsrpInterFreq,30 AS a3OffsetRsrpInterFreqQCI1,30 AS hysA3OffsetRsrpInterFreq,12 AS iFGroupPrio,-140 AS thresholdRsrqIFLBFilter,28 AS threshold3aInterFreqQci1,28 AS threshold3aInterFreq,27 AS threshold3InterFreqQci1,-90 AS thresholdRsrpIFLBFilter,27 AS threshold3InterFreq
FROM LNCEL_Full AS L INNER JOIN Sites_L9560 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL =626;
--
--
--  LNCEL LNHOIF combinations FROM 651 TO 9560
DROP TABLE IF EXISTS LNCEL_LNHOIF651_9560;
CREATE TABLE LNCEL_LNHOIF651_9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
9560 AS eutraCarrierInfo,3 AS measurementBandwidth,30 AS a3OffsetRsrpInterFreq,30 AS a3OffsetRsrpInterFreqQCI1,30 AS hysA3OffsetRsrpInterFreq,12 AS iFGroupPrio,-140 AS thresholdRsrqIFLBFilter,28 AS threshold3aInterFreqQci1,28 AS threshold3aInterFreq,23 AS threshold3InterFreqQci1,-90 AS thresholdRsrpIFLBFilter,23 AS threshold3InterFreq
FROM LNCEL_Full AS L INNER JOIN Sites_L9560 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL =651;
--
--
--  LNCEL LNHOIF combinations FROM 3075 TO 9560
DROP TABLE IF EXISTS LNCEL_LNHOIF3075_9560;
CREATE TABLE LNCEL_LNHOIF3075_9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
9560 AS eutraCarrierInfo,3 AS measurementBandwidth,30 AS a3OffsetRsrpInterFreq,30 AS a3OffsetRsrpInterFreqQCI1,30 AS hysA3OffsetRsrpInterFreq,12 AS iFGroupPrio,-140 AS thresholdRsrqIFLBFilter,28 AS threshold3aInterFreqQci1,28 AS threshold3aInterFreq,23 AS threshold3InterFreqQci1,-90 AS thresholdRsrpIFLBFilter,23 AS threshold3InterFreq
FROM LNCEL_Full AS L INNER JOIN Sites_L9560 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL =3075;
--
--
--  LNCEL LNHOIF combinations FROM 3225 TO 9560
DROP TABLE IF EXISTS LNCEL_LNHOIF3225_9560;
CREATE TABLE LNCEL_LNHOIF3225_9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
9560 AS eutraCarrierInfo,3 AS measurementBandwidth,30 AS a3OffsetRsrpInterFreq,30 AS a3OffsetRsrpInterFreqQCI1,30 AS hysA3OffsetRsrpInterFreq,12 AS iFGroupPrio,-140 AS thresholdRsrqIFLBFilter,28 AS threshold3aInterFreqQci1,28 AS threshold3aInterFreq,23 AS threshold3InterFreqQci1,-90 AS thresholdRsrpIFLBFilter,23 AS threshold3InterFreq
FROM LNCEL_Full AS L INNER JOIN Sites_L9560 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL =3225;
--
--
--  LNCEL LNHOIF combinations FROM 626 TO 3225
DROP TABLE IF EXISTS LNCEL_LNHOIF626_3225;
CREATE TABLE LNCEL_LNHOIF626_3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
3225 AS eutraCarrierInfo,4 AS measurementBandwidth,30 AS a3OffsetRsrpInterFreq,30 AS a3OffsetRsrpInterFreqQCI1,30 AS hysA3OffsetRsrpInterFreq,12 AS iFGroupPrio,-140 AS thresholdRsrqIFLBFilter,26 AS threshold3aInterFreqQci1,26 AS threshold3aInterFreq,27 AS threshold3InterFreqQci1,-114 AS thresholdRsrpIFLBFilter,27 AS threshold3InterFreq
FROM LNCEL_Full AS L INNER JOIN Sites_L3225 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL =626;
--
--
--  LNCEL LNHOIF combinations FROM 651 TO 3225
DROP TABLE IF EXISTS LNCEL_LNHOIF651_3225;
CREATE TABLE LNCEL_LNHOIF651_3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
3225 AS eutraCarrierInfo,4 AS measurementBandwidth,30 AS a3OffsetRsrpInterFreq,30 AS a3OffsetRsrpInterFreqQCI1,30 AS hysA3OffsetRsrpInterFreq,12 AS iFGroupPrio,-140 AS thresholdRsrqIFLBFilter,26 AS threshold3aInterFreqQci1,26 AS threshold3aInterFreq,23 AS threshold3InterFreqQci1,-114 AS thresholdRsrpIFLBFilter,23 AS threshold3InterFreq
FROM LNCEL_Full AS L INNER JOIN Sites_L3225 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL =651;
--
--
--  LNCEL LNHOIF combinations FROM 9560 TO 3225
DROP TABLE IF EXISTS LNCEL_LNHOIF9560_3225;
CREATE TABLE LNCEL_LNHOIF9560_3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
3225 AS eutraCarrierInfo,4 AS measurementBandwidth,30 AS a3OffsetRsrpInterFreq,30 AS a3OffsetRsrpInterFreqQCI1,30 AS hysA3OffsetRsrpInterFreq,12 AS iFGroupPrio,-140 AS thresholdRsrqIFLBFilter,26 AS threshold3aInterFreqQci1,26 AS threshold3aInterFreq,23 AS threshold3InterFreqQci1,-114 AS thresholdRsrpIFLBFilter,23 AS threshold3InterFreq
FROM LNCEL_Full AS L INNER JOIN Sites_L3225 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL =9560;
--
--
--  LNCEL LNHOIF combinations FROM 3075 TO 3225
DROP TABLE IF EXISTS LNCEL_LNHOIF3075_3225;
CREATE TABLE LNCEL_LNHOIF3075_3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
3225 AS eutraCarrierInfo,4 AS measurementBandwidth,30 AS a3OffsetRsrpInterFreq,30 AS a3OffsetRsrpInterFreqQCI1,30 AS hysA3OffsetRsrpInterFreq,12 AS iFGroupPrio,-140 AS thresholdRsrqIFLBFilter,26 AS threshold3aInterFreqQci1,26 AS threshold3aInterFreq,23 AS threshold3InterFreqQci1,-114 AS thresholdRsrpIFLBFilter,23 AS threshold3InterFreq
FROM LNCEL_Full AS L INNER JOIN Sites_L3225 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL =3075;
--
--
--  LNCEL LNHOIF combinations FROM 626 TO 3075
DROP TABLE IF EXISTS LNCEL_LNHOIF626_3075;
CREATE TABLE LNCEL_LNHOIF626_3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
3075 AS eutraCarrierInfo,4 AS measurementBandwidth,30 AS a3OffsetRsrpInterFreq,30 AS a3OffsetRsrpInterFreqQCI1,30 AS hysA3OffsetRsrpInterFreq,12 AS iFGroupPrio,-140 AS thresholdRsrqIFLBFilter,26 AS threshold3aInterFreqQci1,26 AS threshold3aInterFreq,27 AS threshold3InterFreqQci1,-114 AS thresholdRsrpIFLBFilter,27 AS threshold3InterFreq
FROM LNCEL_Full AS L INNER JOIN Sites_L3075 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL =626;
--
--
--  LNCEL LNHOIF combinations FROM 651 TO 3075
DROP TABLE IF EXISTS LNCEL_LNHOIF651_3075;
CREATE TABLE LNCEL_LNHOIF651_3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
3075 AS eutraCarrierInfo,4 AS measurementBandwidth,30 AS a3OffsetRsrpInterFreq,30 AS a3OffsetRsrpInterFreqQCI1,30 AS hysA3OffsetRsrpInterFreq,12 AS iFGroupPrio,-140 AS thresholdRsrqIFLBFilter,26 AS threshold3aInterFreqQci1,26 AS threshold3aInterFreq,23 AS threshold3InterFreqQci1,-114 AS thresholdRsrpIFLBFilter,23 AS threshold3InterFreq
FROM LNCEL_Full AS L INNER JOIN Sites_L3075 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL =651;
--
--
--  LNCEL LNHOIF combinations FROM 9560 TO 3075
DROP TABLE IF EXISTS LNCEL_LNHOIF9560_3075;
CREATE TABLE LNCEL_LNHOIF9560_3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
3075 AS eutraCarrierInfo,4 AS measurementBandwidth,30 AS a3OffsetRsrpInterFreq,30 AS a3OffsetRsrpInterFreqQCI1,30 AS hysA3OffsetRsrpInterFreq,12 AS iFGroupPrio,-140 AS thresholdRsrqIFLBFilter,26 AS threshold3aInterFreqQci1,26 AS threshold3aInterFreq,23 AS threshold3InterFreqQci1,-114 AS thresholdRsrpIFLBFilter,23 AS threshold3InterFreq
FROM LNCEL_Full AS L INNER JOIN Sites_L3075 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL =9560;
--
--
--  LNCEL LNHOIF combinations FROM 3225 TO 3075
DROP TABLE IF EXISTS LNCEL_LNHOIF3225_3075;
CREATE TABLE LNCEL_LNHOIF3225_3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
3075 AS eutraCarrierInfo,4 AS measurementBandwidth,30 AS a3OffsetRsrpInterFreq,30 AS a3OffsetRsrpInterFreqQCI1,30 AS hysA3OffsetRsrpInterFreq,12 AS iFGroupPrio,-140 AS thresholdRsrqIFLBFilter,26 AS threshold3aInterFreqQci1,26 AS threshold3aInterFreq,23 AS threshold3InterFreqQci1,-114 AS thresholdRsrpIFLBFilter,23 AS threshold3InterFreq
FROM LNCEL_Full AS L INNER JOIN Sites_L3075 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL =3225;
--
--
DROP TABLE IF EXISTS LNCEL_LNHOIF_FULL;
CREATE TABLE LNCEL_LNHOIF_FULL ENGINE=MyISAM AS
SELECT * FROM LNCEL_LNHOIF626_3075
UNION ALL
SELECT * FROM LNCEL_LNHOIF626_3225
UNION ALL
SELECT * FROM LNCEL_LNHOIF626_9560
UNION ALL
SELECT * FROM LNCEL_LNHOIF651_3075
UNION ALL
SELECT * FROM LNCEL_LNHOIF651_3225
UNION ALL
SELECT * FROM LNCEL_LNHOIF651_9560
UNION ALL
SELECT * FROM LNCEL_LNHOIF3075_651
UNION ALL
SELECT * FROM LNCEL_LNHOIF3075_626
UNION ALL
SELECT * FROM LNCEL_LNHOIF3075_3225
UNION ALL
SELECT * FROM LNCEL_LNHOIF3075_9560
UNION ALL
SELECT * FROM LNCEL_LNHOIF3225_651
UNION ALL
SELECT * FROM LNCEL_LNHOIF3225_626
UNION ALL
SELECT * FROM LNCEL_LNHOIF3225_3075
UNION ALL
SELECT * FROM LNCEL_LNHOIF3225_9560
UNION ALL
SELECT * FROM LNCEL_LNHOIF9560_651
UNION ALL
SELECT * FROM LNCEL_LNHOIF9560_626
UNION ALL
SELECT * FROM LNCEL_LNHOIF9560_3075
UNION ALL
SELECT * FROM LNCEL_LNHOIF9560_3225
ORDER BY
    Region DESC, LNCELname;
--
--
DROP TABLE IF EXISTS LNHOIF_Miss;
CREATE TABLE LNHOIF_Miss ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL,L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id,
L.eutraCarrierInfo,L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq
FROM LNCEL_LNHOIF_Full AS L LEFT JOIN LNHOIF_ref AS I ON ((L.PLMN_id = I.PLMN_id) AND (L.MRBTS_id = I.MRBTS_id) AND (L.LNBTS_id = I.LNBTS_id) AND (L.LNCEL_id = I.LNCEL_id) AND (L.eutraCarrierInfo = I.eutraCarrierInfo))
WHERE I.eutraCarrierInfo IS NULL
ORDER BY L.Region DESC, L.LNCELname;
--
--
--
--
--
--  LNHOIF AUDIT WITHOUT ID
--
DROP TABLE IF EXISTS LNHOIF_651_626;
CREATE TABLE LNHOIF_651_626 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.eutraCarrierInfo, L.BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNHOIF_id, L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq,
 1 AS measurementBandwidth_N, 30 AS a3OffsetRsrpInterFreq_N, 30 AS a3OffsetRsrpInterFreqQCI1_N, 30 AS hysA3OffsetRsrpInterFreq_N, 12 AS iFGroupPrio_N, -140 AS thresholdRsrqIFLBFilter_N, 30 AS threshold3aInterFreqQci1_N, 30 AS threshold3aInterFreq_N, 23 AS threshold3InterFreqQci1_N, -110 AS thresholdRsrpIFLBFilter_N,  23 AS threshold3InterFreq_N, CASE WHEN L.measurementBandwidth<>1 THEN 1 ELSE 0 END AS measurementBandwidth_D,CASE WHEN L.a3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreq_D,CASE WHEN L.a3OffsetRsrpInterFreqQCI1<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreqQCI1_D,CASE WHEN L.hysA3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS hysA3OffsetRsrpInterFreq_D,CASE WHEN L.iFGroupPrio<>12 THEN 1 ELSE 0 END AS iFGroupPrio_D,CASE WHEN L.thresholdRsrqIFLBFilter<>-140 THEN 1 ELSE 0 END AS thresholdRsrqIFLBFilter_D,CASE WHEN L.threshold3aInterFreqQci1<>30 THEN 1 ELSE 0 END AS threshold3aInterFreqQci1_D,CASE WHEN L.threshold3aInterFreq<>30 THEN 1 ELSE 0 END AS threshold3aInterFreq_D,CASE WHEN L.threshold3InterFreqQci1<>23 THEN 1 ELSE 0 END AS threshold3InterFreqQci1_D,CASE WHEN L.thresholdRsrpIFLBFilter<>-110 THEN 1 ELSE 0 END AS thresholdRsrpIFLBFilter_D,CASE WHEN L.threshold3InterFreq<>23 THEN 1 ELSE 0 END AS threshold3InterFreq_D
FROM LNHOIF_ref AS L
WHERE L.earfcnDL=651 AND L.eutraCarrierInfo=626 AND (L.measurementBandwidth<>1 OR L.a3OffsetRsrpInterFreq<>30 OR L.a3OffsetRsrpInterFreqQCI1<>30 OR L.hysA3OffsetRsrpInterFreq<>30 OR L.iFGroupPrio<>12 OR L.thresholdRsrqIFLBFilter<>-140 OR L.threshold3aInterFreqQci1<>30 OR L.threshold3aInterFreq<>30 OR L.threshold3InterFreqQci1<>23 OR L.thresholdRsrpIFLBFilter<>-110 OR L.threshold3InterFreq<>23);
--
--
--
--
DROP TABLE IF EXISTS LNHOIF_9560_626;
CREATE TABLE LNHOIF_9560_626 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.eutraCarrierInfo, L.BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNHOIF_id, L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq,
 1 AS measurementBandwidth_N, 30 AS a3OffsetRsrpInterFreq_N, 30 AS a3OffsetRsrpInterFreqQCI1_N, 30 AS hysA3OffsetRsrpInterFreq_N, 12 AS iFGroupPrio_N, -140 AS thresholdRsrqIFLBFilter_N, 30 AS threshold3aInterFreqQci1_N, 30 AS threshold3aInterFreq_N, 23 AS threshold3InterFreqQci1_N, -110 AS thresholdRsrpIFLBFilter_N,  23 AS threshold3InterFreq_N, CASE WHEN L.measurementBandwidth<>1 THEN 1 ELSE 0 END AS measurementBandwidth_D,CASE WHEN L.a3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreq_D,CASE WHEN L.a3OffsetRsrpInterFreqQCI1<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreqQCI1_D,CASE WHEN L.hysA3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS hysA3OffsetRsrpInterFreq_D,CASE WHEN L.iFGroupPrio<>12 THEN 1 ELSE 0 END AS iFGroupPrio_D,CASE WHEN L.thresholdRsrqIFLBFilter<>-140 THEN 1 ELSE 0 END AS thresholdRsrqIFLBFilter_D,CASE WHEN L.threshold3aInterFreqQci1<>30 THEN 1 ELSE 0 END AS threshold3aInterFreqQci1_D,CASE WHEN L.threshold3aInterFreq<>30 THEN 1 ELSE 0 END AS threshold3aInterFreq_D,CASE WHEN L.threshold3InterFreqQci1<>23 THEN 1 ELSE 0 END AS threshold3InterFreqQci1_D,CASE WHEN L.thresholdRsrpIFLBFilter<>-110 THEN 1 ELSE 0 END AS thresholdRsrpIFLBFilter_D,CASE WHEN L.threshold3InterFreq<>23 THEN 1 ELSE 0 END AS threshold3InterFreq_D
FROM LNHOIF_ref AS L
WHERE L.earfcnDL=9560 AND L.eutraCarrierInfo=626 AND (L.measurementBandwidth<>1 OR L.a3OffsetRsrpInterFreq<>30 OR L.a3OffsetRsrpInterFreqQCI1<>30 OR L.hysA3OffsetRsrpInterFreq<>30 OR L.iFGroupPrio<>12 OR L.thresholdRsrqIFLBFilter<>-140 OR L.threshold3aInterFreqQci1<>30 OR L.threshold3aInterFreq<>30 OR L.threshold3InterFreqQci1<>23 OR L.thresholdRsrpIFLBFilter<>-110 OR L.threshold3InterFreq<>23);
--
--
DROP TABLE IF EXISTS LNHOIF_3075_626;
CREATE TABLE LNHOIF_3075_626 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.eutraCarrierInfo, L.BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNHOIF_id, L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq,
 1 AS measurementBandwidth_N, 30 AS a3OffsetRsrpInterFreq_N, 30 AS a3OffsetRsrpInterFreqQCI1_N, 30 AS hysA3OffsetRsrpInterFreq_N, 12 AS iFGroupPrio_N, -140 AS thresholdRsrqIFLBFilter_N, 30 AS threshold3aInterFreqQci1_N, 30 AS threshold3aInterFreq_N, 23 AS threshold3InterFreqQci1_N, -110 AS thresholdRsrpIFLBFilter_N,  23 AS threshold3InterFreq_N, CASE WHEN L.measurementBandwidth<>1 THEN 1 ELSE 0 END AS measurementBandwidth_D,CASE WHEN L.a3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreq_D,CASE WHEN L.a3OffsetRsrpInterFreqQCI1<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreqQCI1_D,CASE WHEN L.hysA3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS hysA3OffsetRsrpInterFreq_D,CASE WHEN L.iFGroupPrio<>12 THEN 1 ELSE 0 END AS iFGroupPrio_D,CASE WHEN L.thresholdRsrqIFLBFilter<>-140 THEN 1 ELSE 0 END AS thresholdRsrqIFLBFilter_D,CASE WHEN L.threshold3aInterFreqQci1<>30 THEN 1 ELSE 0 END AS threshold3aInterFreqQci1_D,CASE WHEN L.threshold3aInterFreq<>30 THEN 1 ELSE 0 END AS threshold3aInterFreq_D,CASE WHEN L.threshold3InterFreqQci1<>23 THEN 1 ELSE 0 END AS threshold3InterFreqQci1_D,CASE WHEN L.thresholdRsrpIFLBFilter<>-110 THEN 1 ELSE 0 END AS thresholdRsrpIFLBFilter_D,CASE WHEN L.threshold3InterFreq<>23 THEN 1 ELSE 0 END AS threshold3InterFreq_D
FROM LNHOIF_ref AS L
WHERE L.earfcnDL=3075 AND L.eutraCarrierInfo=626 AND (L.measurementBandwidth<>1 OR L.a3OffsetRsrpInterFreq<>30 OR L.a3OffsetRsrpInterFreqQCI1<>30 OR L.hysA3OffsetRsrpInterFreq<>30 OR L.iFGroupPrio<>12 OR L.thresholdRsrqIFLBFilter<>-140 OR L.threshold3aInterFreqQci1<>30 OR L.threshold3aInterFreq<>30 OR L.threshold3InterFreqQci1<>23 OR L.thresholdRsrpIFLBFilter<>-110 OR L.threshold3InterFreq<>23);
--
--
DROP TABLE IF EXISTS LNHOIF_3225_626;
CREATE TABLE LNHOIF_3225_626 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.eutraCarrierInfo, L.BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNHOIF_id, L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq,
 1 AS measurementBandwidth_N, 30 AS a3OffsetRsrpInterFreq_N, 30 AS a3OffsetRsrpInterFreqQCI1_N, 30 AS hysA3OffsetRsrpInterFreq_N, 12 AS iFGroupPrio_N, -140 AS thresholdRsrqIFLBFilter_N, 30 AS threshold3aInterFreqQci1_N, 30 AS threshold3aInterFreq_N, 23 AS threshold3InterFreqQci1_N, -110 AS thresholdRsrpIFLBFilter_N,  23 AS threshold3InterFreq_N, CASE WHEN L.measurementBandwidth<>1 THEN 1 ELSE 0 END AS measurementBandwidth_D,CASE WHEN L.a3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreq_D,CASE WHEN L.a3OffsetRsrpInterFreqQCI1<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreqQCI1_D,CASE WHEN L.hysA3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS hysA3OffsetRsrpInterFreq_D,CASE WHEN L.iFGroupPrio<>12 THEN 1 ELSE 0 END AS iFGroupPrio_D,CASE WHEN L.thresholdRsrqIFLBFilter<>-140 THEN 1 ELSE 0 END AS thresholdRsrqIFLBFilter_D,CASE WHEN L.threshold3aInterFreqQci1<>30 THEN 1 ELSE 0 END AS threshold3aInterFreqQci1_D,CASE WHEN L.threshold3aInterFreq<>30 THEN 1 ELSE 0 END AS threshold3aInterFreq_D,CASE WHEN L.threshold3InterFreqQci1<>23 THEN 1 ELSE 0 END AS threshold3InterFreqQci1_D,CASE WHEN L.thresholdRsrpIFLBFilter<>-110 THEN 1 ELSE 0 END AS thresholdRsrpIFLBFilter_D,CASE WHEN L.threshold3InterFreq<>23 THEN 1 ELSE 0 END AS threshold3InterFreq_D
FROM LNHOIF_ref AS L
WHERE L.earfcnDL=3225 AND L.eutraCarrierInfo=626 AND (L.measurementBandwidth<>1 OR L.a3OffsetRsrpInterFreq<>30 OR L.a3OffsetRsrpInterFreqQCI1<>30 OR L.hysA3OffsetRsrpInterFreq<>30 OR L.iFGroupPrio<>12 OR L.thresholdRsrqIFLBFilter<>-140 OR L.threshold3aInterFreqQci1<>30 OR L.threshold3aInterFreq<>30 OR L.threshold3InterFreqQci1<>23 OR L.thresholdRsrpIFLBFilter<>-110 OR L.threshold3InterFreq<>23);
--
--
DROP TABLE IF EXISTS LNHOIF_626_651;
CREATE TABLE LNHOIF_626_651 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.eutraCarrierInfo, L.BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNHOIF_id, L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq,
 2 AS measurementBandwidth_N, 30 AS a3OffsetRsrpInterFreq_N, 30 AS a3OffsetRsrpInterFreqQCI1_N, 30 AS hysA3OffsetRsrpInterFreq_N, 12 AS iFGroupPrio_N, -140 AS thresholdRsrqIFLBFilter_N, 28 AS threshold3aInterFreqQci1_N, 28 AS threshold3aInterFreq_N, 27 AS threshold3InterFreqQci1_N, -112 AS thresholdRsrpIFLBFilter_N,  27 AS threshold3InterFreq_N, CASE WHEN L.measurementBandwidth<>2 THEN 1 ELSE 0 END AS measurementBandwidth_D,CASE WHEN L.a3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreq_D,CASE WHEN L.a3OffsetRsrpInterFreqQCI1<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreqQCI1_D,CASE WHEN L.hysA3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS hysA3OffsetRsrpInterFreq_D,CASE WHEN L.iFGroupPrio<>12 THEN 1 ELSE 0 END AS iFGroupPrio_D,CASE WHEN L.thresholdRsrqIFLBFilter<>-140 THEN 1 ELSE 0 END AS thresholdRsrqIFLBFilter_D,CASE WHEN L.threshold3aInterFreqQci1<>28 THEN 1 ELSE 0 END AS threshold3aInterFreqQci1_D,CASE WHEN L.threshold3aInterFreq<>28 THEN 1 ELSE 0 END AS threshold3aInterFreq_D,CASE WHEN L.threshold3InterFreqQci1<>27 THEN 1 ELSE 0 END AS threshold3InterFreqQci1_D,CASE WHEN L.thresholdRsrpIFLBFilter<>-112 THEN 1 ELSE 0 END AS thresholdRsrpIFLBFilter_D,CASE WHEN L.threshold3InterFreq<>27 THEN 1 ELSE 0 END AS threshold3InterFreq_D
FROM LNHOIF_ref AS L
WHERE L.earfcnDL=626 AND L.eutraCarrierInfo=651 AND (L.measurementBandwidth<>2 OR L.a3OffsetRsrpInterFreq<>30 OR L.a3OffsetRsrpInterFreqQCI1<>30 OR L.hysA3OffsetRsrpInterFreq<>30 OR L.iFGroupPrio<>12 OR L.thresholdRsrqIFLBFilter<>-140 OR L.threshold3aInterFreqQci1<>28 OR L.threshold3aInterFreq<>28 OR L.threshold3InterFreqQci1<>27 OR L.thresholdRsrpIFLBFilter<>-112 OR L.threshold3InterFreq<>27);
--
--
DROP TABLE IF EXISTS LNHOIF_9560_651;
CREATE TABLE LNHOIF_9560_651 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.eutraCarrierInfo, L.BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNHOIF_id, L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq,
 2 AS measurementBandwidth_N, 30 AS a3OffsetRsrpInterFreq_N, 30 AS a3OffsetRsrpInterFreqQCI1_N, 30 AS hysA3OffsetRsrpInterFreq_N, 12 AS iFGroupPrio_N, -140 AS thresholdRsrqIFLBFilter_N, 28 AS threshold3aInterFreqQci1_N, 28 AS threshold3aInterFreq_N, 23 AS threshold3InterFreqQci1_N, -112 AS thresholdRsrpIFLBFilter_N,  23 AS threshold3InterFreq_N, CASE WHEN L.measurementBandwidth<>2 THEN 1 ELSE 0 END AS measurementBandwidth_D,CASE WHEN L.a3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreq_D,CASE WHEN L.a3OffsetRsrpInterFreqQCI1<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreqQCI1_D,CASE WHEN L.hysA3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS hysA3OffsetRsrpInterFreq_D,CASE WHEN L.iFGroupPrio<>12 THEN 1 ELSE 0 END AS iFGroupPrio_D,CASE WHEN L.thresholdRsrqIFLBFilter<>-140 THEN 1 ELSE 0 END AS thresholdRsrqIFLBFilter_D,CASE WHEN L.threshold3aInterFreqQci1<>28 THEN 1 ELSE 0 END AS threshold3aInterFreqQci1_D,CASE WHEN L.threshold3aInterFreq<>28 THEN 1 ELSE 0 END AS threshold3aInterFreq_D,CASE WHEN L.threshold3InterFreqQci1<>23 THEN 1 ELSE 0 END AS threshold3InterFreqQci1_D,CASE WHEN L.thresholdRsrpIFLBFilter<>-112 THEN 1 ELSE 0 END AS thresholdRsrpIFLBFilter_D,CASE WHEN L.threshold3InterFreq<>23 THEN 1 ELSE 0 END AS threshold3InterFreq_D
FROM LNHOIF_ref AS L
WHERE L.earfcnDL=9560 AND L.eutraCarrierInfo=651 AND (L.measurementBandwidth<>2 OR L.a3OffsetRsrpInterFreq<>30 OR L.a3OffsetRsrpInterFreqQCI1<>30 OR L.hysA3OffsetRsrpInterFreq<>30 OR L.iFGroupPrio<>12 OR L.thresholdRsrqIFLBFilter<>-140 OR L.threshold3aInterFreqQci1<>28 OR L.threshold3aInterFreq<>28 OR L.threshold3InterFreqQci1<>23 OR L.thresholdRsrpIFLBFilter<>-112 OR L.threshold3InterFreq<>23);
--
--
DROP TABLE IF EXISTS LNHOIF_3075_651;
CREATE TABLE LNHOIF_3075_651 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.eutraCarrierInfo, L.BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNHOIF_id, L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq,
 2 AS measurementBandwidth_N, 30 AS a3OffsetRsrpInterFreq_N, 30 AS a3OffsetRsrpInterFreqQCI1_N, 30 AS hysA3OffsetRsrpInterFreq_N, 12 AS iFGroupPrio_N, -140 AS thresholdRsrqIFLBFilter_N, 28 AS threshold3aInterFreqQci1_N, 28 AS threshold3aInterFreq_N, 23 AS threshold3InterFreqQci1_N, -112 AS thresholdRsrpIFLBFilter_N,  23 AS threshold3InterFreq_N, CASE WHEN L.measurementBandwidth<>2 THEN 1 ELSE 0 END AS measurementBandwidth_D,CASE WHEN L.a3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreq_D,CASE WHEN L.a3OffsetRsrpInterFreqQCI1<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreqQCI1_D,CASE WHEN L.hysA3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS hysA3OffsetRsrpInterFreq_D,CASE WHEN L.iFGroupPrio<>12 THEN 1 ELSE 0 END AS iFGroupPrio_D,CASE WHEN L.thresholdRsrqIFLBFilter<>-140 THEN 1 ELSE 0 END AS thresholdRsrqIFLBFilter_D,CASE WHEN L.threshold3aInterFreqQci1<>28 THEN 1 ELSE 0 END AS threshold3aInterFreqQci1_D,CASE WHEN L.threshold3aInterFreq<>28 THEN 1 ELSE 0 END AS threshold3aInterFreq_D,CASE WHEN L.threshold3InterFreqQci1<>23 THEN 1 ELSE 0 END AS threshold3InterFreqQci1_D,CASE WHEN L.thresholdRsrpIFLBFilter<>-112 THEN 1 ELSE 0 END AS thresholdRsrpIFLBFilter_D,CASE WHEN L.threshold3InterFreq<>23 THEN 1 ELSE 0 END AS threshold3InterFreq_D
FROM LNHOIF_ref AS L
WHERE L.earfcnDL=3075 AND L.eutraCarrierInfo=651 AND (L.measurementBandwidth<>2 OR L.a3OffsetRsrpInterFreq<>30 OR L.a3OffsetRsrpInterFreqQCI1<>30 OR L.hysA3OffsetRsrpInterFreq<>30 OR L.iFGroupPrio<>12 OR L.thresholdRsrqIFLBFilter<>-140 OR L.threshold3aInterFreqQci1<>28 OR L.threshold3aInterFreq<>28 OR L.threshold3InterFreqQci1<>23 OR L.thresholdRsrpIFLBFilter<>-112 OR L.threshold3InterFreq<>23);
--
--
DROP TABLE IF EXISTS LNHOIF_3225_651;
CREATE TABLE LNHOIF_3225_651 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.eutraCarrierInfo, L.BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNHOIF_id, L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq,
 2 AS measurementBandwidth_N, 30 AS a3OffsetRsrpInterFreq_N, 30 AS a3OffsetRsrpInterFreqQCI1_N, 30 AS hysA3OffsetRsrpInterFreq_N, 12 AS iFGroupPrio_N, -140 AS thresholdRsrqIFLBFilter_N, 28 AS threshold3aInterFreqQci1_N, 28 AS threshold3aInterFreq_N, 23 AS threshold3InterFreqQci1_N, -112 AS thresholdRsrpIFLBFilter_N,  23 AS threshold3InterFreq_N, CASE WHEN L.measurementBandwidth<>2 THEN 1 ELSE 0 END AS measurementBandwidth_D,CASE WHEN L.a3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreq_D,CASE WHEN L.a3OffsetRsrpInterFreqQCI1<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreqQCI1_D,CASE WHEN L.hysA3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS hysA3OffsetRsrpInterFreq_D,CASE WHEN L.iFGroupPrio<>12 THEN 1 ELSE 0 END AS iFGroupPrio_D,CASE WHEN L.thresholdRsrqIFLBFilter<>-140 THEN 1 ELSE 0 END AS thresholdRsrqIFLBFilter_D,CASE WHEN L.threshold3aInterFreqQci1<>28 THEN 1 ELSE 0 END AS threshold3aInterFreqQci1_D,CASE WHEN L.threshold3aInterFreq<>28 THEN 1 ELSE 0 END AS threshold3aInterFreq_D,CASE WHEN L.threshold3InterFreqQci1<>23 THEN 1 ELSE 0 END AS threshold3InterFreqQci1_D,CASE WHEN L.thresholdRsrpIFLBFilter<>-112 THEN 1 ELSE 0 END AS thresholdRsrpIFLBFilter_D,CASE WHEN L.threshold3InterFreq<>23 THEN 1 ELSE 0 END AS threshold3InterFreq_D
FROM LNHOIF_ref AS L
WHERE L.earfcnDL=3225 AND L.eutraCarrierInfo=651 AND (L.measurementBandwidth<>2 OR L.a3OffsetRsrpInterFreq<>30 OR L.a3OffsetRsrpInterFreqQCI1<>30 OR L.hysA3OffsetRsrpInterFreq<>30 OR L.iFGroupPrio<>12 OR L.thresholdRsrqIFLBFilter<>-140 OR L.threshold3aInterFreqQci1<>28 OR L.threshold3aInterFreq<>28 OR L.threshold3InterFreqQci1<>23 OR L.thresholdRsrpIFLBFilter<>-112 OR L.threshold3InterFreq<>23);
--
--
DROP TABLE IF EXISTS LNHOIF_626_9560;
CREATE TABLE LNHOIF_626_9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.eutraCarrierInfo, L.BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNHOIF_id, L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq,
 3 AS measurementBandwidth_N, 30 AS a3OffsetRsrpInterFreq_N, 30 AS a3OffsetRsrpInterFreqQCI1_N, 30 AS hysA3OffsetRsrpInterFreq_N, 12 AS iFGroupPrio_N, -140 AS thresholdRsrqIFLBFilter_N, 28 AS threshold3aInterFreqQci1_N, 28 AS threshold3aInterFreq_N, 27 AS threshold3InterFreqQci1_N, -90 AS thresholdRsrpIFLBFilter_N,  27 AS threshold3InterFreq_N, CASE WHEN L.measurementBandwidth<>3 THEN 1 ELSE 0 END AS measurementBandwidth_D,CASE WHEN L.a3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreq_D,CASE WHEN L.a3OffsetRsrpInterFreqQCI1<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreqQCI1_D,CASE WHEN L.hysA3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS hysA3OffsetRsrpInterFreq_D,CASE WHEN L.iFGroupPrio<>12 THEN 1 ELSE 0 END AS iFGroupPrio_D,CASE WHEN L.thresholdRsrqIFLBFilter<>-140 THEN 1 ELSE 0 END AS thresholdRsrqIFLBFilter_D,CASE WHEN L.threshold3aInterFreqQci1<>28 THEN 1 ELSE 0 END AS threshold3aInterFreqQci1_D,CASE WHEN L.threshold3aInterFreq<>28 THEN 1 ELSE 0 END AS threshold3aInterFreq_D,CASE WHEN L.threshold3InterFreqQci1<>27 THEN 1 ELSE 0 END AS threshold3InterFreqQci1_D,CASE WHEN L.thresholdRsrpIFLBFilter<>-90 THEN 1 ELSE 0 END AS thresholdRsrpIFLBFilter_D,CASE WHEN L.threshold3InterFreq<>27 THEN 1 ELSE 0 END AS threshold3InterFreq_D
FROM LNHOIF_ref AS L
WHERE L.earfcnDL=626 AND L.eutraCarrierInfo=9560 AND (L.measurementBandwidth<>3 OR L.a3OffsetRsrpInterFreq<>30 OR L.a3OffsetRsrpInterFreqQCI1<>30 OR L.hysA3OffsetRsrpInterFreq<>30 OR L.iFGroupPrio<>12 OR L.thresholdRsrqIFLBFilter<>-140 OR L.threshold3aInterFreqQci1<>28 OR L.threshold3aInterFreq<>28 OR L.threshold3InterFreqQci1<>27 OR L.thresholdRsrpIFLBFilter<>-90 OR L.threshold3InterFreq<>27);
--
--
DROP TABLE IF EXISTS LNHOIF_651_9560;
CREATE TABLE LNHOIF_651_9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.eutraCarrierInfo, L.BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNHOIF_id, L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq,
 3 AS measurementBandwidth_N, 30 AS a3OffsetRsrpInterFreq_N, 30 AS a3OffsetRsrpInterFreqQCI1_N, 30 AS hysA3OffsetRsrpInterFreq_N, 12 AS iFGroupPrio_N, -140 AS thresholdRsrqIFLBFilter_N, 28 AS threshold3aInterFreqQci1_N, 28 AS threshold3aInterFreq_N, 23 AS threshold3InterFreqQci1_N, -90 AS thresholdRsrpIFLBFilter_N,  23 AS threshold3InterFreq_N, CASE WHEN L.measurementBandwidth<>3 THEN 1 ELSE 0 END AS measurementBandwidth_D,CASE WHEN L.a3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreq_D,CASE WHEN L.a3OffsetRsrpInterFreqQCI1<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreqQCI1_D,CASE WHEN L.hysA3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS hysA3OffsetRsrpInterFreq_D,CASE WHEN L.iFGroupPrio<>12 THEN 1 ELSE 0 END AS iFGroupPrio_D,CASE WHEN L.thresholdRsrqIFLBFilter<>-140 THEN 1 ELSE 0 END AS thresholdRsrqIFLBFilter_D,CASE WHEN L.threshold3aInterFreqQci1<>28 THEN 1 ELSE 0 END AS threshold3aInterFreqQci1_D,CASE WHEN L.threshold3aInterFreq<>28 THEN 1 ELSE 0 END AS threshold3aInterFreq_D,CASE WHEN L.threshold3InterFreqQci1<>23 THEN 1 ELSE 0 END AS threshold3InterFreqQci1_D,CASE WHEN L.thresholdRsrpIFLBFilter<>-90 THEN 1 ELSE 0 END AS thresholdRsrpIFLBFilter_D,CASE WHEN L.threshold3InterFreq<>23 THEN 1 ELSE 0 END AS threshold3InterFreq_D
FROM LNHOIF_ref AS L
WHERE L.earfcnDL=651 AND L.eutraCarrierInfo=9560 AND (L.measurementBandwidth<>3 OR L.a3OffsetRsrpInterFreq<>30 OR L.a3OffsetRsrpInterFreqQCI1<>30 OR L.hysA3OffsetRsrpInterFreq<>30 OR L.iFGroupPrio<>12 OR L.thresholdRsrqIFLBFilter<>-140 OR L.threshold3aInterFreqQci1<>28 OR L.threshold3aInterFreq<>28 OR L.threshold3InterFreqQci1<>23 OR L.thresholdRsrpIFLBFilter<>-90 OR L.threshold3InterFreq<>23);
--
--
DROP TABLE IF EXISTS LNHOIF_3075_9560;
CREATE TABLE LNHOIF_3075_9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.eutraCarrierInfo, L.BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNHOIF_id, L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq,
 3 AS measurementBandwidth_N, 30 AS a3OffsetRsrpInterFreq_N, 30 AS a3OffsetRsrpInterFreqQCI1_N, 30 AS hysA3OffsetRsrpInterFreq_N, 12 AS iFGroupPrio_N, -140 AS thresholdRsrqIFLBFilter_N, 28 AS threshold3aInterFreqQci1_N, 28 AS threshold3aInterFreq_N, 23 AS threshold3InterFreqQci1_N, -90 AS thresholdRsrpIFLBFilter_N,  23 AS threshold3InterFreq_N, CASE WHEN L.measurementBandwidth<>3 THEN 1 ELSE 0 END AS measurementBandwidth_D,CASE WHEN L.a3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreq_D,CASE WHEN L.a3OffsetRsrpInterFreqQCI1<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreqQCI1_D,CASE WHEN L.hysA3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS hysA3OffsetRsrpInterFreq_D,CASE WHEN L.iFGroupPrio<>12 THEN 1 ELSE 0 END AS iFGroupPrio_D,CASE WHEN L.thresholdRsrqIFLBFilter<>-140 THEN 1 ELSE 0 END AS thresholdRsrqIFLBFilter_D,CASE WHEN L.threshold3aInterFreqQci1<>28 THEN 1 ELSE 0 END AS threshold3aInterFreqQci1_D,CASE WHEN L.threshold3aInterFreq<>28 THEN 1 ELSE 0 END AS threshold3aInterFreq_D,CASE WHEN L.threshold3InterFreqQci1<>23 THEN 1 ELSE 0 END AS threshold3InterFreqQci1_D,CASE WHEN L.thresholdRsrpIFLBFilter<>-90 THEN 1 ELSE 0 END AS thresholdRsrpIFLBFilter_D,CASE WHEN L.threshold3InterFreq<>23 THEN 1 ELSE 0 END AS threshold3InterFreq_D
FROM LNHOIF_ref AS L
WHERE L.earfcnDL=3075 AND L.eutraCarrierInfo=9560 AND (L.measurementBandwidth<>3 OR L.a3OffsetRsrpInterFreq<>30 OR L.a3OffsetRsrpInterFreqQCI1<>30 OR L.hysA3OffsetRsrpInterFreq<>30 OR L.iFGroupPrio<>12 OR L.thresholdRsrqIFLBFilter<>-140 OR L.threshold3aInterFreqQci1<>28 OR L.threshold3aInterFreq<>28 OR L.threshold3InterFreqQci1<>23 OR L.thresholdRsrpIFLBFilter<>-90 OR L.threshold3InterFreq<>23);
--
--
DROP TABLE IF EXISTS LNHOIF_3225_9560;
CREATE TABLE LNHOIF_3225_9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.eutraCarrierInfo, L.BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNHOIF_id, L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq,
 3 AS measurementBandwidth_N, 30 AS a3OffsetRsrpInterFreq_N, 30 AS a3OffsetRsrpInterFreqQCI1_N, 30 AS hysA3OffsetRsrpInterFreq_N, 12 AS iFGroupPrio_N, -140 AS thresholdRsrqIFLBFilter_N, 28 AS threshold3aInterFreqQci1_N, 28 AS threshold3aInterFreq_N, 23 AS threshold3InterFreqQci1_N, -90 AS thresholdRsrpIFLBFilter_N,  23 AS threshold3InterFreq_N, CASE WHEN L.measurementBandwidth<>3 THEN 1 ELSE 0 END AS measurementBandwidth_D,CASE WHEN L.a3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreq_D,CASE WHEN L.a3OffsetRsrpInterFreqQCI1<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreqQCI1_D,CASE WHEN L.hysA3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS hysA3OffsetRsrpInterFreq_D,CASE WHEN L.iFGroupPrio<>12 THEN 1 ELSE 0 END AS iFGroupPrio_D,CASE WHEN L.thresholdRsrqIFLBFilter<>-140 THEN 1 ELSE 0 END AS thresholdRsrqIFLBFilter_D,CASE WHEN L.threshold3aInterFreqQci1<>28 THEN 1 ELSE 0 END AS threshold3aInterFreqQci1_D,CASE WHEN L.threshold3aInterFreq<>28 THEN 1 ELSE 0 END AS threshold3aInterFreq_D,CASE WHEN L.threshold3InterFreqQci1<>23 THEN 1 ELSE 0 END AS threshold3InterFreqQci1_D,CASE WHEN L.thresholdRsrpIFLBFilter<>-90 THEN 1 ELSE 0 END AS thresholdRsrpIFLBFilter_D,CASE WHEN L.threshold3InterFreq<>23 THEN 1 ELSE 0 END AS threshold3InterFreq_D
FROM LNHOIF_ref AS L
WHERE L.earfcnDL=3225 AND L.eutraCarrierInfo=9560 AND (L.measurementBandwidth<>3 OR L.a3OffsetRsrpInterFreq<>30 OR L.a3OffsetRsrpInterFreqQCI1<>30 OR L.hysA3OffsetRsrpInterFreq<>30 OR L.iFGroupPrio<>12 OR L.thresholdRsrqIFLBFilter<>-140 OR L.threshold3aInterFreqQci1<>28 OR L.threshold3aInterFreq<>28 OR L.threshold3InterFreqQci1<>23 OR L.thresholdRsrpIFLBFilter<>-90 OR L.threshold3InterFreq<>23);
--
--
DROP TABLE IF EXISTS LNHOIF_626_3075;
CREATE TABLE LNHOIF_626_3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.eutraCarrierInfo, L.BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNHOIF_id, L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq,
 4 AS measurementBandwidth_N, 30 AS a3OffsetRsrpInterFreq_N, 30 AS a3OffsetRsrpInterFreqQCI1_N, 30 AS hysA3OffsetRsrpInterFreq_N, 12 AS iFGroupPrio_N, -140 AS thresholdRsrqIFLBFilter_N, 26 AS threshold3aInterFreqQci1_N, 26 AS threshold3aInterFreq_N, 27 AS threshold3InterFreqQci1_N, -114 AS thresholdRsrpIFLBFilter_N,  27 AS threshold3InterFreq_N, CASE WHEN L.measurementBandwidth<>4 THEN 1 ELSE 0 END AS measurementBandwidth_D,CASE WHEN L.a3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreq_D,CASE WHEN L.a3OffsetRsrpInterFreqQCI1<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreqQCI1_D,CASE WHEN L.hysA3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS hysA3OffsetRsrpInterFreq_D,CASE WHEN L.iFGroupPrio<>12 THEN 1 ELSE 0 END AS iFGroupPrio_D,CASE WHEN L.thresholdRsrqIFLBFilter<>-140 THEN 1 ELSE 0 END AS thresholdRsrqIFLBFilter_D,CASE WHEN L.threshold3aInterFreqQci1<>26 THEN 1 ELSE 0 END AS threshold3aInterFreqQci1_D,CASE WHEN L.threshold3aInterFreq<>26 THEN 1 ELSE 0 END AS threshold3aInterFreq_D,CASE WHEN L.threshold3InterFreqQci1<>27 THEN 1 ELSE 0 END AS threshold3InterFreqQci1_D,CASE WHEN L.thresholdRsrpIFLBFilter<>-114 THEN 1 ELSE 0 END AS thresholdRsrpIFLBFilter_D,CASE WHEN L.threshold3InterFreq<>27 THEN 1 ELSE 0 END AS threshold3InterFreq_D
FROM LNHOIF_ref AS L
WHERE L.earfcnDL=626 AND L.eutraCarrierInfo=3075 AND (L.measurementBandwidth<>4 OR L.a3OffsetRsrpInterFreq<>30 OR L.a3OffsetRsrpInterFreqQCI1<>30 OR L.hysA3OffsetRsrpInterFreq<>30 OR L.iFGroupPrio<>12 OR L.thresholdRsrqIFLBFilter<>-140 OR L.threshold3aInterFreqQci1<>26 OR L.threshold3aInterFreq<>26 OR L.threshold3InterFreqQci1<>27 OR L.thresholdRsrpIFLBFilter<>-114 OR L.threshold3InterFreq<>27);
--
--
DROP TABLE IF EXISTS LNHOIF_651_3075;
CREATE TABLE LNHOIF_651_3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.eutraCarrierInfo, L.BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNHOIF_id, L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq,
 4 AS measurementBandwidth_N, 30 AS a3OffsetRsrpInterFreq_N, 30 AS a3OffsetRsrpInterFreqQCI1_N, 30 AS hysA3OffsetRsrpInterFreq_N, 12 AS iFGroupPrio_N, -140 AS thresholdRsrqIFLBFilter_N, 26 AS threshold3aInterFreqQci1_N, 26 AS threshold3aInterFreq_N, 23 AS threshold3InterFreqQci1_N, -114 AS thresholdRsrpIFLBFilter_N,  23 AS threshold3InterFreq_N, CASE WHEN L.measurementBandwidth<>4 THEN 1 ELSE 0 END AS measurementBandwidth_D,CASE WHEN L.a3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreq_D,CASE WHEN L.a3OffsetRsrpInterFreqQCI1<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreqQCI1_D,CASE WHEN L.hysA3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS hysA3OffsetRsrpInterFreq_D,CASE WHEN L.iFGroupPrio<>12 THEN 1 ELSE 0 END AS iFGroupPrio_D,CASE WHEN L.thresholdRsrqIFLBFilter<>-140 THEN 1 ELSE 0 END AS thresholdRsrqIFLBFilter_D,CASE WHEN L.threshold3aInterFreqQci1<>26 THEN 1 ELSE 0 END AS threshold3aInterFreqQci1_D,CASE WHEN L.threshold3aInterFreq<>26 THEN 1 ELSE 0 END AS threshold3aInterFreq_D,CASE WHEN L.threshold3InterFreqQci1<>23 THEN 1 ELSE 0 END AS threshold3InterFreqQci1_D,CASE WHEN L.thresholdRsrpIFLBFilter<>-114 THEN 1 ELSE 0 END AS thresholdRsrpIFLBFilter_D,CASE WHEN L.threshold3InterFreq<>23 THEN 1 ELSE 0 END AS threshold3InterFreq_D
FROM LNHOIF_ref AS L
WHERE L.earfcnDL=651 AND L.eutraCarrierInfo=3075 AND (L.measurementBandwidth<>4 OR L.a3OffsetRsrpInterFreq<>30 OR L.a3OffsetRsrpInterFreqQCI1<>30 OR L.hysA3OffsetRsrpInterFreq<>30 OR L.iFGroupPrio<>12 OR L.thresholdRsrqIFLBFilter<>-140 OR L.threshold3aInterFreqQci1<>26 OR L.threshold3aInterFreq<>26 OR L.threshold3InterFreqQci1<>23 OR L.thresholdRsrpIFLBFilter<>-114 OR L.threshold3InterFreq<>23);
--
--
DROP TABLE IF EXISTS LNHOIF_9560_3075;
CREATE TABLE LNHOIF_9560_3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.eutraCarrierInfo, L.BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNHOIF_id, L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq,
 4 AS measurementBandwidth_N, 30 AS a3OffsetRsrpInterFreq_N, 30 AS a3OffsetRsrpInterFreqQCI1_N, 30 AS hysA3OffsetRsrpInterFreq_N, 12 AS iFGroupPrio_N, -140 AS thresholdRsrqIFLBFilter_N, 26 AS threshold3aInterFreqQci1_N, 26 AS threshold3aInterFreq_N, 23 AS threshold3InterFreqQci1_N, -114 AS thresholdRsrpIFLBFilter_N,  23 AS threshold3InterFreq_N, CASE WHEN L.measurementBandwidth<>4 THEN 1 ELSE 0 END AS measurementBandwidth_D,CASE WHEN L.a3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreq_D,CASE WHEN L.a3OffsetRsrpInterFreqQCI1<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreqQCI1_D,CASE WHEN L.hysA3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS hysA3OffsetRsrpInterFreq_D,CASE WHEN L.iFGroupPrio<>12 THEN 1 ELSE 0 END AS iFGroupPrio_D,CASE WHEN L.thresholdRsrqIFLBFilter<>-140 THEN 1 ELSE 0 END AS thresholdRsrqIFLBFilter_D,CASE WHEN L.threshold3aInterFreqQci1<>26 THEN 1 ELSE 0 END AS threshold3aInterFreqQci1_D,CASE WHEN L.threshold3aInterFreq<>26 THEN 1 ELSE 0 END AS threshold3aInterFreq_D,CASE WHEN L.threshold3InterFreqQci1<>23 THEN 1 ELSE 0 END AS threshold3InterFreqQci1_D,CASE WHEN L.thresholdRsrpIFLBFilter<>-114 THEN 1 ELSE 0 END AS thresholdRsrpIFLBFilter_D,CASE WHEN L.threshold3InterFreq<>23 THEN 1 ELSE 0 END AS threshold3InterFreq_D
FROM LNHOIF_ref AS L
WHERE L.earfcnDL=9560 AND L.eutraCarrierInfo=3075 AND (L.measurementBandwidth<>4 OR L.a3OffsetRsrpInterFreq<>30 OR L.a3OffsetRsrpInterFreqQCI1<>30 OR L.hysA3OffsetRsrpInterFreq<>30 OR L.iFGroupPrio<>12 OR L.thresholdRsrqIFLBFilter<>-140 OR L.threshold3aInterFreqQci1<>26 OR L.threshold3aInterFreq<>26 OR L.threshold3InterFreqQci1<>23 OR L.thresholdRsrpIFLBFilter<>-114 OR L.threshold3InterFreq<>23);
--
--
DROP TABLE IF EXISTS LNHOIF_3225_3075;
CREATE TABLE LNHOIF_3225_3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.eutraCarrierInfo, L.BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNHOIF_id, L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq,
 4 AS measurementBandwidth_N, 30 AS a3OffsetRsrpInterFreq_N, 30 AS a3OffsetRsrpInterFreqQCI1_N, 30 AS hysA3OffsetRsrpInterFreq_N, 12 AS iFGroupPrio_N, -140 AS thresholdRsrqIFLBFilter_N, 26 AS threshold3aInterFreqQci1_N, 26 AS threshold3aInterFreq_N, 23 AS threshold3InterFreqQci1_N, -114 AS thresholdRsrpIFLBFilter_N,  23 AS threshold3InterFreq_N, CASE WHEN L.measurementBandwidth<>4 THEN 1 ELSE 0 END AS measurementBandwidth_D,CASE WHEN L.a3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreq_D,CASE WHEN L.a3OffsetRsrpInterFreqQCI1<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreqQCI1_D,CASE WHEN L.hysA3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS hysA3OffsetRsrpInterFreq_D,CASE WHEN L.iFGroupPrio<>12 THEN 1 ELSE 0 END AS iFGroupPrio_D,CASE WHEN L.thresholdRsrqIFLBFilter<>-140 THEN 1 ELSE 0 END AS thresholdRsrqIFLBFilter_D,CASE WHEN L.threshold3aInterFreqQci1<>26 THEN 1 ELSE 0 END AS threshold3aInterFreqQci1_D,CASE WHEN L.threshold3aInterFreq<>26 THEN 1 ELSE 0 END AS threshold3aInterFreq_D,CASE WHEN L.threshold3InterFreqQci1<>23 THEN 1 ELSE 0 END AS threshold3InterFreqQci1_D,CASE WHEN L.thresholdRsrpIFLBFilter<>-114 THEN 1 ELSE 0 END AS thresholdRsrpIFLBFilter_D,CASE WHEN L.threshold3InterFreq<>23 THEN 1 ELSE 0 END AS threshold3InterFreq_D
FROM LNHOIF_ref AS L
WHERE L.earfcnDL=3225 AND L.eutraCarrierInfo=3075 AND (L.measurementBandwidth<>4 OR L.a3OffsetRsrpInterFreq<>30 OR L.a3OffsetRsrpInterFreqQCI1<>30 OR L.hysA3OffsetRsrpInterFreq<>30 OR L.iFGroupPrio<>12 OR L.thresholdRsrqIFLBFilter<>-140 OR L.threshold3aInterFreqQci1<>26 OR L.threshold3aInterFreq<>26 OR L.threshold3InterFreqQci1<>23 OR L.thresholdRsrpIFLBFilter<>-114 OR L.threshold3InterFreq<>23);
--
--
DROP TABLE IF EXISTS LNHOIF_626_3225;
CREATE TABLE LNHOIF_626_3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.eutraCarrierInfo, L.BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNHOIF_id, L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq,
 4 AS measurementBandwidth_N, 30 AS a3OffsetRsrpInterFreq_N, 30 AS a3OffsetRsrpInterFreqQCI1_N, 30 AS hysA3OffsetRsrpInterFreq_N, 12 AS iFGroupPrio_N, -140 AS thresholdRsrqIFLBFilter_N, 26 AS threshold3aInterFreqQci1_N, 26 AS threshold3aInterFreq_N, 27 AS threshold3InterFreqQci1_N, -114 AS thresholdRsrpIFLBFilter_N,  27 AS threshold3InterFreq_N, CASE WHEN L.measurementBandwidth<>4 THEN 1 ELSE 0 END AS measurementBandwidth_D,CASE WHEN L.a3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreq_D,CASE WHEN L.a3OffsetRsrpInterFreqQCI1<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreqQCI1_D,CASE WHEN L.hysA3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS hysA3OffsetRsrpInterFreq_D,CASE WHEN L.iFGroupPrio<>12 THEN 1 ELSE 0 END AS iFGroupPrio_D,CASE WHEN L.thresholdRsrqIFLBFilter<>-140 THEN 1 ELSE 0 END AS thresholdRsrqIFLBFilter_D,CASE WHEN L.threshold3aInterFreqQci1<>26 THEN 1 ELSE 0 END AS threshold3aInterFreqQci1_D,CASE WHEN L.threshold3aInterFreq<>26 THEN 1 ELSE 0 END AS threshold3aInterFreq_D,CASE WHEN L.threshold3InterFreqQci1<>27 THEN 1 ELSE 0 END AS threshold3InterFreqQci1_D,CASE WHEN L.thresholdRsrpIFLBFilter<>-114 THEN 1 ELSE 0 END AS thresholdRsrpIFLBFilter_D,CASE WHEN L.threshold3InterFreq<>27 THEN 1 ELSE 0 END AS threshold3InterFreq_D
FROM LNHOIF_ref AS L
WHERE L.earfcnDL=626 AND L.eutraCarrierInfo=3225 AND (L.measurementBandwidth<>4 OR L.a3OffsetRsrpInterFreq<>30 OR L.a3OffsetRsrpInterFreqQCI1<>30 OR L.hysA3OffsetRsrpInterFreq<>30 OR L.iFGroupPrio<>12 OR L.thresholdRsrqIFLBFilter<>-140 OR L.threshold3aInterFreqQci1<>26 OR L.threshold3aInterFreq<>26 OR L.threshold3InterFreqQci1<>27 OR L.thresholdRsrpIFLBFilter<>-114 OR L.threshold3InterFreq<>27);
--
--
DROP TABLE IF EXISTS LNHOIF_651_3225;
CREATE TABLE LNHOIF_651_3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.eutraCarrierInfo, L.BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNHOIF_id, L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq,
 4 AS measurementBandwidth_N, 30 AS a3OffsetRsrpInterFreq_N, 30 AS a3OffsetRsrpInterFreqQCI1_N, 30 AS hysA3OffsetRsrpInterFreq_N, 12 AS iFGroupPrio_N, -140 AS thresholdRsrqIFLBFilter_N, 26 AS threshold3aInterFreqQci1_N, 26 AS threshold3aInterFreq_N, 23 AS threshold3InterFreqQci1_N, -114 AS thresholdRsrpIFLBFilter_N,  23 AS threshold3InterFreq_N, CASE WHEN L.measurementBandwidth<>4 THEN 1 ELSE 0 END AS measurementBandwidth_D,CASE WHEN L.a3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreq_D,CASE WHEN L.a3OffsetRsrpInterFreqQCI1<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreqQCI1_D,CASE WHEN L.hysA3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS hysA3OffsetRsrpInterFreq_D,CASE WHEN L.iFGroupPrio<>12 THEN 1 ELSE 0 END AS iFGroupPrio_D,CASE WHEN L.thresholdRsrqIFLBFilter<>-140 THEN 1 ELSE 0 END AS thresholdRsrqIFLBFilter_D,CASE WHEN L.threshold3aInterFreqQci1<>26 THEN 1 ELSE 0 END AS threshold3aInterFreqQci1_D,CASE WHEN L.threshold3aInterFreq<>26 THEN 1 ELSE 0 END AS threshold3aInterFreq_D,CASE WHEN L.threshold3InterFreqQci1<>23 THEN 1 ELSE 0 END AS threshold3InterFreqQci1_D,CASE WHEN L.thresholdRsrpIFLBFilter<>-114 THEN 1 ELSE 0 END AS thresholdRsrpIFLBFilter_D,CASE WHEN L.threshold3InterFreq<>23 THEN 1 ELSE 0 END AS threshold3InterFreq_D
FROM LNHOIF_ref AS L
WHERE L.earfcnDL=651 AND L.eutraCarrierInfo=3225 AND (L.measurementBandwidth<>4 OR L.a3OffsetRsrpInterFreq<>30 OR L.a3OffsetRsrpInterFreqQCI1<>30 OR L.hysA3OffsetRsrpInterFreq<>30 OR L.iFGroupPrio<>12 OR L.thresholdRsrqIFLBFilter<>-140 OR L.threshold3aInterFreqQci1<>26 OR L.threshold3aInterFreq<>26 OR L.threshold3InterFreqQci1<>23 OR L.thresholdRsrpIFLBFilter<>-114 OR L.threshold3InterFreq<>23);
--
--
DROP TABLE IF EXISTS LNHOIF_9560_3225;
CREATE TABLE LNHOIF_9560_3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.eutraCarrierInfo, L.BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNHOIF_id, L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq,
 4 AS measurementBandwidth_N, 30 AS a3OffsetRsrpInterFreq_N, 30 AS a3OffsetRsrpInterFreqQCI1_N, 30 AS hysA3OffsetRsrpInterFreq_N, 12 AS iFGroupPrio_N, -140 AS thresholdRsrqIFLBFilter_N, 26 AS threshold3aInterFreqQci1_N, 26 AS threshold3aInterFreq_N, 23 AS threshold3InterFreqQci1_N, -114 AS thresholdRsrpIFLBFilter_N,  23 AS threshold3InterFreq_N, CASE WHEN L.measurementBandwidth<>4 THEN 1 ELSE 0 END AS measurementBandwidth_D,CASE WHEN L.a3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreq_D,CASE WHEN L.a3OffsetRsrpInterFreqQCI1<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreqQCI1_D,CASE WHEN L.hysA3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS hysA3OffsetRsrpInterFreq_D,CASE WHEN L.iFGroupPrio<>12 THEN 1 ELSE 0 END AS iFGroupPrio_D,CASE WHEN L.thresholdRsrqIFLBFilter<>-140 THEN 1 ELSE 0 END AS thresholdRsrqIFLBFilter_D,CASE WHEN L.threshold3aInterFreqQci1<>26 THEN 1 ELSE 0 END AS threshold3aInterFreqQci1_D,CASE WHEN L.threshold3aInterFreq<>26 THEN 1 ELSE 0 END AS threshold3aInterFreq_D,CASE WHEN L.threshold3InterFreqQci1<>23 THEN 1 ELSE 0 END AS threshold3InterFreqQci1_D,CASE WHEN L.thresholdRsrpIFLBFilter<>-114 THEN 1 ELSE 0 END AS thresholdRsrpIFLBFilter_D,CASE WHEN L.threshold3InterFreq<>23 THEN 1 ELSE 0 END AS threshold3InterFreq_D
FROM LNHOIF_ref AS L
WHERE L.earfcnDL=9560 AND L.eutraCarrierInfo=3225 AND (L.measurementBandwidth<>4 OR L.a3OffsetRsrpInterFreq<>30 OR L.a3OffsetRsrpInterFreqQCI1<>30 OR L.hysA3OffsetRsrpInterFreq<>30 OR L.iFGroupPrio<>12 OR L.thresholdRsrqIFLBFilter<>-140 OR L.threshold3aInterFreqQci1<>26 OR L.threshold3aInterFreq<>26 OR L.threshold3InterFreqQci1<>23 OR L.thresholdRsrpIFLBFilter<>-114 OR L.threshold3InterFreq<>23);
--
--
DROP TABLE IF EXISTS LNHOIF_3075_3225;
CREATE TABLE LNHOIF_3075_3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.Prefijo, L.Sector, L.Banda, L.earfcnDL, L.eutraCarrierInfo, L.BandaT,
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNHOIF_id, L.measurementBandwidth,L.a3OffsetRsrpInterFreq,L.a3OffsetRsrpInterFreqQCI1,L.hysA3OffsetRsrpInterFreq,L.iFGroupPrio,L.thresholdRsrqIFLBFilter,L.threshold3aInterFreqQci1,L.threshold3aInterFreq,L.threshold3InterFreqQci1,L.thresholdRsrpIFLBFilter,L.threshold3InterFreq,
 4 AS measurementBandwidth_N, 30 AS a3OffsetRsrpInterFreq_N, 30 AS a3OffsetRsrpInterFreqQCI1_N, 30 AS hysA3OffsetRsrpInterFreq_N, 12 AS iFGroupPrio_N, -140 AS thresholdRsrqIFLBFilter_N, 26 AS threshold3aInterFreqQci1_N, 26 AS threshold3aInterFreq_N, 23 AS threshold3InterFreqQci1_N, -114 AS thresholdRsrpIFLBFilter_N,  23 AS threshold3InterFreq_N, CASE WHEN L.measurementBandwidth<>4 THEN 1 ELSE 0 END AS measurementBandwidth_D,CASE WHEN L.a3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreq_D,CASE WHEN L.a3OffsetRsrpInterFreqQCI1<>30 THEN 1 ELSE 0 END AS a3OffsetRsrpInterFreqQCI1_D,CASE WHEN L.hysA3OffsetRsrpInterFreq<>30 THEN 1 ELSE 0 END AS hysA3OffsetRsrpInterFreq_D,CASE WHEN L.iFGroupPrio<>12 THEN 1 ELSE 0 END AS iFGroupPrio_D,CASE WHEN L.thresholdRsrqIFLBFilter<>-140 THEN 1 ELSE 0 END AS thresholdRsrqIFLBFilter_D,CASE WHEN L.threshold3aInterFreqQci1<>26 THEN 1 ELSE 0 END AS threshold3aInterFreqQci1_D,CASE WHEN L.threshold3aInterFreq<>26 THEN 1 ELSE 0 END AS threshold3aInterFreq_D,CASE WHEN L.threshold3InterFreqQci1<>23 THEN 1 ELSE 0 END AS threshold3InterFreqQci1_D,CASE WHEN L.thresholdRsrpIFLBFilter<>-114 THEN 1 ELSE 0 END AS thresholdRsrpIFLBFilter_D,CASE WHEN L.threshold3InterFreq<>23 THEN 1 ELSE 0 END AS threshold3InterFreq_D
FROM LNHOIF_ref AS L
WHERE L.earfcnDL=3075 AND L.eutraCarrierInfo=3225 AND (L.measurementBandwidth<>4 OR L.a3OffsetRsrpInterFreq<>30 OR L.a3OffsetRsrpInterFreqQCI1<>30 OR L.hysA3OffsetRsrpInterFreq<>30 OR L.iFGroupPrio<>12 OR L.thresholdRsrqIFLBFilter<>-140 OR L.threshold3aInterFreqQci1<>26 OR L.threshold3aInterFreq<>26 OR L.threshold3InterFreqQci1<>23 OR L.thresholdRsrpIFLBFilter<>-114 OR L.threshold3InterFreq<>23);
--
--
--
--
--  LNCEL amlepr combinations FROM 626 TO 3075
DROP TABLE IF EXISTS LNCEL_AMLEPR626_3075;
CREATE TABLE LNCEL_AMLEPR626_3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 0 AS AMLEPR_id_New, 3075 AS targetCarrierFreq_New
FROM LNCEL_Full AS L INNER JOIN Sites_L3075 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 626;
--
--  LNCEL amlepr combinations FROM 626 TO 3225
DROP TABLE IF EXISTS LNCEL_AMLEPR626_3225;
CREATE TABLE LNCEL_AMLEPR626_3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 1 AS AMLEPR_id_New, 3225 AS targetCarrierFreq_New
FROM LNCEL_Full AS L INNER JOIN Sites_L3225 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 626;
--
--  LNCEL amlepr combinations FROM 626 TO 9560
DROP TABLE IF EXISTS LNCEL_AMLEPR626_9560;
CREATE TABLE LNCEL_AMLEPR626_9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 4 AS AMLEPR_id_New, 9560 AS targetCarrierFreq_New
FROM LNCEL_Full AS L INNER JOIN Sites_L9560 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 626;
--
--  LNCEL amlepr combinations FROM 651 TO 3075
DROP TABLE IF EXISTS LNCEL_AMLEPR651_3075;
CREATE TABLE LNCEL_AMLEPR651_3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 0 AS AMLEPR_id_New, 3075 AS targetCarrierFreq_New
FROM LNCEL_Full AS L INNER JOIN Sites_L3075 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 651;
--
--  LNCEL amlepr combinations FROM 651 TO 3225
DROP TABLE IF EXISTS LNCEL_AMLEPR651_3225;
CREATE TABLE LNCEL_AMLEPR651_3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 1 AS AMLEPR_id_New, 3225 AS targetCarrierFreq_New
FROM LNCEL_Full AS L INNER JOIN Sites_L3225 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 651;
--
--  LNCEL amlepr combinations FROM 651 TO 9560
DROP TABLE IF EXISTS LNCEL_AMLEPR651_9560;
CREATE TABLE LNCEL_AMLEPR651_9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 4 AS AMLEPR_id_New, 9560 AS targetCarrierFreq_New
FROM LNCEL_Full AS L INNER JOIN Sites_L9560 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 651;
--
--  LNCEL amlepr combinations FROM 3075 TO 651
DROP TABLE IF EXISTS LNCEL_AMLEPR3075_651;
CREATE TABLE LNCEL_AMLEPR3075_651 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 1 AS AMLEPR_id_New, 651 AS targetCarrierFreq_New
FROM LNCEL_Full AS L INNER JOIN Sites_L651 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 3075;
--
--  LNCEL amlepr combinations FROM 3075 TO 626
DROP TABLE IF EXISTS LNCEL_AMLEPR3075_626;
CREATE TABLE LNCEL_AMLEPR3075_626 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 2 AS AMLEPR_id_New, 626 AS targetCarrierFreq_New
FROM LNCEL_Full AS L INNER JOIN Sites_L626 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 3075;
--
--  LNCEL amlepr combinations FROM 3075 TO 3225
DROP TABLE IF EXISTS LNCEL_AMLEPR3075_3225;
CREATE TABLE LNCEL_AMLEPR3075_3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 0 AS AMLEPR_id_New, 3225 AS targetCarrierFreq_New
FROM LNCEL_Full AS L INNER JOIN Sites_L3225 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 3075;
--
--  LNCEL amlepr combinations FROM 3075 TO 9560
DROP TABLE IF EXISTS LNCEL_AMLEPR3075_9560;
CREATE TABLE LNCEL_AMLEPR3075_9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 4 AS AMLEPR_id_New, 9560 AS targetCarrierFreq_New
FROM LNCEL_Full AS L INNER JOIN Sites_L9560 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 3075;
--
--  LNCEL amlepr combinations FROM 3225 TO 651
DROP TABLE IF EXISTS LNCEL_AMLEPR3225_651;
CREATE TABLE LNCEL_AMLEPR3225_651 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 1 AS AMLEPR_id_New, 651 AS targetCarrierFreq_New
FROM LNCEL_Full AS L INNER JOIN Sites_L651 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 3225;
--
--  LNCEL amlepr combinations FROM 3225 TO 626
DROP TABLE IF EXISTS LNCEL_AMLEPR3225_626;
CREATE TABLE LNCEL_AMLEPR3225_626 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 2 AS AMLEPR_id_New, 626 AS targetCarrierFreq_New
FROM LNCEL_Full AS L INNER JOIN Sites_L626 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 3225;
--
--  LNCEL amlepr combinations FROM 3225 TO 3075
DROP TABLE IF EXISTS LNCEL_AMLEPR3225_3075;
CREATE TABLE LNCEL_AMLEPR3225_3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 0 AS AMLEPR_id_New, 3075 AS targetCarrierFreq_New
FROM LNCEL_Full AS L INNER JOIN Sites_L3075 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 3225;
--
--  LNCEL amlepr combinations FROM 3225 TO 9560
DROP TABLE IF EXISTS LNCEL_AMLEPR3225_9560;
CREATE TABLE LNCEL_AMLEPR3225_9560 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 4 AS AMLEPR_id_New, 9560 AS targetCarrierFreq_New
FROM LNCEL_Full AS L INNER JOIN Sites_L9560 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 3225;
--
--  LNCEL amlepr combinations FROM 9560 TO 651
DROP TABLE IF EXISTS LNCEL_AMLEPR9560_651;
CREATE TABLE LNCEL_AMLEPR9560_651 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 2 AS AMLEPR_id_New, 651 AS targetCarrierFreq_New
FROM LNCEL_Full AS L INNER JOIN Sites_L651 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 9560;
--
--  LNCEL amlepr combinations FROM 9560 TO 626
DROP TABLE IF EXISTS LNCEL_AMLEPR9560_626;
CREATE TABLE LNCEL_AMLEPR9560_626 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 3 AS AMLEPR_id_New, 626 AS targetCarrierFreq_New
FROM LNCEL_Full AS L INNER JOIN Sites_L626 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 9560;
--
--  LNCEL amlepr combinations FROM 9560 TO 3075
DROP TABLE IF EXISTS LNCEL_AMLEPR9560_3075;
CREATE TABLE LNCEL_AMLEPR9560_3075 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 0 AS AMLEPR_id_New, 3075 AS targetCarrierFreq_New
FROM LNCEL_Full AS L INNER JOIN Sites_L3075 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 9560;
--
--  LNCEL amlepr combinations FROM 9560 TO 3225
DROP TABLE IF EXISTS LNCEL_AMLEPR9560_3225;
CREATE TABLE LNCEL_AMLEPR9560_3225 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 1 AS AMLEPR_id_New, 3225 AS targetCarrierFreq_New
FROM LNCEL_Full AS L INNER JOIN Sites_L3225 AS S ON L.LNBTSname = S.LNBTSname
WHERE L.earfcnDL = 9560;
--
--
DROP TABLE IF EXISTS LNCEL_AMLEPR_FULL;
CREATE TABLE LNCEL_AMLEPR_FULL ENGINE=MyISAM AS
SELECT * FROM LNCEL_AMLEPR626_3075
UNION ALL
SELECT * FROM LNCEL_AMLEPR626_3225
UNION ALL
SELECT * FROM LNCEL_AMLEPR626_9560
UNION ALL
SELECT * FROM LNCEL_AMLEPR651_3075
UNION ALL
SELECT * FROM LNCEL_AMLEPR651_3225
UNION ALL
SELECT * FROM LNCEL_AMLEPR651_9560
UNION ALL
SELECT * FROM LNCEL_AMLEPR3075_651
UNION ALL
SELECT * FROM LNCEL_AMLEPR3075_626
UNION ALL
SELECT * FROM LNCEL_AMLEPR3075_3225
UNION ALL
SELECT * FROM LNCEL_AMLEPR3075_9560
UNION ALL
SELECT * FROM LNCEL_AMLEPR3225_651
UNION ALL
SELECT * FROM LNCEL_AMLEPR3225_626
UNION ALL
SELECT * FROM LNCEL_AMLEPR3225_3075
UNION ALL
SELECT * FROM LNCEL_AMLEPR3225_9560
UNION ALL
SELECT * FROM LNCEL_AMLEPR9560_651
UNION ALL
SELECT * FROM LNCEL_AMLEPR9560_626
UNION ALL
SELECT * FROM LNCEL_AMLEPR9560_3075
UNION ALL
SELECT * FROM LNCEL_AMLEPR9560_3225
ORDER BY
    Region DESC, LNCELname;
--
--
DROP TABLE IF EXISTS AMLEPR_MISS;
CREATE TABLE AMLEPR_MISS ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.Banda, L.earfcnDL, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.AMLEPR_id_New, L.targetCarrierFreq_New, A.targetCarrierFreq
FROM LNCEL_AMLEPR_FULL AS L LEFT JOIN AMLEPR_ref AS A ON (L.PLMN_id = A.PLMN_id AND L.MRBTS_id = A.MRBTS_id AND L.LNBTS_id = A.LNBTS_id AND L.LNCEL_id = A.LNCEL_id AND L.targetCarrierFreq_New = A.targetCarrierFreq)
WHERE A.targetCarrierFreq IS NULL
ORDER BY L.Region DESC, L.LNCELname;
--
--
--
--
DROP TABLE IF EXISTS LNCEL_AUD1841_15_20;
CREATE TABLE LNCEL_AUD1841_15_20 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.PLMN_id, L.Prefijo, L.Sector, L.Banda, L.MRBTS_id,L.LNBTS_id,L.LNCEL_id,L.LNBTSname,
L.targetLoadNonGbrDl,L.targetLoadGbrDl,L.targetLoadPdcch,L.idleLBPercentageofUEs,L.t320,L.actAmle,L.amleMaxNumHo,L.amlePeriodLoadExchange,L.hysteresisLoadDlGbr,L.hysteresisLoadDlNonGbr,L.hysteresisLoadPdcch,L.iFLBBearCheckTimer,L.iFLBRetryTimer,L.maxLbPartners,L.mlbEicicOperMode,L.nomNumPrbNonGbr,L.ulCacSelection,L.ulStaticCac,L.idleLBCapThresh,L.idleLBCelResWeight,L.highLoadGbrDl,L.highLoadNonGbrDl,L.highLoadPdcch,L.iFLBHighLoadGBRDL,L.iFLBHighLoadNonGBRDL,L.iFLBHighLoadPdcch,L.dlChBw1
, 70 AS targetLoadNonGbrDl_N, 70 AS targetLoadGbrDl_N, 70 AS targetLoadPdcch_N, 80 AS idleLBPercentageofUEs_N, 10 AS t320_N, 1 AS actAmle_N, 10 AS amleMaxNumHo_N, 10000 AS amlePeriodLoadExchange_N, 2 AS hysteresisLoadDlGbr_N, 2 AS hysteresisLoadDlNonGbr_N, 2 AS hysteresisLoadPdcch_N, 12 AS iFLBBearCheckTimer_N, 60 AS iFLBRetryTimer_N, 16 AS maxLbPartners_N, 2 AS mlbEicicOperMode_N, 10 AS nomNumPrbNonGbr_N, 0 AS ulCacSelection_N, 100 AS ulStaticCac_N, 30 AS idleLBCapThresh_N, 30 AS idleLBCelResWeight_N, 90 AS highLoadGbrDl_N, 90 AS highLoadNonGbrDl_N, 90 AS highLoadPdcch_N, 90 AS iFLBHighLoadGBRDL_N, 90 AS iFLBHighLoadNonGBRDL_N, 90 AS iFLBHighLoadPdcch_N,CASE WHEN L.targetLoadNonGbrDl <> 70 THEN 1 ELSE 0 END AS targetLoadNonGbrDl_D,CASE WHEN L.targetLoadGbrDl <> 70 THEN 1 ELSE 0 END AS targetLoadGbrDl_D,CASE WHEN L.targetLoadPdcch <> 70 THEN 1 ELSE 0 END AS targetLoadPdcch_D,CASE WHEN L.idleLBPercentageofUEs <> 80 THEN 1 ELSE 0 END AS idleLBPercentageofUEs_D,CASE WHEN L.t320 <> 10 THEN 1 ELSE 0 END AS t320_D,CASE WHEN L.actAmle <> 1 THEN 1 ELSE 0 END AS actAmle_D,CASE WHEN L.amleMaxNumHo <> 10 THEN 1 ELSE 0 END AS amleMaxNumHo_D,CASE WHEN L.amlePeriodLoadExchange <> 10000 THEN 1 ELSE 0 END AS amlePeriodLoadExchange_D,CASE WHEN L.hysteresisLoadDlGbr <> 2 THEN 1 ELSE 0 END AS hysteresisLoadDlGbr_D,CASE WHEN L.hysteresisLoadDlNonGbr <> 2 THEN 1 ELSE 0 END AS hysteresisLoadDlNonGbr_D,CASE WHEN L.hysteresisLoadPdcch <> 2 THEN 1 ELSE 0 END AS hysteresisLoadPdcch_D,CASE WHEN L.iFLBBearCheckTimer <> 12 THEN 1 ELSE 0 END AS iFLBBearCheckTimer_D,CASE WHEN L.iFLBRetryTimer <> 60 THEN 1 ELSE 0 END AS iFLBRetryTimer_D,CASE WHEN L.maxLbPartners <> 16 THEN 1 ELSE 0 END AS maxLbPartners_D,CASE WHEN L.mlbEicicOperMode <> 2 THEN 1 ELSE 0 END AS mlbEicicOperMode_D,CASE WHEN L.nomNumPrbNonGbr <> 10 THEN 1 ELSE 0 END AS nomNumPrbNonGbr_D,CASE WHEN L.ulCacSelection <> 0 THEN 1 ELSE 0 END AS ulCacSelection_D,CASE WHEN L.ulStaticCac <> 100 THEN 1 ELSE 0 END AS ulStaticCac_D,CASE WHEN L.idleLBCapThresh <> 30 THEN 1 ELSE 0 END AS idleLBCapThresh_D,CASE WHEN L.idleLBCelResWeight <> 30 THEN 1 ELSE 0 END AS idleLBCelResWeight_D,CASE WHEN L.highLoadGbrDl <> 90 THEN 1 ELSE 0 END AS highLoadGbrDl_D,CASE WHEN L.highLoadNonGbrDl <> 90 THEN 1 ELSE 0 END AS highLoadNonGbrDl_D,CASE WHEN L.highLoadPdcch <> 90 THEN 1 ELSE 0 END AS highLoadPdcch_D,CASE WHEN L.iFLBHighLoadGBRDL <> 90 THEN 1 ELSE 0 END AS iFLBHighLoadGBRDL_D,CASE WHEN L.iFLBHighLoadNonGBRDL <> 90 THEN 1 ELSE 0 END AS iFLBHighLoadNonGBRDL_D,CASE WHEN L.iFLBHighLoadPdcch <> 90 THEN 1 ELSE 0 END AS iFLBHighLoadPdcch_D
FROM LNCEL_Full AS L
WHERE (L.dlChBw1=150 OR L.dlChBw1=200)  AND (L.targetLoadNonGbrDl<>70 OR L.targetLoadGbrDl<>70 OR L.targetLoadPdcch<>70 OR L.idleLBPercentageofUEs<>80 OR L.t320<>10 OR L.actAmle<>1 OR L.amleMaxNumHo<>10 OR L.amlePeriodLoadExchange<>10000 OR L.hysteresisLoadDlGbr<>2 OR L.hysteresisLoadDlNonGbr<>2 OR L.hysteresisLoadPdcch<>2 OR L.iFLBBearCheckTimer<>12 OR L.iFLBRetryTimer<>60 OR L.maxLbPartners<>16 OR L.mlbEicicOperMode<>2 OR L.nomNumPrbNonGbr<>10 OR L.ulCacSelection<>0 OR L.ulStaticCac<>100 OR L.idleLBCapThresh<>30 OR L.idleLBCelResWeight<>30 OR L.highLoadGbrDl<>90 OR L.highLoadNonGbrDl<>90 OR L.highLoadPdcch<>90 OR L.iFLBHighLoadGBRDL<>90 OR L.iFLBHighLoadNonGBRDL<>90 OR L.iFLBHighLoadPdcch<>90);
--
--

DROP TABLE IF EXISTS LNCEL_AUD1841_10;
CREATE TABLE LNCEL_AUD1841_10 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.PLMN_id, L.Prefijo, L.Sector, L.Banda, L.MRBTS_id,L.LNBTS_id,L.LNCEL_id,L.LNBTSname,
L.targetLoadNonGbrDl,L.targetLoadGbrDl,L.targetLoadPdcch,L.idleLBPercentageofUEs,L.t320,L.actAmle,L.amleMaxNumHo,L.amlePeriodLoadExchange,L.hysteresisLoadDlGbr,L.hysteresisLoadDlNonGbr,L.hysteresisLoadPdcch,L.iFLBBearCheckTimer,L.iFLBRetryTimer,L.maxLbPartners,L.mlbEicicOperMode,L.nomNumPrbNonGbr,L.ulCacSelection,L.ulStaticCac,L.idleLBCapThresh,L.idleLBCelResWeight,L.highLoadGbrDl,L.highLoadNonGbrDl,L.highLoadPdcch,L.iFLBHighLoadGBRDL,L.iFLBHighLoadNonGBRDL,L.iFLBHighLoadPdcch,L.dlChBw1
, 70 AS targetLoadNonGbrDl_N, 70 AS targetLoadGbrDl_N, 70 AS targetLoadPdcch_N, 80 AS idleLBPercentageofUEs_N, 10 AS t320_N, 1 AS actAmle_N, 10 AS amleMaxNumHo_N, 10000 AS amlePeriodLoadExchange_N, 2 AS hysteresisLoadDlGbr_N, 2 AS hysteresisLoadDlNonGbr_N, 2 AS hysteresisLoadPdcch_N, 12 AS iFLBBearCheckTimer_N, 60 AS iFLBRetryTimer_N, 16 AS maxLbPartners_N, 2 AS mlbEicicOperMode_N, 10 AS nomNumPrbNonGbr_N, 0 AS ulCacSelection_N, 100 AS ulStaticCac_N, 64 AS idleLBCapThresh_N, 10 AS idleLBCelResWeight_N, 70 AS highLoadGbrDl_N, 70 AS highLoadNonGbrDl_N, 70 AS highLoadPdcch_N, 70 AS iFLBHighLoadGBRDL_N, 70 AS iFLBHighLoadNonGBRDL_N, 70 AS iFLBHighLoadPdcch_N,CASE WHEN L.targetLoadNonGbrDl <> 70 THEN 1 ELSE 0 END AS targetLoadNonGbrDl_D,CASE WHEN L.targetLoadGbrDl <> 70 THEN 1 ELSE 0 END AS targetLoadGbrDl_D,CASE WHEN L.targetLoadPdcch <> 70 THEN 1 ELSE 0 END AS targetLoadPdcch_D,CASE WHEN L.idleLBPercentageofUEs <> 80 THEN 1 ELSE 0 END AS idleLBPercentageofUEs_D,CASE WHEN L.t320 <> 10 THEN 1 ELSE 0 END AS t320_D,CASE WHEN L.actAmle <> 1 THEN 1 ELSE 0 END AS actAmle_D,CASE WHEN L.amleMaxNumHo <> 10 THEN 1 ELSE 0 END AS amleMaxNumHo_D,CASE WHEN L.amlePeriodLoadExchange <> 10000 THEN 1 ELSE 0 END AS amlePeriodLoadExchange_D,CASE WHEN L.hysteresisLoadDlGbr <> 2 THEN 1 ELSE 0 END AS hysteresisLoadDlGbr_D,CASE WHEN L.hysteresisLoadDlNonGbr <> 2 THEN 1 ELSE 0 END AS hysteresisLoadDlNonGbr_D,CASE WHEN L.hysteresisLoadPdcch <> 2 THEN 1 ELSE 0 END AS hysteresisLoadPdcch_D,CASE WHEN L.iFLBBearCheckTimer <> 12 THEN 1 ELSE 0 END AS iFLBBearCheckTimer_D,CASE WHEN L.iFLBRetryTimer <> 60 THEN 1 ELSE 0 END AS iFLBRetryTimer_D,CASE WHEN L.maxLbPartners <> 16 THEN 1 ELSE 0 END AS maxLbPartners_D,CASE WHEN L.mlbEicicOperMode <> 2 THEN 1 ELSE 0 END AS mlbEicicOperMode_D,CASE WHEN L.nomNumPrbNonGbr <> 10 THEN 1 ELSE 0 END AS nomNumPrbNonGbr_D,CASE WHEN L.ulCacSelection <> 0 THEN 1 ELSE 0 END AS ulCacSelection_D,CASE WHEN L.ulStaticCac <> 100 THEN 1 ELSE 0 END AS ulStaticCac_D,CASE WHEN L.idleLBCapThresh <> 64 THEN 1 ELSE 0 END AS idleLBCapThresh_D,CASE WHEN L.idleLBCelResWeight <> 10 THEN 1 ELSE 0 END AS idleLBCelResWeight_D,CASE WHEN L.highLoadGbrDl <> 70 THEN 1 ELSE 0 END AS highLoadGbrDl_D,CASE WHEN L.highLoadNonGbrDl <> 70 THEN 1 ELSE 0 END AS highLoadNonGbrDl_D,CASE WHEN L.highLoadPdcch <> 70 THEN 1 ELSE 0 END AS highLoadPdcch_D,CASE WHEN L.iFLBHighLoadGBRDL <> 70 THEN 1 ELSE 0 END AS iFLBHighLoadGBRDL_D,CASE WHEN L.iFLBHighLoadNonGBRDL <> 70 THEN 1 ELSE 0 END AS iFLBHighLoadNonGBRDL_D,CASE WHEN L.iFLBHighLoadPdcch <> 70 THEN 1 ELSE 0 END AS iFLBHighLoadPdcch_D
FROM LNCEL_Full AS L
WHERE L.dlChBw1=100  AND (L.targetLoadNonGbrDl<>70 OR L.targetLoadGbrDl<>70 OR L.targetLoadPdcch<>70 OR L.idleLBPercentageofUEs<>80 OR L.t320<>10 OR L.actAmle<>1 OR L.amleMaxNumHo<>10 OR L.amlePeriodLoadExchange<>10000 OR L.hysteresisLoadDlGbr<>2 OR L.hysteresisLoadDlNonGbr<>2 OR L.hysteresisLoadPdcch<>2 OR L.iFLBBearCheckTimer<>12 OR L.iFLBRetryTimer<>60 OR L.maxLbPartners<>16 OR L.mlbEicicOperMode<>2 OR L.nomNumPrbNonGbr<>10 OR L.ulCacSelection<>0 OR L.ulStaticCac<>100 OR L.idleLBCapThresh<>64 OR L.idleLBCelResWeight<>10 OR L.highLoadGbrDl<>70 OR L.highLoadNonGbrDl<>70 OR L.highLoadPdcch<>70 OR L.iFLBHighLoadGBRDL<>70 OR L.iFLBHighLoadNonGBRDL<>70 OR L.iFLBHighLoadPdcch<>70);
--
--
DROP TABLE IF EXISTS LNCEL_AUD1841_5;
CREATE TABLE LNCEL_AUD1841_5 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.PLMN_id, L.Prefijo, L.Sector, L.Banda, L.MRBTS_id,L.LNBTS_id,L.LNCEL_id,L.LNBTSname,
L.targetLoadNonGbrDl,L.targetLoadGbrDl,L.targetLoadPdcch,L.idleLBPercentageofUEs,L.t320,L.actAmle,L.amleMaxNumHo,L.amlePeriodLoadExchange,L.hysteresisLoadDlGbr,L.hysteresisLoadDlNonGbr,L.hysteresisLoadPdcch,L.iFLBBearCheckTimer,L.iFLBRetryTimer,L.maxLbPartners,L.mlbEicicOperMode,L.nomNumPrbNonGbr,L.ulCacSelection,L.ulStaticCac,L.idleLBCapThresh,L.idleLBCelResWeight,L.highLoadGbrDl,L.highLoadNonGbrDl,L.highLoadPdcch,L.iFLBHighLoadGBRDL,L.iFLBHighLoadNonGBRDL,L.iFLBHighLoadPdcch,L.dlChBw1
, 70 AS targetLoadNonGbrDl_N, 70 AS targetLoadGbrDl_N, 70 AS targetLoadPdcch_N, 80 AS idleLBPercentageofUEs_N, 10 AS t320_N, 1 AS actAmle_N, 10 AS amleMaxNumHo_N, 10000 AS amlePeriodLoadExchange_N, 2 AS hysteresisLoadDlGbr_N, 2 AS hysteresisLoadDlNonGbr_N, 2 AS hysteresisLoadPdcch_N, 12 AS iFLBBearCheckTimer_N, 60 AS iFLBRetryTimer_N, 16 AS maxLbPartners_N, 2 AS mlbEicicOperMode_N, 10 AS nomNumPrbNonGbr_N, 0 AS ulCacSelection_N, 100 AS ulStaticCac_N, 70 AS idleLBCapThresh_N, 10 AS idleLBCelResWeight_N, 70 AS highLoadGbrDl_N, 70 AS highLoadNonGbrDl_N, 70 AS highLoadPdcch_N, 70 AS iFLBHighLoadGBRDL_N, 70 AS iFLBHighLoadNonGBRDL_N, 70 AS iFLBHighLoadPdcch_N,CASE WHEN L.targetLoadNonGbrDl <> 70 THEN 1 ELSE 0 END AS targetLoadNonGbrDl_D,CASE WHEN L.targetLoadGbrDl <> 70 THEN 1 ELSE 0 END AS targetLoadGbrDl_D,CASE WHEN L.targetLoadPdcch <> 70 THEN 1 ELSE 0 END AS targetLoadPdcch_D,CASE WHEN L.idleLBPercentageofUEs <> 80 THEN 1 ELSE 0 END AS idleLBPercentageofUEs_D,CASE WHEN L.t320 <> 10 THEN 1 ELSE 0 END AS t320_D,CASE WHEN L.actAmle <> 1 THEN 1 ELSE 0 END AS actAmle_D,CASE WHEN L.amleMaxNumHo <> 10 THEN 1 ELSE 0 END AS amleMaxNumHo_D,CASE WHEN L.amlePeriodLoadExchange <> 10000 THEN 1 ELSE 0 END AS amlePeriodLoadExchange_D,CASE WHEN L.hysteresisLoadDlGbr <> 2 THEN 1 ELSE 0 END AS hysteresisLoadDlGbr_D,CASE WHEN L.hysteresisLoadDlNonGbr <> 2 THEN 1 ELSE 0 END AS hysteresisLoadDlNonGbr_D,CASE WHEN L.hysteresisLoadPdcch <> 2 THEN 1 ELSE 0 END AS hysteresisLoadPdcch_D,CASE WHEN L.iFLBBearCheckTimer <> 12 THEN 1 ELSE 0 END AS iFLBBearCheckTimer_D,CASE WHEN L.iFLBRetryTimer <> 60 THEN 1 ELSE 0 END AS iFLBRetryTimer_D,CASE WHEN L.maxLbPartners <> 16 THEN 1 ELSE 0 END AS maxLbPartners_D,CASE WHEN L.mlbEicicOperMode <> 2 THEN 1 ELSE 0 END AS mlbEicicOperMode_D,CASE WHEN L.nomNumPrbNonGbr <> 10 THEN 1 ELSE 0 END AS nomNumPrbNonGbr_D,CASE WHEN L.ulCacSelection <> 0 THEN 1 ELSE 0 END AS ulCacSelection_D,CASE WHEN L.ulStaticCac <> 100 THEN 1 ELSE 0 END AS ulStaticCac_D,CASE WHEN L.idleLBCapThresh <> 70 THEN 1 ELSE 0 END AS idleLBCapThresh_D,CASE WHEN L.idleLBCelResWeight <> 10 THEN 1 ELSE 0 END AS idleLBCelResWeight_D,CASE WHEN L.highLoadGbrDl <> 70 THEN 1 ELSE 0 END AS highLoadGbrDl_D,CASE WHEN L.highLoadNonGbrDl <> 70 THEN 1 ELSE 0 END AS highLoadNonGbrDl_D,CASE WHEN L.highLoadPdcch <> 70 THEN 1 ELSE 0 END AS highLoadPdcch_D,CASE WHEN L.iFLBHighLoadGBRDL <> 70 THEN 1 ELSE 0 END AS iFLBHighLoadGBRDL_D,CASE WHEN L.iFLBHighLoadNonGBRDL <> 70 THEN 1 ELSE 0 END AS iFLBHighLoadNonGBRDL_D,CASE WHEN L.iFLBHighLoadPdcch <> 70 THEN 1 ELSE 0 END AS iFLBHighLoadPdcch_D
FROM LNCEL_Full AS L
WHERE L.dlChBw1=50  AND (
L.targetLoadNonGbrDl<>70 OR L.targetLoadGbrDl<>70 OR L.targetLoadPdcch<>70 OR L.idleLBPercentageofUEs<>80 OR L.t320<>10 OR L.actAmle<>1 OR L.amleMaxNumHo<>10 OR L.amlePeriodLoadExchange<>10000 OR L.hysteresisLoadDlGbr<>2 OR L.hysteresisLoadDlNonGbr<>2 OR L.hysteresisLoadPdcch<>2 OR L.iFLBBearCheckTimer<>12 OR L.iFLBRetryTimer<>60 OR L.maxLbPartners<>16 OR L.mlbEicicOperMode<>2 OR L.nomNumPrbNonGbr<>10 OR L.ulCacSelection<>0 OR L.ulStaticCac<>100 OR L.idleLBCapThresh<>70 OR L.idleLBCelResWeight<>10 OR L.highLoadGbrDl<>70 OR L.highLoadNonGbrDl<>70 OR L.highLoadPdcch<>70 OR L.iFLBHighLoadGBRDL<>70 OR L.iFLBHighLoadNonGBRDL<>70 OR L.iFLBHighLoadPdcch<>70);
--
--
DROP TABLE IF EXISTS LNCEL_IDCONGEN_15_20;
CREATE TABLE LNCEL_IDCONGEN_15_20 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.PLMN_id, L.Prefijo, L.Sector, L.Banda, L.MRBTS_id,L.LNBTS_id,L.LNCEL_id,L.LNBTSname, L.cellReSelPrio,L.qrxLevMin,L.Threshold1,L.threshold3,L.threshold3a,L.Threshold2InterFreq,L.Threshold2InterFreqQCI1,L.threshold2a,L.threshold2aQci1,L.Threshold2Wcdma,L.Threshold2WcdmaQCI1,L.threshold4,L.a3offset,L.measQuantityUtra,L.dlChBw1
, 7 AS cellReSelPrio_N, -122 AS qrxLevMin_N, 90 AS Threshold1_N, 32 AS threshold3_N, 34 AS threshold3a_N, 25 AS Threshold2InterFreq_N, 25 AS Threshold2InterFreqQCI1_N, 26 AS threshold2a_N, 26 AS threshold2aQci1_N, 23 AS Threshold2Wcdma_N, 23 AS Threshold2WcdmaQCI1_N, 20 AS threshold4_N, 12 AS a3offset_N, 1 AS measQuantityUtra_N,CASE WHEN L.cellReSelPrio <> 7 THEN 1 ELSE 0 END AS cellReSelPrio_D,CASE WHEN L.qrxLevMin <> -122 THEN 1 ELSE 0 END AS qrxLevMin_D,CASE WHEN L.Threshold1 <> 90 THEN 1 ELSE 0 END AS Threshold1_D,CASE WHEN L.threshold3 <> 32 THEN 1 ELSE 0 END AS threshold3_D,CASE WHEN L.threshold3a <> 34 THEN 1 ELSE 0 END AS threshold3a_D,CASE WHEN L.Threshold2InterFreq <> 25 THEN 1 ELSE 0 END AS Threshold2InterFreq_D,CASE WHEN L.Threshold2InterFreqQCI1 <> 25 THEN 1 ELSE 0 END AS Threshold2InterFreqQCI1_D,CASE WHEN L.threshold2a <> 26 THEN 1 ELSE 0 END AS threshold2a_D,CASE WHEN L.threshold2aQci1 <> 26 THEN 1 ELSE 0 END AS threshold2aQci1_D,CASE WHEN L.Threshold2Wcdma <> 23 THEN 1 ELSE 0 END AS Threshold2Wcdma_D,CASE WHEN L.Threshold2WcdmaQCI1 <> 23 THEN 1 ELSE 0 END AS Threshold2WcdmaQCI1_D,CASE WHEN L.threshold4 <> 20 THEN 1 ELSE 0 END AS threshold4_D,CASE WHEN L.a3offset <> 12 THEN 1 ELSE 0 END AS a3offset_D,CASE WHEN L.measQuantityUtra <> 1 THEN 1 ELSE 0 END AS measQuantityUtra_D
FROM LNCEL_Full AS L
WHERE (L.dlChBw1=150 OR L.dlChBw1=200)  AND (L.cellReSelPrio<>7 OR L.qrxLevMin<>-122 OR L.Threshold1<>90 OR L.threshold3<>32 OR L.threshold3a<>34 OR L.Threshold2InterFreq<>25 OR L.Threshold2InterFreqQCI1<>25 OR L.threshold2a<>26 OR L.threshold2aQci1<>26 OR L.Threshold2Wcdma<>23 OR L.Threshold2WcdmaQCI1<>23 OR L.threshold4<>20 OR L.a3offset<>12 OR L.measQuantityUtra<>1);
--
--
DROP TABLE IF EXISTS LNCEL_IDCONGEN_10;
CREATE TABLE LNCEL_IDCONGEN_10 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.PLMN_id, L.Prefijo, L.Sector, L.Banda, L.MRBTS_id,L.LNBTS_id,L.LNCEL_id,L.LNBTSname, L.cellReSelPrio,L.qrxLevMin,L.Threshold1,L.threshold3,L.threshold3a,L.Threshold2InterFreq,L.Threshold2InterFreqQCI1,L.threshold2a,L.threshold2aQci1,L.Threshold2Wcdma,L.Threshold2WcdmaQCI1,L.threshold4,L.a3offset,L.measQuantityUtra,L.dlChBw1, 6 AS cellReSelPrio_N, -120 AS qrxLevMin_N, 90 AS Threshold1_N, 34 AS threshold3_N, 36 AS threshold3a_N, 27 AS Threshold2InterFreq_N, 27 AS Threshold2InterFreqQCI1_N, 28 AS threshold2a_N, 28 AS threshold2aQci1_N, 25 AS Threshold2Wcdma_N, 25 AS Threshold2WcdmaQCI1_N, 22 AS threshold4_N, 12 AS a3offset_N, 1 AS measQuantityUtra_N,CASE WHEN L.cellReSelPrio <> 6 THEN 1 ELSE 0 END AS cellReSelPrio_D,CASE WHEN L.qrxLevMin <> -120 THEN 1 ELSE 0 END AS qrxLevMin_D,CASE WHEN L.Threshold1 <> 90 THEN 1 ELSE 0 END AS Threshold1_D,CASE WHEN L.threshold3 <> 34 THEN 1 ELSE 0 END AS threshold3_D,CASE WHEN L.threshold3a <> 36 THEN 1 ELSE 0 END AS threshold3a_D,CASE WHEN L.Threshold2InterFreq <> 27 THEN 1 ELSE 0 END AS Threshold2InterFreq_D,CASE WHEN L.Threshold2InterFreqQCI1 <> 27 THEN 1 ELSE 0 END AS Threshold2InterFreqQCI1_D,CASE WHEN L.threshold2a <> 28 THEN 1 ELSE 0 END AS threshold2a_D,CASE WHEN L.threshold2aQci1 <> 28 THEN 1 ELSE 0 END AS threshold2aQci1_D,CASE WHEN L.Threshold2Wcdma <> 25 THEN 1 ELSE 0 END AS Threshold2Wcdma_D,CASE WHEN L.Threshold2WcdmaQCI1 <> 25 THEN 1 ELSE 0 END AS Threshold2WcdmaQCI1_D,CASE WHEN L.threshold4 <> 22 THEN 1 ELSE 0 END AS threshold4_D,CASE WHEN L.a3offset <> 12 THEN 1 ELSE 0 END AS a3offset_D,CASE WHEN L.measQuantityUtra <> 1 THEN 1 ELSE 0 END AS measQuantityUtra_D
FROM LNCEL_Full AS L
WHERE (L.dlChBw1=100)  AND (L.cellReSelPrio<>6 OR L.qrxLevMin<>-120 OR L.Threshold1<>90 OR L.threshold3<>34 OR L.threshold3a<>36 OR L.Threshold2InterFreq<>27 OR L.Threshold2InterFreqQCI1<>27 OR L.threshold2a<>28 OR L.threshold2aQci1<>28 OR L.Threshold2Wcdma<>25 OR L.Threshold2WcdmaQCI1<>25 OR L.threshold4<>22 OR L.a3offset<>12 OR L.measQuantityUtra<>1);
--
--
DROP TABLE IF EXISTS LNCEL_IDCONGEN_5;
CREATE TABLE LNCEL_IDCONGEN_5 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname, L.Cluster, L.Region, L.Depto, L.Mun, L.KeySector, L.PLMN_id, L.Prefijo, L.Sector, L.Banda, L.MRBTS_id,L.LNBTS_id,L.LNCEL_id,L.LNBTSname, L.cellReSelPrio,L.qrxLevMin,L.Threshold1,L.threshold3,L.threshold3a,L.Threshold2InterFreq,L.Threshold2InterFreqQCI1,L.threshold2a,L.threshold2aQci1,L.Threshold2Wcdma,L.Threshold2WcdmaQCI1,L.threshold4,L.a3offset,L.measQuantityUtra,L.dlChBw1
, 6 AS cellReSelPrio_N, -120 AS qrxLevMin_N, 90 AS Threshold1_N, 34 AS threshold3_N, 36 AS threshold3a_N, 27 AS Threshold2InterFreq_N, 27 AS Threshold2InterFreqQCI1_N, 28 AS threshold2a_N, 28 AS threshold2aQci1_N, 25 AS Threshold2Wcdma_N, 25 AS Threshold2WcdmaQCI1_N, 22 AS threshold4_N, 12 AS a3offset_N, 1 AS measQuantityUtra_N,CASE WHEN L.cellReSelPrio <> 6 THEN 1 ELSE 0 END AS cellReSelPrio_D,CASE WHEN L.qrxLevMin <> -120 THEN 1 ELSE 0 END AS qrxLevMin_D,CASE WHEN L.Threshold1 <> 90 THEN 1 ELSE 0 END AS Threshold1_D,CASE WHEN L.threshold3 <> 34 THEN 1 ELSE 0 END AS threshold3_D,CASE WHEN L.threshold3a <> 36 THEN 1 ELSE 0 END AS threshold3a_D,CASE WHEN L.Threshold2InterFreq <> 27 THEN 1 ELSE 0 END AS Threshold2InterFreq_D,CASE WHEN L.Threshold2InterFreqQCI1 <> 27 THEN 1 ELSE 0 END AS Threshold2InterFreqQCI1_D,CASE WHEN L.threshold2a <> 28 THEN 1 ELSE 0 END AS threshold2a_D,CASE WHEN L.threshold2aQci1 <> 28 THEN 1 ELSE 0 END AS threshold2aQci1_D,CASE WHEN L.Threshold2Wcdma <> 25 THEN 1 ELSE 0 END AS Threshold2Wcdma_D,CASE WHEN L.Threshold2WcdmaQCI1 <> 25 THEN 1 ELSE 0 END AS Threshold2WcdmaQCI1_D,CASE WHEN L.threshold4 <> 22 THEN 1 ELSE 0 END AS threshold4_D,CASE WHEN L.a3offset <> 12 THEN 1 ELSE 0 END AS a3offset_D,CASE WHEN L.measQuantityUtra <> 1 THEN 1 ELSE 0 END AS measQuantityUtra_D
FROM LNCEL_Full AS L
WHERE (L.dlChBw1=50)  AND (L.cellReSelPrio<>5 OR L.qrxLevMin<>-118 OR L.Threshold1<>90 OR L.threshold3<>36 OR L.threshold3a<>38 OR L.Threshold2InterFreq<>29 OR L.Threshold2InterFreqQCI1<>29 OR L.threshold2a<>30 OR L.threshold2aQci1<>30 OR L.Threshold2Wcdma<>27 OR L.Threshold2WcdmaQCI1<>27 OR L.threshold4<>24 OR L.a3offset<>12 OR L.measQuantityUtra<>1);
--
--
DROP TABLE IF EXISTS LNBTS_AUD2051;
CREATE TABLE LNBTS_AUD2051 ENGINE=MyISAM AS
SELECT DISTINCT
L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.actIdleLb, L.actMeasBasedIMLB, L.reportTimerIMLBA4, L.prohibitLBHOTimer
FROM LNBTS_Full AS L
WHERE (L.actIdleLb<>1 OR L.actMeasBasedIMLB<>1 OR L.reportTimerIMLBA4<>2000 OR L.prohibitLBHOTimer<>10);
--
--
--
--
DROP TABLE IF EXISTS LNMME_Param;
CREATE TABLE LNMME_Param ENGINE=MyISAM AS
SELECT DISTINCT
L.PLMN_id, L.Cluster, L.Region, L.Depto, L.Mun, L.MRBTS_id, L.LNBTS_id,
SUBSTRING_INDEX(N.distName,'LNMME-',-1) AS LNMME_id, L.LNBTSname, L.operationalState AS LNBTS_OpSt, N.version, N.administrativeState, N.ipAddrPrim, N.ipAddrSec, N.relMmeCap, N.s1LinkStatus, N.transportNwId, N.mmeRatSupport, N.id, N.mmeName, N.distName
FROM LNMME AS N LEFT JOIN LNBTS_FULL AS L ON (L.distName = SUBSTRING_INDEX(N.distName,'/LNMME-',1))
WHERE N.mmeName NOT LIKE 'cmm%' or N.mmeName IS NULL
;
--
--
DROP TABLE IF EXISTS LNMME_Audit;
CREATE TABLE LNMME_Audit ENGINE=MyISAM AS
SELECT
N.Cluster, N.Region, N.Depto, N.Mun,
N.PLMN_id,N.MRBTS_id,N.LNBTS_id, COUNT(N.LNMME_id) AS MME_Count, N.LNBTSname, N.LNBTS_OpSt, N.version, N.administrativeState
FROM LNMME_Param AS N
GROUP BY N.PLMN_id,N.MRBTS_id
;
--
--
DROP TABLE IF EXISTS LNMME_Miss;
CREATE TABLE LNMME_Miss ENGINE=MyISAM AS
SELECT DISTINCT
N.Cluster, N.Region, N.Depto, N.Mun,
N.PLMN_id,N.MRBTS_id,N.LNBTS_id, N.MME_Count, N.LNBTSname, N.LNBTS_OpSt, N.version, N.administrativeState
FROM LNMME_Audit AS N
WHERE N.MME_Count != 8 AND N.PLMN_id IS NOT NULL
ORDER BY N.MME_Count
;
--
--
--
--
DROP TABLE IF EXISTS ADJL_PARAM;
CREATE TABLE ADJL_PARAM ENGINE=MyISAM AS
SELECT DISTINCT
W.WCELName, W.WBTSName, W.Cluster, W.Region, W.Depto, W.Mun, W.UARFCN, W.Escenario_1900, W.RNCName, W.PLMN_id, W.RNC_id, W.WBTS_id, W.WCEL_id,
SUBSTRING_INDEX(A.distName,'ADJL-',-1) AS ADJL_id, A.AdjLMeasBw, A.AdjLSelectFreq, A.HopLIdentifier, A.name, A.AdjLEARFCN, CASE WHEN A.AdjLEARFCN BETWEEN 2750 and 3449 THEN 2600 ELSE (CASE WHEN A.AdjLEARFCN BETWEEN 600 and 1199 THEN 1900 ELSE (CASE WHEN A.AdjLEARFCN BETWEEN 9210 and 9659 THEN 700 ELSE (CASE WHEN A.AdjLEARFCN BETWEEN 2400 and 2649 THEN 850 ELSE (CASE WHEN A.AdjLEARFCN BETWEEN 1950 and 2399 THEN 2100 ELSE NULL END)END)END)END)END AS ADJL_Band, A.distName, A.id
FROM ADJL AS A LEFT JOIN wcel_param1 AS W ON (W.distName = SUBSTRING_INDEX(A.distName,'/ADJL-',1))
WHERE (SUBSTRING_INDEX(A.distName,'/RNC-',1) = 'PLMN-PLMN')
ORDER BY W.Region DESC, W.WCELName;
--
--
DROP TABLE IF EXISTS ADJL_GPARAM;
CREATE TABLE ADJL_GPARAM ENGINE=MyISAM AS
SELECT DISTINCT
W.BTSName, W.BCFName, W.Cluster, W.Region, W.Depto, W.Mun, W.BSCName, W.PLMN_id, W.BSC_id, W.BCF_id, W.BTS_id,
SUBSTRING_INDEX(A.distName,'ADJL-',-1) AS ADJL_id, 
A.lteAdjCellReselectUpperThr, A.lteAdjacentOperatorPool, A.barredLteAdjCellPattern, A.lteAdjCellMinBand, A.class, A.lteAdjCellMnc, A.version, A.lteAdjCellMinRxLevel, A.lteNCCRQualityThreshold, A.lteAdjCellReselectLowerThr, A.lteAdjCellPriority, A.lteAdjCellTac, A.barredLteAdjCellGroup, A.barredLteAdjCellPatternSense, A.pcid, A.lteAdjCellMcc, A.name, A.distName, A.id, A.earfcn, 
CASE WHEN A.earfcn BETWEEN 2750 and 3449 THEN 2600 ELSE (CASE WHEN A.earfcn BETWEEN 600 and 1199 THEN 1900 ELSE (CASE WHEN A.earfcn BETWEEN 9210 and 9659 THEN 700 ELSE (CASE WHEN A.earfcn BETWEEN 2400 and 2649 THEN 850 ELSE (CASE WHEN A.earfcn BETWEEN 1950 and 2399 THEN 2100 ELSE NULL END)END)END)END)END AS ADJL_Band
FROM ADJL AS A LEFT JOIN bts_param AS W ON (W.distName = SUBSTRING_INDEX(A.distName,'/ADJL-',1))
WHERE (SUBSTRING_INDEX(A.distName,'/BSC-',1) = 'PLMN-PLMN')
ORDER BY W.Region DESC, W.BTSName;
--
-- ADJL 1900 discrepancies
DROP TABLE IF EXISTS ADJL_DISC;
CREATE TABLE ADJL_DISC ENGINE=MyISAM AS
SELECT DISTINCT
A.WCELName, A.WBTSName, A.Cluster, A.Region, A.Depto, A.Mun, A.RNCName, A.PLMN_id, A.RNC_id, A.WBTS_id, A.WCEL_id, A.ADJL_id, A.UARFCN, A.AdjLEARFCN,
A.name, A.ADJL_Band, A.Escenario_1900
FROM ADJL_PARAM AS A
WHERE (A.Escenario_1900 = 'Alta' AND A.AdjLEARFCN=651) OR (A.Escenario_1900 = 'Baja' AND A.AdjLEARFCN=626);
--
--
DROP TABLE IF EXISTS ADJL_9560;
CREATE TABLE ADJL_9560 ENGINE=MyISAM AS
SELECT DISTINCT
A.WCELName, A.WBTSName, A.Cluster, A.Region, A.Depto, A.Mun, A.UARFCN, A.Escenario_1900, A.RNCName, A.PLMN_id, A.RNC_id, A.WBTS_id, A.WCEL_id,
A.ADJL_id, A.AdjLMeasBw, A.AdjLSelectFreq, A.HopLIdentifier, A.name, A.AdjLEARFCN, A.ADJL_Band, A.distName, A.id
FROM ADJL_PARAM AS A
WHERE A.AdjLEARFCN = 9560;
--
DROP TABLE IF EXISTS ADJL_626;
CREATE TABLE ADJL_626 ENGINE=MyISAM AS
SELECT DISTINCT
A.WCELName, A.WBTSName, A.Cluster, A.Region, A.Depto, A.Mun, A.UARFCN, A.Escenario_1900, A.RNCName, A.PLMN_id, A.RNC_id, A.WBTS_id, A.WCEL_id,
A.ADJL_id, A.AdjLMeasBw, A.AdjLSelectFreq, A.HopLIdentifier, A.name, A.AdjLEARFCN, A.ADJL_Band, A.distName, A.id
FROM ADJL_PARAM AS A
WHERE A.AdjLEARFCN = 626;
--
DROP TABLE IF EXISTS ADJL_651;
CREATE TABLE ADJL_651 ENGINE=MyISAM AS
SELECT DISTINCT
A.WCELName, A.WBTSName, A.Cluster, A.Region, A.Depto, A.Mun, A.UARFCN, A.Escenario_1900, A.RNCName, A.PLMN_id, A.RNC_id, A.WBTS_id, A.WCEL_id,
A.ADJL_id, A.AdjLMeasBw, A.AdjLSelectFreq, A.HopLIdentifier, A.name, A.AdjLEARFCN, A.ADJL_Band, A.distName, A.id
FROM ADJL_PARAM AS A
WHERE A.AdjLEARFCN = 651;
--
DROP TABLE IF EXISTS ADJL_3225;
CREATE TABLE ADJL_3225 ENGINE=MyISAM AS
SELECT DISTINCT
A.WCELName, A.WBTSName, A.Cluster, A.Region, A.Depto, A.Mun, A.UARFCN, A.Escenario_1900, A.RNCName, A.PLMN_id, A.RNC_id, A.WBTS_id, A.WCEL_id,
A.ADJL_id, A.AdjLMeasBw, A.AdjLSelectFreq, A.HopLIdentifier, A.name, A.AdjLEARFCN, A.ADJL_Band, A.distName, A.id
FROM ADJL_PARAM AS A
WHERE A.AdjLEARFCN = 3225;
--
DROP TABLE IF EXISTS ADJL_3075;
CREATE TABLE ADJL_3075 ENGINE=MyISAM AS
SELECT DISTINCT
A.WCELName, A.WBTSName, A.Cluster, A.Region, A.Depto, A.Mun, A.UARFCN, A.Escenario_1900, A.RNCName, A.PLMN_id, A.RNC_id, A.WBTS_id, A.WCEL_id,
A.ADJL_id, A.AdjLMeasBw, A.AdjLSelectFreq, A.HopLIdentifier, A.name, A.AdjLEARFCN, A.ADJL_Band, A.distName, A.id
FROM ADJL_PARAM AS A
WHERE A.AdjLEARFCN = 3075;
--
--
DROP TABLE IF EXISTS ADJL_G9560;
CREATE TABLE ADJL_G9560 ENGINE=MyISAM AS
SELECT DISTINCT
A.BTSName, A.BCFName, A.Cluster, A.Region, A.Depto, A.Mun, A.BSCName, A.PLMN_id, A.BSC_id, A.BCF_id, A.BTS_id,
A.ADJL_id, A.name, A.earfcn, A.ADJL_Band, A.distName, A.id
FROM ADJL_GPARAM AS A
WHERE A.earfcn = 9560;
--
DROP TABLE IF EXISTS ADJL_G626;
CREATE TABLE ADJL_G626 ENGINE=MyISAM AS
SELECT DISTINCT
A.BTSName, A.BCFName, A.Cluster, A.Region, A.Depto, A.Mun, A.BSCName, A.PLMN_id, A.BSC_id, A.BCF_id, A.BTS_id,
A.ADJL_id, A.name, A.earfcn, A.ADJL_Band, A.distName, A.id
FROM ADJL_GPARAM AS A
WHERE A.earfcn = 626;
--
DROP TABLE IF EXISTS ADJL_G651;
CREATE TABLE ADJL_G651 ENGINE=MyISAM AS
SELECT DISTINCT
A.BTSName, A.BCFName, A.Cluster, A.Region, A.Depto, A.Mun, A.BSCName, A.PLMN_id, A.BSC_id, A.BCF_id, A.BTS_id,
A.ADJL_id, A.name, A.earfcn, A.ADJL_Band, A.distName, A.id
FROM ADJL_GPARAM AS A
WHERE A.earfcn = 651;
--
DROP TABLE IF EXISTS ADJL_G3225;
CREATE TABLE ADJL_G3225 ENGINE=MyISAM AS
SELECT DISTINCT
A.BTSName, A.BCFName, A.Cluster, A.Region, A.Depto, A.Mun, A.BSCName, A.PLMN_id, A.BSC_id, A.BCF_id, A.BTS_id,
A.ADJL_id, A.name, A.earfcn, A.ADJL_Band, A.distName, A.id
FROM ADJL_GPARAM AS A
WHERE A.earfcn = 3225;
--
DROP TABLE IF EXISTS ADJL_G3075;
CREATE TABLE ADJL_G3075 ENGINE=MyISAM AS
SELECT DISTINCT
A.BTSName, A.BCFName, A.Cluster, A.Region, A.Depto, A.Mun, A.BSCName, A.PLMN_id, A.BSC_id, A.BCF_id, A.BTS_id,
A.ADJL_id, A.name, A.earfcn, A.ADJL_Band, A.distName, A.id
FROM ADJL_GPARAM AS A
WHERE A.earfcn = 3075;
--
--
--
DROP TABLE IF EXISTS ADJL_AUD9560V2;
CREATE TABLE ADJL_AUD9560v2 ENGINE=MyISAM AS
SELECT DISTINCT
W.WCELName, W.Cluster, W.Region, W.Depto, W.Mun, W.RNCName, W.RNC_id, W.WBTS_id, W.WCEL_id, A.AdjLEARFCN
FROM (WCEL_PARAM1 AS W INNER JOIN Sites_L9560 AS L ON (W.WBTSName = L.LNBTSname)) LEFT JOIN ADJL_9560 AS A ON (W.RNC_id=A.RNC_id AND W.WBTS_id=A.WBTS_id AND W.WCEL_id = A.WCEL_id)
;
--
DROP TABLE IF EXISTS ADJL_AUD9560;
CREATE TABLE ADJL_AUD9560 ENGINE=MyISAM AS
SELECT DISTINCT
W.WCELName, W.Cluster, W.Region, W.Depto, W.Mun, W.RNCName, W.RNC_id, W.WBTS_id, W.WCEL_id, A.AdjLEARFCN
FROM (WCEL_PARAM1 AS W INNER JOIN Sites_L9560 AS L ON (W.WBTSName = L.LNBTSname)) LEFT JOIN ADJL_AUD9560V2 AS A ON (A.RNC_id = W.RNC_id) AND (A.WBTS_id = W.WBTS_id) AND (A.WCEL_id = W.WCEL_id)
WHERE A.AdjLEARFCN IS NULL;
--
--
DROP TABLE IF EXISTS ADJL_AUD651V2;
CREATE TABLE ADJL_AUD651v2 ENGINE=MyISAM AS
SELECT DISTINCT
W.WCELName, W.Cluster, W.Region, W.Depto, W.Mun, W.RNCName, W.RNC_id, W.WBTS_id, W.WCEL_id, A.AdjLEARFCN
FROM (WCEL_PARAM1 AS W INNER JOIN Sites_L651 AS L ON (W.WBTSName = L.LNBTSname)) LEFT JOIN ADJL_651 AS A ON (W.RNC_id=A.RNC_id AND W.WBTS_id=A.WBTS_id AND W.WCEL_id = A.WCEL_id)
;
--
DROP TABLE IF EXISTS ADJL_AUD651;
CREATE TABLE ADJL_AUD651 ENGINE=MyISAM AS
SELECT DISTINCT
W.WCELName, W.Cluster, W.Region, W.Depto, W.Mun, W.RNCName, W.RNC_id, W.WBTS_id, W.WCEL_id, A.AdjLEARFCN
FROM (WCEL_PARAM1 AS W INNER JOIN Sites_L651 AS L ON (W.WBTSName = L.LNBTSname)) LEFT JOIN ADJL_AUD651V2 AS A ON (A.RNC_id = W.RNC_id) AND (A.WBTS_id = W.WBTS_id) AND (A.WCEL_id = W.WCEL_id)
WHERE A.AdjLEARFCN IS NULL AND W.WCEL_id IS NOT NULL;
;
--
--
DROP TABLE IF EXISTS ADJL_AUD626V2;
CREATE TABLE ADJL_AUD626v2 ENGINE=MyISAM AS
SELECT DISTINCT
W.WCELName, W.Cluster, W.Region, W.Depto, W.Mun, W.RNCName, W.RNC_id, W.WBTS_id, W.WCEL_id, A.AdjLEARFCN
FROM (WCEL_PARAM1 AS W INNER JOIN Sites_L626 AS L ON (W.WBTSName = L.LNBTSname)) LEFT JOIN ADJL_626 AS A ON (W.RNC_id=A.RNC_id AND W.WBTS_id=A.WBTS_id AND W.WCEL_id = A.WCEL_id)
;
--
DROP TABLE IF EXISTS ADJL_AUD626;
CREATE TABLE ADJL_AUD626 ENGINE=MyISAM AS
SELECT DISTINCT
W.WCELName, W.Cluster, W.Region, W.Depto, W.Mun, W.RNCName, W.RNC_id, W.WBTS_id, W.WCEL_id, A.AdjLEARFCN
FROM (WCEL_PARAM1 AS W INNER JOIN Sites_L626 AS L ON (W.WBTSName = L.LNBTSname)) LEFT JOIN ADJL_AUD626V2 AS A ON (A.RNC_id = W.RNC_id) AND (A.WBTS_id = W.WBTS_id) AND (A.WCEL_id = W.WCEL_id)
WHERE A.AdjLEARFCN IS NULL AND W.WCEL_id IS NOT NULL;
;
--
--
DROP TABLE IF EXISTS ADJL_AUD3225V2;
CREATE TABLE ADJL_AUD3225v2 ENGINE=MyISAM AS
SELECT DISTINCT
W.WCELName, W.Cluster, W.Region, W.Depto, W.Mun, W.RNCName, W.RNC_id, W.WBTS_id, W.WCEL_id, A.AdjLEARFCN
FROM (WCEL_PARAM1 AS W INNER JOIN Sites_L3225 AS L ON (W.WBTSName = L.LNBTSname)) LEFT JOIN ADJL_3225 AS A ON (W.RNC_id=A.RNC_id AND W.WBTS_id=A.WBTS_id AND W.WCEL_id = A.WCEL_id)
;
--
DROP TABLE IF EXISTS ADJL_AUD3225;
CREATE TABLE ADJL_AUD3225 ENGINE=MyISAM AS
SELECT DISTINCT
W.WCELName, W.Cluster, W.Region, W.Depto, W.Mun, W.RNCName, W.RNC_id, W.WBTS_id, W.WCEL_id, A.AdjLEARFCN
FROM (WCEL_PARAM1 AS W INNER JOIN Sites_L3225 AS L ON (W.WBTSName = L.LNBTSname)) LEFT JOIN ADJL_AUD3225V2 AS A ON (A.RNC_id = W.RNC_id) AND (A.WBTS_id = W.WBTS_id) AND (A.WCEL_id = W.WCEL_id)
WHERE A.AdjLEARFCN IS NULL AND W.WCEL_id IS NOT NULL;
;
--
--
DROP TABLE IF EXISTS ADJL_AUD3075V2;
CREATE TABLE ADJL_AUD3075v2 ENGINE=MyISAM AS
SELECT DISTINCT
W.WCELName, W.Cluster, W.Region, W.Depto, W.Mun, W.RNCName, W.RNC_id, W.WBTS_id, W.WCEL_id, A.AdjLEARFCN
FROM (WCEL_PARAM1 AS W INNER JOIN Sites_L3075 AS L ON (W.WBTSName = L.LNBTSname)) LEFT JOIN ADJL_3075 AS A ON (W.RNC_id=A.RNC_id AND W.WBTS_id=A.WBTS_id AND W.WCEL_id = A.WCEL_id)
;
--
DROP TABLE IF EXISTS ADJL_AUD3075;
CREATE TABLE ADJL_AUD3075 ENGINE=MyISAM AS
SELECT DISTINCT
W.WCELName, W.Cluster, W.Region, W.Depto, W.Mun, W.RNCName, W.RNC_id, W.WBTS_id, W.WCEL_id, A.AdjLEARFCN
FROM (WCEL_PARAM1 AS W INNER JOIN Sites_L3075 AS L ON (W.WBTSName = L.LNBTSname)) LEFT JOIN ADJL_AUD3075V2 AS A ON (A.RNC_id = W.RNC_id) AND (A.WBTS_id = W.WBTS_id) AND (A.WCEL_id = W.WCEL_id)
WHERE A.AdjLEARFCN IS NULL AND W.WCEL_id IS NOT NULL;
--
--
--
DROP TABLE IF EXISTS ADJL_AUD9560G2;
CREATE TABLE ADJL_AUD9560G2 ENGINE=MyISAM AS
SELECT
B.BTSname, B.Cluster, B.Region, B.Depto, B.Mun, B.PLMN_id, B.BSCname, B.bsc_Id, B.bcf_Id, B.bts_Id, A.earfcn, A.distName
FROM (BTS_PARAM AS B INNER JOIN Sites_L9560 AS L ON (B.BCFname = L.LNBTSname)) LEFT JOIN ADJL_G9560 AS A ON (B.distName = SUBSTRING_INDEX(A.distName,'/ADJL-',1))
;
--
--
DROP TABLE IF EXISTS ADJL_AUD9560G;
CREATE TABLE ADJL_AUD9560G ENGINE=MyISAM AS
SELECT DISTINCT
B.BTSname, B.Cluster, B.Region, B.Depto, B.Mun, B.BSCname, B.bsc_Id, B.bcf_Id, B.bts_Id, A.earfcn
FROM (BTS_PARAM AS B INNER JOIN Sites_L9560 AS L ON (B.BCFname = L.LNBTSname)) LEFT JOIN ADJL_AUD9560G2 AS A ON (B.distName = SUBSTRING_INDEX(A.distName,'/ADJL-',1))
WHERE A.earfcn IS NULL;
--
--
DROP TABLE IF EXISTS ADJL_AUD651G2;
CREATE TABLE ADJL_AUD651G2 ENGINE=MyISAM AS
SELECT
B.BTSname, B.Cluster, B.Region, B.Depto, B.Mun, B.PLMN_id, B.BSCname, B.bsc_Id, B.bcf_Id, B.bts_Id, A.earfcn, A.distName
FROM (BTS_PARAM AS B INNER JOIN Sites_L9560 AS L ON (B.BCFname = L.LNBTSname)) LEFT JOIN ADJL_G651 AS A ON (B.distName = SUBSTRING_INDEX(A.distName,'/ADJL-',1))
;
--
--
DROP TABLE IF EXISTS ADJL_AUD651G;
CREATE TABLE ADJL_AUD651G ENGINE=MyISAM AS
SELECT DISTINCT
B.BTSname, B.Cluster, B.Region, B.Depto, B.Mun, B.BSCname, B.bsc_Id, B.bcf_Id, B.bts_Id, A.earfcn
FROM (BTS_PARAM AS B INNER JOIN Sites_L651 AS L ON (B.BCFname = L.LNBTSname)) LEFT JOIN ADJL_AUD651G2 AS A ON (B.distName = SUBSTRING_INDEX(A.distName,'/ADJL-',1))
WHERE A.earfcn IS NULL;
--
--
DROP TABLE IF EXISTS ADJL_AUD626G2;
CREATE TABLE ADJL_AUD626G2 ENGINE=MyISAM AS
SELECT
B.BTSname, B.Cluster, B.Region, B.Depto, B.Mun, B.PLMN_id, B.BSCname, B.bsc_Id, B.bcf_Id, B.bts_Id, A.earfcn, A.distName
FROM (BTS_PARAM AS B INNER JOIN Sites_L9560 AS L ON (B.BCFname = L.LNBTSname)) LEFT JOIN ADJL_G626 AS A ON (B.distName = SUBSTRING_INDEX(A.distName,'/ADJL-',1))
;
--
--
DROP TABLE IF EXISTS ADJL_AUD626G;
CREATE TABLE ADJL_AUD626G ENGINE=MyISAM AS
SELECT DISTINCT
B.BTSname, B.Cluster, B.Region, B.Depto, B.Mun, B.BSCname, B.bsc_Id, B.bcf_Id, B.bts_Id, A.earfcn
FROM (BTS_PARAM AS B INNER JOIN Sites_L626 AS L ON (B.BCFname = L.LNBTSname)) LEFT JOIN ADJL_AUD626G2 AS A ON (B.distName = SUBSTRING_INDEX(A.distName,'/ADJL-',1))
WHERE A.earfcn IS NULL;
--
--
DROP TABLE IF EXISTS ADJL_AUD3225G2;
CREATE TABLE ADJL_AUD3225G2 ENGINE=MyISAM AS
SELECT
B.BTSname, B.Cluster, B.Region, B.Depto, B.Mun, B.PLMN_id, B.BSCname, B.bsc_Id, B.bcf_Id, B.bts_Id, A.earfcn, A.distName
FROM (BTS_PARAM AS B INNER JOIN Sites_L9560 AS L ON (B.BCFname = L.LNBTSname)) LEFT JOIN ADJL_G3225 AS A ON (B.distName = SUBSTRING_INDEX(A.distName,'/ADJL-',1))
;
--
--
DROP TABLE IF EXISTS ADJL_AUD3225G;
CREATE TABLE ADJL_AUD3225G ENGINE=MyISAM AS
SELECT DISTINCT
B.BTSname, B.Cluster, B.Region, B.Depto, B.Mun, B.BSCname, B.bsc_Id, B.bcf_Id, B.bts_Id, A.earfcn
FROM (BTS_PARAM AS B INNER JOIN Sites_L3225 AS L ON (B.BCFname = L.LNBTSname)) LEFT JOIN ADJL_AUD3225G2 AS A ON (B.distName = SUBSTRING_INDEX(A.distName,'/ADJL-',1))
WHERE A.earfcn IS NULL;
--
--
DROP TABLE IF EXISTS ADJL_AUD3075G2;
CREATE TABLE ADJL_AUD3075G2 ENGINE=MyISAM AS
SELECT
B.BTSname, B.Cluster, B.Region, B.Depto, B.Mun, B.PLMN_id, B.BSCname, B.bsc_Id, B.bcf_Id, B.bts_Id, A.earfcn, A.distName
FROM (BTS_PARAM AS B INNER JOIN Sites_L9560 AS L ON (B.BCFname = L.LNBTSname)) LEFT JOIN ADJL_G3075 AS A ON (B.distName = SUBSTRING_INDEX(A.distName,'/ADJL-',1))
;
--
--
DROP TABLE IF EXISTS ADJL_AUD3075G;
CREATE TABLE ADJL_AUD3075G ENGINE=MyISAM AS
SELECT DISTINCT
B.BTSname, B.Cluster, B.Region, B.Depto, B.Mun, B.BSCname, B.bsc_Id, B.bcf_Id, B.bts_Id, A.earfcn, A.distName
FROM (BTS_PARAM AS B INNER JOIN Sites_L3075 AS L ON (B.BCFname = L.LNBTSname)) LEFT JOIN ADJL_AUD3075G2 AS A ON (B.distName = SUBSTRING_INDEX(A.distName,'/ADJL-',1))
WHERE A.earfcn IS NULL;
--
--
--
--
--  LNREL network
--
DROP TABLE IF EXISTS LNREL_P;
CREATE TABLE LNREL_P ENGINE=MyISAM AS
SELECT
L.Prefijo, L.earfcnDL, L.LNCELname, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, 
SUBSTRING_INDEX(LN.distName,'LNREL-',-1) AS LNREL_id, LN.version, LN.mcc, LN.mnc, LN.amleAllowed, LN.cellIndOffNeigh, LN.cellIndOffNeighDelta, LN.ecgiAdjEnbId, LN.ecgiLcrId, LN.handoverAllowed, LN.nrControl, LN.nrStatus, LN.removeAllowed, LN.id AS SBTS_id, LN.name, LN.distName
FROM LNREL AS LN LEFT JOIN lte_param AS L ON (L.distName = SUBSTRING_INDEX(LN.distName,'/LNREL-',1))  
;
--
--
-- Includes distance, bearing and bearback
DROP TABLE IF EXISTS LNREL_PAR;
CREATE TABLE LNREL_PAR ENGINE=MyISAM AS
SELECT
LTE_Param.Cluster AS ClusterS, LTE_Param.Region AS RegionS, LTE_Param.Depto AS DeptoS, LTE_Param.Mun AS MunS,
LTE_Param_1.Cluster AS ClusterT, LTE_Param_1.Region AS RegionT, LTE_Param_1.Depto AS DeptoT, LTE_Param_1.Mun AS MunT,
LTE_Param.LNCELname,LTE_Param_1.LNCELname AS LNCELnameT,Baseline_LTE_1.LNB AS LNCELnameTB,LTE_Param.lcrId, LNREL_P.ecgiLcrId AS lcrIdT,LNREL_P.PLMN_id,LTE_Param_1.PLMN_id AS PLMN_idT, LNREL_P.Prefijo,LNREL_P.MRBTS_id,LNREL_P.LNBTS_id,LNREL_P.LNCEL_id,LNREL_P.LNREL_id, LNREL_P.version,LNREL_P.mcc,LNREL_P.mnc,LNREL_P.amleAllowed,LNREL_P.cellIndOffNeigh,LNREL_P.cellIndOffNeighDelta,LNREL_P.handoverAllowed,LNREL_P.nrControl,LNREL_P.nrStatus,LNREL_P.removeAllowed,LNREL_P.SBTS_id,LNREL_P.name, LTE_Param.LNBTSname,LTE_Param_1.LNBTSname AS LNBTSnameT,LNREL_P.ecgiAdjEnbId AS MRBTS_idT,LTE_Param_1.LNBTS_id AS LNBTS_idT,LTE_Param_1.LNCEL_id AS LNCEL_idT,LTE_Param.eutraCelId,LTE_Param.PowerBoost,LTE_Param.phyCellId AS PCI,LTE_Param.rootSeqIndex AS RSI,LTE_Param.tac,LTE_Param_1.eutraCelId AS eutraCelIdT,Baseline_LTE_1.`eutra Cell Id` AS eutraCelIdTb,LTE_Param_1.PowerBoost AS PowerBoostT,LTE_Param_1.phyCellId AS PCIT,LTE_Param_1.rootSeqIndex AS RSIT,LTE_Param_1.tac AS tacT,LTE_Param.Estado,LTE_Param_1.Estado AS EstadoT,Baseline_LTE_1.Vendor AS VendorT,CASE WHEN (LTE_Param.LNBTSname = LTE_Param_1.LNBTSname) THEN 1 ELSE 0 END AS SameSite, CASE WHEN (LTE_Param.Sector = LTE_Param_1.Sector) THEN 1 ELSE 0 END AS SameSector, LTE_Param.Banda AS BandaS, LTE_Param_1.Banda AS BandaT, LTE_Param.earfcnDL AS earfcnDLS, LTE_Param_1.earfcnDL AS earfcnDLT,
ROUND (12756273.2 * ASIN(LEAST(1 , SQRT(POWER( SIN(RADIANS(LTE_Param.latitud - baseline.latitud)/2) , 2) +
                                    COS(RADIANS(LTE_Param.latitud)) * COS(RADIANS(baseline.latitud)) * POWER ( SIN(RADIANS(LTE_Param.longitud - baseline.longitud)/2) , 2))))
         , 0) AS Distance,
ROUND(180/ACOS(-1)*ATAN2(
                          COS(RADIANS(baseline.latitud)) * SIN(RADIANS(baseline.longitud - LTE_Param.longitud)), COS(RADIANS(LTE_Param.latitud)) * SIN(RADIANS(baseline.latitud)) - SIN(RADIANS(LTE_Param.latitud)) * COS(RADIANS(baseline.latitud))*COS(RADIANS(baseline.longitud - LTE_Param.longitud))
                          )
       , 1) AS bearing,
ROUND(180/ACOS(-1)*ATAN2(
                         COS(RADIANS(LTE_Param.latitud)) * SIN(RADIANS(LTE_Param.longitud - baseline.longitud)), COS(RADIANS(baseline.latitud)) * SIN(RADIANS(LTE_Param.latitud)) - SIN(RADIANS(baseline.latitud)) * COS(RADIANS(LTE_Param.latitud))*COS(RADIANS(LTE_Param.longitud - baseline.longitud))
                         )
      , 1) AS bearback, Baseline_LTempF.Azimuth AS AzS, Baseline_LTempF_1.Azimuth AS AzT, CASE WHEN (Baseline_LTempF.Azimuth > 180) THEN (Baseline_LTempF.Azimuth -360) ELSE Baseline_LTempF.Azimuth END AS AzS1, CASE WHEN (Baseline_LTempF_1.Azimuth > 180) THEN (Baseline_LTempF_1.Azimuth -360) ELSE Baseline_LTempF_1.Azimuth END AS AzT1, BS.Zona
FROM ((((((LNREL_P LEFT JOIN LTE_Param ON (LNREL_P.lnCel_Id = LTE_Param.lnCel_Id) AND (LNREL_P.lnBts_Id = LTE_Param.lnBts_Id) AND (LNREL_P.mrbts_Id = LTE_Param.mrbts_Id)) LEFT JOIN LTE_Param AS LTE_Param_1 ON (LNREL_P.ecgiLcrId = LTE_Param_1.lcrId) AND (LNREL_P.ecgiAdjEnbId = LTE_Param_1.mrbts_Id)) LEFT JOIN baseline ON (LTE_Param_1.LNBTSname = baseline.Sitio)) LEFT JOIN Baseline_LTE AS Baseline_LTE_1 ON (LTE_Param_1.DistName = Baseline_LTE_1.DistName)) LEFT JOIN Baseline_LTempF ON (LTE_Param.LNCELname = Baseline_LTempF.LNB)) LEFT JOIN Baseline_LTempF AS Baseline_LTempF_1 ON (LTE_Param_1.LNCELname=Baseline_LTempF_1.LNB)) LEFT JOIN baseline AS BS ON (BS.Sitio = LTE_Param.LNBTSname);
--
--
-- angles positive, includes CoefCoOrient usefull eg. when theta 180 and az to bear 90 for each sector, if coef =0 sector are heading to the same area,
-- if 180 sectors are opposite oriented.
--
--
--
-- DROP TABLE IF EXISTS LNREL_DISC_700;
-- CREATE TABLE LNREL_DISC_700 ENGINE=MyISAM AS
-- SELECT DISTINCT
-- L.RegionS, L.DeptoS, L.Zona, L.RegionT, L.DeptoT, L.Prefijo, L.LNBTSname, L.LNBTSnameT, L.LNCELname, L.LNCELnameT, L.LNCELnameTB, L.PLMN_id,
-- L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNREL_id, L.amleAllowed, L.handoverAllowed, L.removeAllowed, L.cellIndOffNeigh, L.cellIndOffNeighDelta, L.SameSite, L.SameSector, L.BandaS, L.BandaT, L.Distance,
-- L.AzS ,L.AzT, L.ClusterS, L.MunS, L.ClusterT, L.MunT,
-- L.lcrId,L.lcrIdT,L.PLMN_idT,L.version,L.mcc,L.mnc,L.nrControl,L.nrStatus,L.SBTS_id,L.name,L.MRBTS_idT,L.LNBTS_idT,L.LNCEL_idT,L.eutraCelId,L.PowerBoost,L.PCI,L.RSI,L.tac,L.eutraCelIdT,L.eutraCelIdTb,L.PowerBoostT,L.PCIT,L.RSIT,L.tacT,L.Estado,L.EstadoT,L.VendorT,
-- CASE WHEN L.bearing < 0 THEN (360 + L.bearing) ELSE L.bearing END AS bearing,
-- CASE WHEN L.bearback < 0 THEN (360 + L.bearback) ELSE L.bearback END AS bearback,
-- ROUND(CASE WHEN(ABS(L.bearing - L.AzS1) > 180) THEN ABS(ABS(L.bearing - L.AzS1) - 360) ELSE (ABS(L.bearing - L.AzS1)) END +
-- CASE WHEN(ABS(L.bearback - L.AzT1) > 180) THEN ABS(ABS(L.bearback - L.AzT1) - 360) ELSE (ABS(L.bearback - L.AzT1)) END ,1) AS ThetaAng,
-- CASE WHEN (ABS(L.AzS1-L.AzT1)> 180) THEN ABS(ABS(L.AzS1-L.AzT1)-360) ELSE (ABS(L.AzS1-L.AzT1)) END AS CoefCoOrient
-- FROM LNREL_PAR AS L
-- WHERE (L.BandaS = 700 AND L.amleAllowed = 0 AND L.handoverAllowed = 0)
-- ;
--
-- DROP TABLE IF EXISTS LNREL_700;
-- CREATE TABLE LNREL_700 ENGINE=MyISAM AS
-- SELECT DISTINCT
-- L.RegionS, L.DeptoS, L.Zona, L.RegionT, L.DeptoT, L.Prefijo, L.LNBTSname, L.LNBTSnameT, L.LNCELname, L.LNCELnameT, L.LNCELnameTB, L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNREL_id, L.amleAllowed, L.handoverAllowed, L.removeAllowed, L.cellIndOffNeigh, L.cellIndOffNeighDelta, L.SameSite, L.SameSector, L.BandaS, L.BandaT, L.Distance,
-- CASE WHEN L.bearing < 0 THEN (360 + L.bearing) ELSE L.bearing END AS bearing,
-- CASE WHEN L.bearback < 0 THEN (360 + L.bearback) ELSE L.bearback END AS bearback,
-- ROUND(CASE WHEN(ABS(L.bearing - L.AzS1) > 180) THEN ABS(ABS(L.bearing - L.AzS1) - 360) ELSE (ABS(L.bearing - L.AzS1)) END +
-- CASE WHEN(ABS(L.bearback - L.AzT1) > 180) THEN ABS(ABS(L.bearback - L.AzT1) - 360) ELSE (ABS(L.bearback - L.AzT1)) END ,1) AS ThetaAng,
-- CASE WHEN (ABS(L.AzS1-L.AzT1)> 180) THEN ABS(ABS(L.AzS1-L.AzT1)-360) ELSE (ABS(L.AzS1-L.AzT1)) END AS CoefCoOrient,
-- L.AzS ,L.AzT, L.ClusterS, L.MunS, L.ClusterT, L.MunT, L.lcrId,L.lcrIdT,L.PLMN_idT,L.version,L.mcc,L.mnc,L.nrControl,L.nrStatus,L.SBTS_id,L.name,L.MRBTS_idT,L.LNBTS_idT,L.LNCEL_idT,L.eutraCelId,L.PowerBoost,L.PCI,L.RSI,L.tac,L.eutraCelIdT,L.eutraCelIdTb,L.PowerBoostT,L.PCIT,L.RSIT,L.tacT,L.Estado,L.EstadoT,L.VendorT
-- FROM LNREL_PAR AS L
-- WHERE L.BandaS = 700
-- ;
--
--
--  LNCEL cosite combinations
DROP TABLE IF EXISTS LNCEL_COSITE;
CREATE TABLE LNCEL_COSITE ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELname AS LNCELnameS, L1.LNCELname AS LNCELnameT, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.Banda AS BandaS, L1.Banda AS BandaT, L.earfcnDL AS earfcnDLS, L1.earfcnDL AS earfcnDLT, L.PLMN_id, L.MRBTS_id AS MRBTS_idS, L.LNBTS_id AS LNBTS_idS, L.LNCEL_id AS LNCEL_idS, L1.MRBTS_id AS MRBTS_idT, L1.LNBTS_id AS LNBTS_idT, L1.LNCEL_id AS LNCEL_idT, L.lcrId AS lcrIdS, L1.lcrId AS lcrIdT
FROM lte_param AS L LEFT JOIN lte_param AS L1 ON (L.LNBTSname = L1.LNBTSname)
WHERE L.LNCEL_id <> L1.LNCEL_id;
--
--
--  LNREL cosite missing
DROP TABLE IF EXISTS LNREL_COS_MISS;
CREATE TABLE LNREL_COS_MISS ENGINE=MyISAM AS
SELECT DISTINCT
L.LNCELnameS, L.LNCELnameT, L.LNBTSname, L.Cluster, L.Region, L.Depto, L.Mun, L.Prefijo, L.BandaS, L.BandaT, L.earfcnDLS, L.earfcnDLT, L.PLMN_id, L.MRBTS_idS, L.LNBTS_idS, L.LNCEL_idS, L.MRBTS_idT, L.LNBTS_idT, L.LNCEL_idT, R.LNREL_id
FROM LNCEL_COSITE AS L LEFT JOIN LNREL_P AS R ON ((R.ecgiLcrId = L.lcrIdT) AND (R.ecgiAdjEnbId = L.MRBTS_idT))
WHERE R.LNREL_id IS NULL
ORDER BY L.Region DESC, L.LNCELnameS;
--
--
DROP TABLE IF EXISTS LNREL_PART_UNDFND;
CREATE TABLE LNREL_PART_UNDFND ENGINE=MyISAM AS
SELECT DISTINCT
L.ClusterS, L.RegionS, L.DeptoS, L.MunS, L.ClusterT, L.RegionT, L.DeptoT, L.MunT,
L.LNCELname,L.LNCELnameT,L.LNCELnameTB,L.lcrId,L.lcrIdT,L.PLMN_id,L.PLMN_idT,L.Prefijo,L.MRBTS_id,L.LNBTS_id,L.LNCEL_id,L.LNREL_id,L.version,L.mcc,L.mnc, L.amleAllowed,L.cellIndOffNeigh,L.cellIndOffNeighDelta,L.handoverAllowed,L.nrControl,L.nrStatus,L.removeAllowed,L.SBTS_id,L.name,L.LNBTSname,L.LNBTSnameT,L.MRBTS_idT,L.LNBTS_idT,L.LNCEL_idT,L.eutraCelId,L.PowerBoost,L.PCI,L.RSI,L.tac,L.eutraCelIdT,L.eutraCelIdTb,L.PowerBoostT,L.PCIT,L.RSIT,L.tacT,L.Estado,L.EstadoT,L.VendorT,L.SameSite, L.SameSector,L.BandaS, L.BandaT, L.Distance,
CASE WHEN L.bearing < 0 THEN (360 + L.bearing) ELSE L.bearing END AS bearing,
CASE WHEN L.bearback < 0 THEN (360 + L.bearback) ELSE L.bearback END AS bearback,
ROUND(CASE WHEN(ABS(L.bearing - L.AzS1) > 180) THEN ABS(ABS(L.bearing - L.AzS1) - 360) ELSE (ABS(L.bearing - L.AzS1)) END + 
CASE WHEN(ABS(L.bearback - L.AzT1) > 180) THEN ABS(ABS(L.bearback - L.AzT1) - 360) ELSE (ABS(L.bearback - L.AzT1)) END ,1) AS ThetaAng,
CASE WHEN (ABS(L.AzS1-L.AzT1)> 180) THEN ABS(ABS(L.AzS1-L.AzT1)-360) ELSE (ABS(L.AzS1-L.AzT1)) END AS CoefCoOrient,
L.AzS ,L.AzT
FROM LNREL_PAR AS L
WHERE (L.amleAllowed=0 AND L.SameSector=1 AND L.SameSite=1 AND (CASE WHEN (ABS(L.AzS1-L.AzT1)> 180) THEN ABS(ABS(L.AzS1-L.AzT1)-360) ELSE (ABS(L.AzS1-L.AzT1)) END) < 30);
--
--
DROP TABLE IF EXISTS LNREL_PART_NOCOLOC;
CREATE TABLE LNREL_PART_NOCOLOC ENGINE=MyISAM AS
SELECT DISTINCT
L.ClusterS, L.RegionS, L.DeptoS, L.MunS, L.ClusterT, L.RegionT, L.DeptoT, L.MunT,
L.LNCELname,L.LNCELnameT,L.LNCELnameTB,L.lcrId,L.lcrIdT,L.PLMN_id,L.PLMN_idT,L.Prefijo,L.MRBTS_id,L.LNBTS_id,L.LNCEL_id,L.LNREL_id,L.version,L.mcc,L.mnc, L.amleAllowed,L.cellIndOffNeigh,L.cellIndOffNeighDelta,L.handoverAllowed,L.nrControl,L.nrStatus,L.removeAllowed,L.SBTS_id,L.name,L.LNBTSname,L.LNBTSnameT,L.MRBTS_idT,L.LNBTS_idT,L.LNCEL_idT,L.eutraCelId,L.PowerBoost,L.PCI,L.RSI,L.tac,L.eutraCelIdT,L.eutraCelIdTb,L.PowerBoostT,L.PCIT,L.RSIT,L.tacT,L.Estado,L.EstadoT,L.VendorT,L.SameSite, L.SameSector,L.BandaS, L.BandaT, L.Distance,
CASE WHEN L.bearing < 0 THEN (360 + L.bearing) ELSE L.bearing END AS bearing,
CASE WHEN L.bearback < 0 THEN (360 + L.bearback) ELSE L.bearback END AS bearback, 
ROUND(CASE WHEN(ABS(L.bearing - L.AzS1) > 180) THEN ABS(ABS(L.bearing - L.AzS1) - 360) ELSE (ABS(L.bearing - L.AzS1)) END + 
CASE WHEN(ABS(L.bearback - L.AzT1) > 180) THEN ABS(ABS(L.bearback - L.AzT1) - 360) ELSE (ABS(L.bearback - L.AzT1)) END ,1) AS ThetaAng,
CASE WHEN (ABS(L.AzS1-L.AzT1)> 180) THEN ABS(ABS(L.AzS1-L.AzT1)-360) ELSE (ABS(L.AzS1-L.AzT1)) END AS CoefCoOrient,
L.AzS ,L.AzT
FROM LNREL_PAR AS L
WHERE (L.amleAllowed=1 AND L.SameSector=1 AND L.SameSite=1 AND (CASE WHEN (ABS(L.AzS1-L.AzT1)> 180) THEN ABS(ABS(L.AzS1-L.AzT1)-360) ELSE (ABS(L.AzS1-L.AzT1)) END) >30);
--
--
DROP TABLE IF EXISTS LNREL_PART_NOCOSITE;
CREATE TABLE LNREL_PART_NOCOSITE ENGINE=MyISAM AS
SELECT DISTINCT
L.ClusterS, L.RegionS, L.DeptoS, L.MunS, L.ClusterT, L.RegionT, L.DeptoT, L.MunT,
L.LNCELname,L.LNCELnameT,L.LNCELnameTB,L.lcrId,L.lcrIdT,L.PLMN_id,L.PLMN_idT,L.Prefijo,L.MRBTS_id,L.LNBTS_id,L.LNCEL_id,L.LNREL_id,L.version,L.mcc,L.mnc, L.amleAllowed,L.cellIndOffNeigh,L.cellIndOffNeighDelta,L.handoverAllowed,L.nrControl,L.nrStatus,L.removeAllowed,L.SBTS_id,L.name,L.LNBTSname,L.LNBTSnameT,L.MRBTS_idT,L.LNBTS_idT,L.LNCEL_idT,L.eutraCelId,L.PowerBoost,L.PCI,L.RSI,L.tac,L.eutraCelIdT,L.eutraCelIdTb,L.PowerBoostT,L.PCIT,L.RSIT,L.tacT,L.Estado,L.EstadoT,L.VendorT,L.SameSite, L.SameSector,L.BandaS, L.BandaT, L.Distance,
CASE WHEN L.bearing < 0 THEN (360 + L.bearing) ELSE L.bearing END AS bearing,
CASE WHEN L.bearback < 0 THEN (360 + L.bearback) ELSE L.bearback END AS bearback, 
ROUND(CASE WHEN(ABS(L.bearing - L.AzS1) > 180) THEN ABS(ABS(L.bearing - L.AzS1) - 360) ELSE (ABS(L.bearing - L.AzS1)) END + 
CASE WHEN(ABS(L.bearback - L.AzT1) > 180) THEN ABS(ABS(L.bearback - L.AzT1) - 360) ELSE (ABS(L.bearback - L.AzT1)) END ,1) AS ThetaAng,
CASE WHEN (ABS(L.AzS1-L.AzT1)> 180) THEN ABS(ABS(L.AzS1-L.AzT1)-360) ELSE (ABS(L.AzS1-L.AzT1)) END AS CoefCoOrient,
L.AzS ,L.AzT
FROM LNREL_PAR AS L
WHERE (L.amleAllowed=1 AND L.SameSite=0);
--
--
DROP TABLE IF EXISTS LNREL_PART_NOCOSCTR;
CREATE TABLE LNREL_PART_NOCOSCTR ENGINE=MyISAM AS
SELECT DISTINCT
L.ClusterS, L.RegionS, L.DeptoS, L.MunS, L.ClusterT, L.RegionT, L.DeptoT, L.MunT,
L.LNCELname,L.LNCELnameT,L.LNCELnameTB,L.lcrId,L.lcrIdT,L.PLMN_id,L.PLMN_idT,L.Prefijo,L.MRBTS_id,L.LNBTS_id,L.LNCEL_id,L.LNREL_id,L.version,L.mcc,L.mnc, L.amleAllowed,L.cellIndOffNeigh,L.cellIndOffNeighDelta,L.handoverAllowed,L.nrControl,L.nrStatus,L.removeAllowed,L.SBTS_id,L.name,L.LNBTSname,L.LNBTSnameT,L.MRBTS_idT,L.LNBTS_idT,L.LNCEL_idT,L.eutraCelId,L.PowerBoost,L.PCI,L.RSI,L.tac,L.eutraCelIdT,L.eutraCelIdTb,L.PowerBoostT,L.PCIT,L.RSIT,L.tacT,L.Estado,L.EstadoT,L.VendorT,L.SameSite, L.SameSector,L.BandaS, L.BandaT, L.Distance,
CASE WHEN L.bearing < 0 THEN (360 + L.bearing) ELSE L.bearing END AS bearing,
CASE WHEN L.bearback < 0 THEN (360 + L.bearback) ELSE L.bearback END AS bearback, 
ROUND(CASE WHEN(ABS(L.bearing - L.AzS1) > 180) THEN ABS(ABS(L.bearing - L.AzS1) - 360) ELSE (ABS(L.bearing - L.AzS1)) END + 
CASE WHEN(ABS(L.bearback - L.AzT1) > 180) THEN ABS(ABS(L.bearback - L.AzT1) - 360) ELSE (ABS(L.bearback - L.AzT1)) END ,1) AS ThetaAng,
CASE WHEN (ABS(L.AzS1-L.AzT1)> 180) THEN ABS(ABS(L.AzS1-L.AzT1)-360) ELSE (ABS(L.AzS1-L.AzT1)) END AS CoefCoOrient,
L.AzS ,L.AzT
FROM LNREL_PAR AS L
WHERE (L.amleAllowed=1 AND L.SameSector=0 AND L.SameSite=1);
--
--
--
--
-- PCI_RSI queries
--
-- PCI audit. coPCI and distance
--
--
DROP TABLE IF EXISTS PCI_DistT;
CREATE TABLE PCI_DistT ENGINE=MyISAM AS
SELECT DISTINCT
CONCAT(L.LNCELname,L.phyCellId) AS Key1, L.LNCELname AS LNCELSRC, L1.LNCELname AS LNCELTGT, L.phyCellId, CASE WHEN (L.LNBTSName = L1.LNBTSName) THEN 1 ELSE 0 END AS SameSite, CASE WHEN (L.earfcnDL = L1.earfcnDL) THEN 1 ELSE 0 END AS SameCarrier, L.MRBTS_Id, L.LNBTS_Id, L.LNCEL_Id, CONCAT(L.LNBTSName,substr(L.LNCELname,-1,1)) AS KeySecS, L1.MRBTS_Id AS MRBTSIdT, L1.LNBTS_Id AS LNBTSIdT, L1.LNCEL_Id AS LNCEL_IdT, CONCAT(L1.LNBTSName,substr(L1.LNCELname,-1,1)) AS KeySecT, L.earfcnDL AS EARFCN_SRC, L1.earfcnDL AS EARFCN_TGT, L.LNBTSName AS LNBTSSrc, L1.LNBTSName AS LNBTSTgt,
L.LNBTS_OpSt AS LNBTS_OpStS, L.LNCEL_AdSt AS LNCEL_AdStS ,L.LNCEL_OpSt AS LNCEL_OpStS,
L1.LNBTS_OpSt AS LNBTS_OpStT, L1.LNCEL_AdSt AS LNCEL_AdStT ,L1.LNCEL_OpSt AS LNCEL_OpStT
FROM lte_param AS L INNER JOIN lte_param AS L1 ON (L.phyCellId = L1.phyCellId)
WHERE (((L.PLMN_id = 'rc01' AND L1.PLMN_id = 'rc01') OR (L.PLMN_id = 'rc02' AND L1.PLMN_id = 'rc02') OR (L.PLMN_id = 'rc07' AND L1.PLMN_id = 'rc07') OR (L.PLMN_id = 'rc08' AND L1.PLMN_id = 'rc08') OR (L.PLMN_id = 'rc09' AND L1.PLMN_id = 'rc09') OR (L.PLMN_id = 'rc10' AND L1.PLMN_id = 'rc10')) AND (CASE WHEN (L.earfcnDL = L1.earfcnDL) THEN 1 ELSE 0 END) = 1 AND (CASE WHEN (L.LNCELname = L1.LNCELname) THEN 1 ELSE 0 END) = 0);
--
--
DROP TABLE IF EXISTS PCI_DistT1;
CREATE TABLE PCI_DistT1 ENGINE=MyISAM AS
SELECT
L.Key1, L.LNCELSRC, L.LNCELTGT, L.phyCellId, L.SameSite, L.SameCarrier, L.MRBTS_Id, L.LNBTS_Id, L.LNCEL_Id, L.KeySecS, L.MRBTSIdT, L.LNBTSIdT, L.LNCEL_IdT, L.KeySecT, L.EARFCN_SRC, L.EARFCN_TGT, L.LNBTSSrc, L.LNBTSTgt, L.LNBTS_OpStS, L.LNCEL_AdStS ,L.LNCEL_OpStS, L.LNBTS_OpStT, L.LNCEL_AdStT , L.LNCEL_OpStT,
ROUND (12756273.2 * ASIN(LEAST(1 , SQRT(POWER( SIN(RADIANS(B.Latitud - B1.Latitud)/2) , 2) + COS(RADIANS(B.Latitud)) * COS(RADIANS(B1.Latitud)) * POWER ( SIN(RADIANS(B.Longitud - B1.Longitud)/2) , 2)))) , 0) AS Distance
FROM (pci_distt AS L INNER JOIN baseLine AS B ON (L.LNBTSSrc = B.Sitio)) INNER JOIN baseline AS B1 ON (L.LNBTSTgt = B1.Sitio)
;
--
-- shortest key distance
--
DROP TABLE IF EXISTS PCI_DistMin;
CREATE TABLE PCI_DistMin ENGINE=MyISAM AS
SELECT
PCI_DistT1.Key1, Min(PCI_DistT1.Distance) AS MinOfDistancia
FROM PCI_DistT1
GROUP BY PCI_DistT1.Key1;
--
--
-- Query final asociando parametros de vecino mas cercano
--
DROP TABLE IF EXISTS PCI_DistF;
CREATE TABLE PCI_DistF ENGINE=MyISAM AS
SELECT
concat(baseline.Market,'-',baseline.`Localidad (CRC)`) AS ClusterS, CONCAT(baseline_1.Market,'-',baseline_1.`Localidad (CRC)`) AS ClusterT, baseline.Region AS RegionS, baseline.Departamento AS DeptoS, baseline.Municipio AS MunS, baseline_1.Region AS RegionT, baseline_1.Departamento AS DeptoT, baseline_1.Municipio AS MunT, L.Key1,L.LNCELSRC,L.LNCELTGT,L.phyCellId,L.Distance,
ROUND (180/ACOS(-1)*ATAN2(
                          COS(RADIANS(baseline_1.latitud)) * SIN(RADIANS(baseline_1.longitud - baseline.longitud)), COS(RADIANS(baseline.latitud)) * SIN(RADIANS(baseline_1.latitud)) - SIN(RADIANS(baseline.latitud)) * COS(RADIANS(baseline_1.latitud))*COS(RADIANS(baseline_1.longitud - baseline.longitud))
                          )
       , 1) AS bearing,
ROUND (180/ACOS(-1)*ATAN2(
                         COS(RADIANS(baseline.latitud)) * SIN(RADIANS(baseline.longitud - baseline_1.longitud)), COS(RADIANS(baseline_1.latitud)) * SIN(RADIANS(baseline.latitud)) - SIN(RADIANS(baseline_1.latitud)) * COS(RADIANS(baseline.latitud))*COS(RADIANS(baseline.longitud - baseline_1.longitud))
                         )
      , 1) AS bearback, Baseline_LTE.Azimuth AS AzS, Baseline_LTE_1.Azimuth AS AzT, CASE WHEN (Baseline_LTE.Azimuth > 180) THEN (Baseline_LTE.Azimuth -360) ELSE Baseline_LTE.Azimuth END AS AzS1, CASE WHEN (Baseline_LTE_1.Azimuth > 180) THEN (Baseline_LTE_1.Azimuth -360) ELSE Baseline_LTE_1.Azimuth END AS AzT1,
L.SameSite,L.SameCarrier,
L.LNBTS_OpStS, L.LNCEL_AdStS ,L.LNCEL_OpStS, L.LNBTS_OpStT, L.LNCEL_AdStT ,L.LNCEL_OpStT,
L.MRBTS_id,L.LNBTS_id,L.LNCEL_id,L.KeySecS,L.MRBTSIdT,L.LNBTSIdT,L.LNCEL_IdT,L.KeySecT,L.EARFCN_SRC,L.EARFCN_TGT,L.LNBTSSrc,L.LNBTSTgt
FROM ((((PCI_DistT1 AS L INNER JOIN PCI_DistMin AS D ON (L.Distance = D.MinOfDistancia) AND (L.Key1 = D.Key1)) LEFT JOIN baseline ON (L.LNBTSSrc = baseline.Sitio)) LEFT JOIN baseLine as baseLine_1 ON (L.LNBTSTgt = baseLine_1.Sitio)) LEFT JOIN Baseline_LTE ON (L.LNCELSRC = Baseline_LTE.LNB)) LEFT JOIN Baseline_LTE AS Baseline_LTE_1 ON (L.LNCELTGT = Baseline_LTE_1.LNB)
ORDER BY L.Distance;
--
--
--
DROP TABLE IF EXISTS PCI_DistF1;
CREATE TABLE PCI_DistF1 ENGINE=MyISAM AS
SELECT DISTINCT
PCI_DistF.ClusterS,PCI_DistF.ClusterT,PCI_DistF.RegionS,PCI_DistF.DeptoS,PCI_DistF.MunS,PCI_DistF.RegionT,PCI_DistF.DeptoT,PCI_DistF.MunT,PCI_DistF.LNCELSRC,PCI_DistF.LNCELTGT,PCI_DistF.phyCellId,PCI_DistF.Distance,
CASE WHEN PCI_DistF.bearing < 0 THEN (360 + PCI_DistF.bearing) ELSE PCI_DistF.bearing END AS bearing, CASE WHEN PCI_DistF.bearback < 0 THEN (360 + PCI_DistF.bearback) ELSE PCI_DistF.bearback END AS bearback,
ROUND(
CASE WHEN(ABS(PCI_DistF.bearing - PCI_DistF.AzS1) > 180) THEN ABS(ABS(PCI_DistF.bearing - PCI_DistF.AzS1) - 360) ELSE (ABS(PCI_DistF.bearing - PCI_DistF.AzS1)) END
+
CASE WHEN(ABS(PCI_DistF.bearback - PCI_DistF.AzT1) > 180) THEN ABS(ABS(PCI_DistF.bearback - PCI_DistF.AzT1) - 360) ELSE (ABS(PCI_DistF.bearback - PCI_DistF.AzT1)) END
,1) AS ThetaAng,
CASE WHEN (ABS(PCI_DistF.AzS1-PCI_DistF.AzT1)> 180) THEN ABS(ABS(PCI_DistF.AzS1-PCI_DistF.AzT1)-360) ELSE (ABS(PCI_DistF.AzS1-PCI_DistF.AzT1)) END AS CoefCoOrient,
PCI_DistF.AzS,PCI_DistF.AzT,PCI_DistF.SameSite,PCI_DistF.SameCarrier,PCI_DistF.LNBTS_OpStS,PCI_DistF.LNCEL_AdStS,PCI_DistF.LNCEL_OpStS,PCI_DistF.LNBTS_OpStT,PCI_DistF.LNCEL_AdStT,PCI_DistF.LNCEL_OpStT,PCI_DistF.MRBTS_id,PCI_DistF.LNBTS_id,PCI_DistF.LNCEL_id,PCI_DistF.KeySecS,PCI_DistF.MRBTSIdT,PCI_DistF.LNBTSIdT,PCI_DistF.LNCEL_IdT,PCI_DistF.KeySecT,PCI_DistF.EARFCN_SRC,PCI_DistF.EARFCN_TGT,PCI_DistF.LNBTSSrc,PCI_DistF.LNBTSTgt
FROM PCI_DistF
WHERE(PCI_DistF.Distance < 15000 AND PCI_DistF.LNCELTGT IS NOT NULL);
DROP TABLE IF EXISTS PCI_DistT;
--
--
--
-- RSI audit. coRSI and distance
--
DROP TABLE IF EXISTS RSI_DistT1;
CREATE TABLE RSI_DistT1 ENGINE=MyISAM AS
SELECT DISTINCT
CONCAT(L.LNCELname,L.phyCellId) AS Key1, L.LNCELname AS LNCELSRC, L1.LNCELname AS LNCELTGT, L.rootSeqIndex, CASE WHEN (L.LNBTSName = L1.LNBTSName) THEN 1 ELSE 0 END AS SameSite, CASE WHEN (L.earfcnDL = L1.earfcnDL) THEN 1 ELSE 0 END AS SameCarrier, L.MRBTS_Id, L.LNBTS_Id, L.LNCEL_Id, CONCAT(L.LNBTSName,substr(L.LNCELname,-1,1)) AS KeySecS, L1.MRBTS_Id AS MRBTSIdT, L1.LNBTS_Id AS LNBTSIdT, L1.LNCEL_Id AS LNCEL_IdT, CONCAT(L1.LNBTSName,substr(L1.LNCELname,-1,1)) AS KeySecT, L.earfcnDL AS EARFCN_SRC, L1.earfcnDL AS EARFCN_TGT, L.LNBTSName AS LNBTSSrc, L1.LNBTSName AS LNBTSTgt,
L.LNBTS_OpSt AS LNBTS_OpStS, L.LNCEL_AdSt AS LNCEL_AdStS ,L.LNCEL_OpSt AS LNCEL_OpStS,
L1.LNBTS_OpSt AS LNBTS_OpStT, L1.LNCEL_AdSt AS LNCEL_AdStT ,L1.LNCEL_OpSt AS LNCEL_OpStT
FROM lte_param AS L INNER JOIN lte_param AS L1 ON (L.rootSeqIndex = L1.rootSeqIndex)
WHERE (((L.PLMN_id = 'rc01' AND L1.PLMN_id = 'rc01') OR (L.PLMN_id = 'rc02' AND L1.PLMN_id = 'rc02') OR (L.PLMN_id = 'rc07' AND L1.PLMN_id = 'rc07') OR (L.PLMN_id = 'rc08' AND L1.PLMN_id = 'rc08') OR (L.PLMN_id = 'rc09' AND L1.PLMN_id = 'rc09') OR (L.PLMN_id = 'rc10' AND L1.PLMN_id = 'rc10')) AND L.rootSeqIndex IS NOT NULL AND L1.rootSeqIndex IS NOT NULL AND (CASE WHEN (L.earfcnDL = L1.earfcnDL) THEN 1 ELSE 0 END) = 1 AND (CASE WHEN (L.LNCELname = L1.LNCELname) THEN 1 ELSE 0 END) = 0);
--
--
DROP TABLE IF EXISTS RSI_DistT;
CREATE TABLE RSI_DistT ENGINE=MyISAM AS
SELECT
L.Key1, L.LNCELSRC, L.LNCELTGT, L.rootSeqIndex, L.SameSite, L.SameCarrier, L.MRBTS_Id, L.LNBTS_Id, L.LNCEL_Id, L.KeySecS, L.MRBTSIdT, L.LNBTSIdT, L.LNCEL_IdT, L.KeySecT, L.EARFCN_SRC, L.EARFCN_TGT, L.LNBTSSrc, L.LNBTSTgt, L.LNBTS_OpStS, L.LNCEL_AdStS ,L.LNCEL_OpStS, L.LNBTS_OpStT, L.LNCEL_AdStT , L.LNCEL_OpStT,
ROUND (12756273.2 * ASIN(LEAST(1 , SQRT(POWER( SIN(RADIANS(B.Latitud - B1.Latitud)/2) , 2) + COS(RADIANS(B.Latitud)) * COS(RADIANS(B1.Latitud)) * POWER ( SIN(RADIANS(B.Longitud - B1.Longitud)/2) , 2)))) , 0) AS Distance
FROM (RSI_DistT1 AS L INNER JOIN baseLine AS B ON (L.LNBTSSrc = B.Sitio)) INNER JOIN baseline AS B1 ON (L.LNBTSTgt = B1.Sitio);
--
--
-- shortest key distance
--
DROP TABLE IF EXISTS RSI_DistMin;
CREATE TABLE RSI_DistMin ENGINE=MyISAM AS
SELECT
RSI_DistT.Key1, Min(RSI_DistT.Distance) AS MinOfDistancia
FROM RSI_DistT
GROUP BY RSI_DistT.Key1;
--
--
--
-- final Query closet neighbor info
--
DROP TABLE IF EXISTS RSI_DistF;
CREATE TABLE RSI_DistF ENGINE=MyISAM AS
SELECT
concat(baseline.Market,'-',baseline.`Localidad (CRC)`) AS ClusterS, CONCAT(baseline_1.Market,'-',baseline_1.`Localidad (CRC)`) AS ClusterT, baseline.Region AS RegionS, baseline.Departamento AS DeptoS, baseline.Municipio AS MunS, baseline_1.Region AS RegionT, baseline_1.Departamento AS DeptoT, baseline_1.Municipio AS MunT, RSI_DistT.Key1,RSI_DistT.LNCELSRC,RSI_DistT.LNCELTGT,RSI_DistT.rootSeqIndex,RSI_DistT.Distance,
ROUND (180/ACOS(-1)*ATAN2(
                          COS(RADIANS(baseline_1.latitud)) * SIN(RADIANS(baseline_1.longitud - baseline.longitud)), COS(RADIANS(baseline.latitud)) * SIN(RADIANS(baseline_1.latitud)) - SIN(RADIANS(baseline.latitud)) * COS(RADIANS(baseline_1.latitud))*COS(RADIANS(baseline_1.longitud - baseline.longitud))
                          )
       , 1) AS bearing,
ROUND (180/ACOS(-1)*ATAN2(
                         COS(RADIANS(baseline.latitud)) * SIN(RADIANS(baseline.longitud - baseline_1.longitud)), COS(RADIANS(baseline_1.latitud)) * SIN(RADIANS(baseline.latitud)) - SIN(RADIANS(baseline_1.latitud)) * COS(RADIANS(baseline.latitud))*COS(RADIANS(baseline.longitud - baseline_1.longitud))
                         )
      , 1) AS bearback, Baseline_LTE.Azimuth AS AzS, Baseline_LTE_1.Azimuth AS AzT, CASE WHEN (Baseline_LTE.Azimuth > 180) THEN (Baseline_LTE.Azimuth -360) ELSE Baseline_LTE.Azimuth END AS AzS1, CASE WHEN (Baseline_LTE_1.Azimuth > 180) THEN (Baseline_LTE_1.Azimuth -360) ELSE Baseline_LTE_1.Azimuth END AS AzT1,
RSI_DistT.SameSite,RSI_DistT.SameCarrier,
RSI_DistT.LNBTS_OpStS, RSI_DistT.LNCEL_AdStS ,RSI_DistT.LNCEL_OpStS, RSI_DistT.LNBTS_OpStT, RSI_DistT.LNCEL_AdStT ,RSI_DistT.LNCEL_OpStT,
RSI_DistT.MRBTS_id,RSI_DistT.LNBTS_id,RSI_DistT.LNCEL_id,RSI_DistT.KeySecS,RSI_DistT.MRBTSIdT,RSI_DistT.LNBTSIdT,RSI_DistT.LNCEL_IdT,RSI_DistT.KeySecT,RSI_DistT.EARFCN_SRC,RSI_DistT.EARFCN_TGT,RSI_DistT.LNBTSSrc,RSI_DistT.LNBTSTgt
FROM ((((RSI_DistT INNER JOIN RSI_DistMin ON (RSI_DistT.Distance = RSI_DistMin.MinOfDistancia) AND (RSI_DistT.Key1 = RSI_DistMin.Key1)) LEFT JOIN baseline ON (RSI_DistT.LNBTSSrc = baseline.Sitio)) LEFT JOIN baseLine as baseLine_1 ON (RSI_DistT.LNBTSTgt = baseLine_1.Sitio)) LEFT JOIN Baseline_LTE ON (RSI_DistT.LNCELSRC = Baseline_LTE.LNB)) LEFT JOIN Baseline_LTE AS Baseline_LTE_1 ON (RSI_DistT.LNCELTGT = Baseline_LTE_1.LNB)
ORDER BY RSI_DistT.Distance;
--
DROP TABLE IF EXISTS RSI_DistT;
DROP TABLE IF EXISTS RSI_DistT1;
--
--
DROP TABLE IF EXISTS RSI_DistF1;
CREATE TABLE RSI_DistF1 ENGINE=MyISAM AS
SELECT DISTINCT
RSI_DistF.ClusterS,RSI_DistF.ClusterT,RSI_DistF.RegionS,RSI_DistF.DeptoS,RSI_DistF.MunS,RSI_DistF.RegionT,RSI_DistF.DeptoT,RSI_DistF.MunT,RSI_DistF.LNCELSRC,RSI_DistF.LNCELTGT,RSI_DistF.rootSeqIndex,RSI_DistF.Distance,
CASE WHEN RSI_DistF.bearing < 0 THEN (360 + RSI_DistF.bearing) ELSE RSI_DistF.bearing END AS bearing, CASE WHEN RSI_DistF.bearback < 0 THEN (360 + RSI_DistF.bearback) ELSE RSI_DistF.bearback END AS bearback,
ROUND(
CASE WHEN(ABS(RSI_DistF.bearing - RSI_DistF.AzS1) > 180) THEN ABS(ABS(RSI_DistF.bearing - RSI_DistF.AzS1) - 360) ELSE (ABS(RSI_DistF.bearing - RSI_DistF.AzS1)) END
+
CASE WHEN(ABS(RSI_DistF.bearback - RSI_DistF.AzT1) > 180) THEN ABS(ABS(RSI_DistF.bearback - RSI_DistF.AzT1) - 360) ELSE (ABS(RSI_DistF.bearback - RSI_DistF.AzT1)) END
,1) AS ThetaAng,
CASE WHEN (ABS(RSI_DistF.AzS1-RSI_DistF.AzT1)> 180) THEN ABS(ABS(RSI_DistF.AzS1-RSI_DistF.AzT1)-360) ELSE (ABS(RSI_DistF.AzS1-RSI_DistF.AzT1)) END AS CoefCoOrient,
RSI_DistF.AzS,RSI_DistF.AzT,RSI_DistF.SameSite,RSI_DistF.SameCarrier,RSI_DistF.LNBTS_OpStS,RSI_DistF.LNCEL_AdStS,RSI_DistF.LNCEL_OpStS,RSI_DistF.LNBTS_OpStT,RSI_DistF.LNCEL_AdStT,RSI_DistF.LNCEL_OpStT,RSI_DistF.MRBTS_id,RSI_DistF.LNBTS_id,RSI_DistF.LNCEL_id,RSI_DistF.KeySecS,RSI_DistF.MRBTSIdT,RSI_DistF.LNBTSIdT,RSI_DistF.LNCEL_IdT,RSI_DistF.KeySecT,RSI_DistF.EARFCN_SRC,RSI_DistF.EARFCN_TGT,RSI_DistF.LNBTSSrc,RSI_DistF.LNBTSTgt
FROM RSI_DistF
WHERE(RSI_DistF.Distance < 10000 AND RSI_DistF.LNCELTGT IS NOT NULL)
;
--
--
--
--
-- End of daily info
--
--
-- 700 Sites
--
DROP TABLE IF EXISTS Sites_L9560_031;
CREATE TABLE Sites_L9560_031 ENGINE=MyISAM AS
SELECT DISTINCT
L.PLMN_id, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNBTSname, L.earfcnDL, L.LNCELname
FROM LTE_Param AS L INNER JOIN Sites_L9560 AS R ON L.LNBTSname = R.LNBTSname
;
--
--
-- 031 Intra parameters
--
--
DROP TABLE IF EXISTS T031_PAR_INTRA;
CREATE TABLE T031_PAR_INTRA ENGINE=MyISAM AS
SELECT
L.PLMN_Id, R.`Source LNCEL name` AS LNCELS, L1.LNCELname AS LNCELT, L.Cluster AS ClusterS, L1.Cluster AS ClusterT,L.MRBTS_Id,L.LNBTS_Id,L.LNCEL_Id, R.`Source MRBTS name`,R.`Source LNBTS name`,(R.eci_id - (R.eci_id % 256))/256 AS MRBTS_IdT,(R.eci_id - (R.eci_id % 256))/256 AS LNBTS_IdT,L1.LNCEL_Id AS LNCEL_IdT, (R.eci_id % 256) AS LcrIdT,L1.LNBTSname AS LNBTST, 1*R.mcc_id AS MCC,1*R.mnc_id AS MNC,1*R.eci_id AS ECI,
1*R.`Adj Intra eNB HO PREP SR` AS IntraPrepSR, 1*R.`Adj Intra eNB HO SR` AS IntraSR, 1*R.`Intra eNB HO attempts per neighbor cell` AS IntraATT, 1*R.`Intra eNB NB HO  cancel rate` AS IntraCancelR, 1*R.`Adj Inter eNB HO Prep SR` AS InterPrepSR, 1*R.`Adj Inter eNB HO SR` AS InterSR, 1*R.`Number of Inter eNB Handover atts` AS InterATT, 1*R.`Inter eNB NB HO fail ratio` AS InterFR, 1*R.`IFHO LB SR neigh` AS LBSR, 1*R.`Number of inter-frequency load balancing handover atts` AS LBATT, 1*R.`Late HO R` AS LateHO, 1*R.`Early HO type 1 R` AS EarlyHOtype1, 1*R.`Early HO type 2 R` AS EarlyHOtype2, ROUND (12756273.2 * ASIN(LEAST(1 , SQRT(POWER( SIN(RADIANS(B.Latitud - B1.Latitud)/2) , 2) + COS(RADIANS(B.Latitud)) * COS(RADIANS(B1.Latitud)) * POWER ( SIN(RADIANS(B.Longitud - B1.Longitud)/2) , 2)))) , 0) AS Distance
FROM (((RSLTE031 AS R INNER JOIN lte_param AS L ON (R.`Source LNCEL name` = L.LNCELname)) LEFT JOIN lte_param AS L1 ON ((R.eci_id - (R.eci_id % 256))/256 = L1.LNBTS_Id) AND ((R.eci_id % 256) = L1.LcrId)) LEFT JOIN baseLine AS B ON (L.LNBTSname = B.Sitio)) LEFT JOIN baseline AS B1 ON (L1.LNBTSname = B1.Sitio)
WHERE R.`Adj Intra eNB HO PREP SR` IS NOT NULL;
--
--
-- 031 Inter parameters
--
DROP TABLE IF EXISTS T031_PAR_INTER;
CREATE TABLE T031_PAR_INTER ENGINE=MyISAM AS
SELECT
L.PLMN_Id, R.`Source LNCEL name` AS LNCELS, L1.LNCELname AS LNCELT, L.Cluster AS ClusterS, L1.Cluster AS ClusterT,L.MRBTS_Id,L.LNBTS_Id,L.LNCEL_Id, R.`Source MRBTS name`,R.`Source LNBTS name`,(R.eci_id - (R.eci_id % 256))/256 AS MRBTS_IdT,(R.eci_id - (R.eci_id % 256))/256 AS LNBTS_IdT,L1.LNCEL_Id AS LNCEL_IdT, (R.eci_id % 256) AS LcrIdT,L1.LNBTSname AS LNBTST, 1*R.mcc_id AS MCC,1*R.mnc_id AS MNC,1*R.eci_id AS ECI,
1*R.`Adj Intra eNB HO PREP SR` AS IntraPrepSR, 1*R.`Adj Intra eNB HO SR` AS IntraSR, 1*R.`Intra eNB HO attempts per neighbor cell` AS IntraATT, 1*R.`Intra eNB NB HO  cancel rate` AS IntraCancelR, 1*R.`Adj Inter eNB HO Prep SR` AS InterPrepSR, 1*R.`Adj Inter eNB HO SR` AS InterSR, 1*R.`Number of Inter eNB Handover atts` AS InterATT, 1*R.`Inter eNB NB HO fail ratio` AS InterFR, 1*R.`IFHO LB SR neigh` AS LBSR, 1*R.`Number of inter-frequency load balancing handover atts` AS LBATT, 1*R.`Late HO R` AS LateHO, 1*R.`Early HO type 1 R` AS EarlyHOtype1, 1*R.`Early HO type 2 R` AS EarlyHOtype2, ROUND (12756273.2 * ASIN(LEAST(1 , SQRT(POWER( SIN(RADIANS(B.Latitud - B1.Latitud)/2) , 2) + COS(RADIANS(B.Latitud)) * COS(RADIANS(B1.Latitud)) * POWER ( SIN(RADIANS(B.Longitud - B1.Longitud)/2) , 2)))) , 0) AS Distance
FROM (((RSLTE031 AS R INNER JOIN lte_param AS L ON (R.`Source LNCEL name` = L.LNCELname)) LEFT JOIN lte_param AS L1 ON ((R.eci_id - (R.eci_id % 256))/256 = L1.LNBTS_Id) AND ((R.eci_id % 256) = L1.LcrId)) LEFT JOIN baseLine AS B ON (L.LNBTSname = B.Sitio)) LEFT JOIN baseline AS B1 ON (L1.LNBTSname = B1.Sitio)
WHERE R.`Adj Inter eNB HO Prep SR` IS NOT NULL;
--
--
-- INTRA LNREL cross
--
DROP TABLE IF EXISTS T031_PAR_LNREL_RA;
CREATE TABLE T031_PAR_LNREL_RA ENGINE=MyISAM AS
SELECT DISTINCT
I.PLMN_Id, I.LNCELS, I.LNCELT, I.IntraPrepSR, I.IntraSR, I.IntraATT, I.IntraCancelR, I.InterPrepSR, I.InterSR, I.InterATT, I.InterFR, I.LBSR ,I.LBATT, I.LateHO, I.EarlyHOtype1, I.EarlyHOtype2, I.Distance, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNREL_id, L.amleAllowed, L.handoverAllowed, L.removeAllowed, L.cellIndOffNeigh, L.cellIndOffNeighDelta, L.nrControl,L.nrStatus, L.SameSite, L.SameSector, L.BandaS, L.BandaT,
CASE WHEN L.bearing < 0 THEN (360 + L.bearing) ELSE L.bearing END AS bearing,
CASE WHEN L.bearback < 0 THEN (360 + L.bearback) ELSE L.bearback END AS bearback,
ROUND(CASE WHEN(ABS(L.bearing - L.AzS1) > 180) THEN ABS(ABS(L.bearing - L.AzS1) - 360) ELSE (ABS(L.bearing - L.AzS1)) END +
CASE WHEN(ABS(L.bearback - L.AzT1) > 180) THEN ABS(ABS(L.bearback - L.AzT1) - 360) ELSE (ABS(L.bearback - L.AzT1)) END ,1) AS ThetaAng,
CASE WHEN (ABS(L.AzS1-L.AzT1)> 180) THEN ABS(ABS(L.AzS1-L.AzT1)-360) ELSE (ABS(L.AzS1-L.AzT1)) END AS CoefCoOrient,
L.AzS,L.AzT, L.RegionS, L.DeptoS, L.MunS, L.RegionT, L.DeptoT, L.MunT, L.LNCELname, L.LNCELnameT, L.LNCELnameTB, L.lcrId, L.PLMN_idT, L.Prefijo, I.ClusterS,I.ClusterT,I.`Source MRBTS name`,I.`Source LNBTS name`, I.MRBTS_IdT, I.LNBTS_IdT, I.LNCEL_IdT, I.LcrIdT, I.LNBTST, I.MCC, I.MNC, I.ECI, L.version,
L.SBTS_id,L.name,L.LNBTSname,L.LNBTSnameT,L.eutraCelId,L.PowerBoost,L.PCI,L.RSI,L.tac,L.eutraCelIdT,L.eutraCelIdTb,L.PowerBoostT,L.PCIT,L.RSIT,L.tacT,L.Estado,L.EstadoT,L.VendorT
FROM T031_PAR_INTRA AS I LEFT JOIN LNREL_PAR AS L ON (I.LNCELS = L.LNCELname) AND (I.LNBTS_IdT = L.LNBTS_idT) AND (I.LcrIdT = L.lcrIdT)
;
--
--
-- Inter LNREL cross
--
DROP TABLE IF EXISTS T031_PAR_LNREL_ER1;
CREATE TABLE T031_PAR_LNREL_ER1 ENGINE=MyISAM AS
SELECT DISTINCT
I.PLMN_Id, I.LNCELS, I.LNCELT, I.IntraPrepSR, I.IntraSR, I.IntraATT, I.IntraCancelR, I.InterPrepSR, I.InterSR, I.InterATT, I.InterFR, I.LBSR ,I.LBATT, I.LateHO, I.EarlyHOtype1, I.EarlyHOtype2, I.Distance, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNREL_id, L.amleAllowed, L.handoverAllowed, L.removeAllowed, L.cellIndOffNeigh, L.cellIndOffNeighDelta, L.nrControl,L.nrStatus, L.SameSite, L.SameSector, L.BandaS, L.BandaT,
CASE WHEN L.bearing < 0 THEN (360 + L.bearing) ELSE L.bearing END AS bearing,
CASE WHEN L.bearback < 0 THEN (360 + L.bearback) ELSE L.bearback END AS bearback,
ROUND(CASE WHEN(ABS(L.bearing - L.AzS1) > 180) THEN ABS(ABS(L.bearing - L.AzS1) - 360) ELSE (ABS(L.bearing - L.AzS1)) END +
CASE WHEN(ABS(L.bearback - L.AzT1) > 180) THEN ABS(ABS(L.bearback - L.AzT1) - 360) ELSE (ABS(L.bearback - L.AzT1)) END ,1) AS ThetaAng,
CASE WHEN (ABS(L.AzS1-L.AzT1)> 180) THEN ABS(ABS(L.AzS1-L.AzT1)-360) ELSE (ABS(L.AzS1-L.AzT1)) END AS CoefCoOrient,
L.AzS,L.AzT, L.RegionS, L.DeptoS, L.MunS, L.RegionT, L.DeptoT, L.MunT, L.LNCELname, L.LNCELnameT, L.LNCELnameTB, L.lcrId, L.PLMN_idT, L.Prefijo, I.ClusterS,I.ClusterT,I.`Source MRBTS name`,I.`Source LNBTS name`, I.MRBTS_IdT, I.LNBTS_IdT, I.LNCEL_IdT, I.LcrIdT, I.LNBTST, I.MCC, I.MNC, I.ECI, L.version,
L.SBTS_id,L.name,L.LNBTSname,L.LNBTSnameT,L.eutraCelId,L.PowerBoost,L.PCI,L.RSI,L.tac,L.eutraCelIdT,L.eutraCelIdTb,L.PowerBoostT,L.PCIT,L.RSIT,L.tacT,L.Estado,L.EstadoT,L.VendorT
FROM T031_PAR_INTER AS I LEFT JOIN LNREL_PAR AS L ON (I.LNCELS = L.LNCELname) AND (I.LNBTS_IdT = L.LNBTS_idT) AND (I.LcrIdT = L.lcrIdT)
WHERE I.PLMN_Id = 'rc01';
--
--
DROP TABLE IF EXISTS T031_PAR_LNREL_ER2;
CREATE TABLE T031_PAR_LNREL_ER2 ENGINE=MyISAM AS
SELECT DISTINCT
I.PLMN_Id, I.LNCELS, I.LNCELT, I.IntraPrepSR, I.IntraSR, I.IntraATT, I.IntraCancelR, I.InterPrepSR, I.InterSR, I.InterATT, I.InterFR, I.LBSR ,I.LBATT, I.LateHO, I.EarlyHOtype1, I.EarlyHOtype2, I.Distance, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNREL_id, L.amleAllowed, L.handoverAllowed, L.removeAllowed, L.cellIndOffNeigh, L.cellIndOffNeighDelta, L.nrControl,L.nrStatus, L.SameSite, L.SameSector, L.BandaS, L.BandaT,
CASE WHEN L.bearing < 0 THEN (360 + L.bearing) ELSE L.bearing END AS bearing,
CASE WHEN L.bearback < 0 THEN (360 + L.bearback) ELSE L.bearback END AS bearback,
ROUND(CASE WHEN(ABS(L.bearing - L.AzS1) > 180) THEN ABS(ABS(L.bearing - L.AzS1) - 360) ELSE (ABS(L.bearing - L.AzS1)) END +
CASE WHEN(ABS(L.bearback - L.AzT1) > 180) THEN ABS(ABS(L.bearback - L.AzT1) - 360) ELSE (ABS(L.bearback - L.AzT1)) END ,1) AS ThetaAng,
CASE WHEN (ABS(L.AzS1-L.AzT1)> 180) THEN ABS(ABS(L.AzS1-L.AzT1)-360) ELSE (ABS(L.AzS1-L.AzT1)) END AS CoefCoOrient,
L.AzS,L.AzT, L.RegionS, L.DeptoS, L.MunS, L.RegionT, L.DeptoT, L.MunT, L.LNCELname, L.LNCELnameT, L.LNCELnameTB, L.lcrId, L.PLMN_idT, L.Prefijo, I.ClusterS,I.ClusterT,I.`Source MRBTS name`,I.`Source LNBTS name`, I.MRBTS_IdT, I.LNBTS_IdT, I.LNCEL_IdT, I.LcrIdT, I.LNBTST, I.MCC, I.MNC, I.ECI, L.version,
L.SBTS_id,L.name,L.LNBTSname,L.LNBTSnameT,L.eutraCelId,L.PowerBoost,L.PCI,L.RSI,L.tac,L.eutraCelIdT,L.eutraCelIdTb,L.PowerBoostT,L.PCIT,L.RSIT,L.tacT,L.Estado,L.EstadoT,L.VendorT
FROM T031_PAR_INTER AS I LEFT JOIN LNREL_PAR AS L ON (I.LNCELS = L.LNCELname) AND (I.LNBTS_IdT = L.LNBTS_idT) AND (I.LcrIdT = L.lcrIdT)
WHERE I.PLMN_Id = 'rc02';
--
--
DROP TABLE IF EXISTS T031_PAR_LNREL_ER7;
CREATE TABLE T031_PAR_LNREL_ER7 ENGINE=MyISAM AS
SELECT DISTINCT
I.PLMN_Id, I.LNCELS, I.LNCELT, I.IntraPrepSR, I.IntraSR, I.IntraATT, I.IntraCancelR, I.InterPrepSR, I.InterSR, I.InterATT, I.InterFR, I.LBSR ,I.LBATT, I.LateHO, I.EarlyHOtype1, I.EarlyHOtype2, I.Distance, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNREL_id, L.amleAllowed, L.handoverAllowed, L.removeAllowed, L.cellIndOffNeigh, L.cellIndOffNeighDelta, L.nrControl,L.nrStatus, L.SameSite, L.SameSector, L.BandaS, L.BandaT,
CASE WHEN L.bearing < 0 THEN (360 + L.bearing) ELSE L.bearing END AS bearing,
CASE WHEN L.bearback < 0 THEN (360 + L.bearback) ELSE L.bearback END AS bearback,
ROUND(CASE WHEN(ABS(L.bearing - L.AzS1) > 180) THEN ABS(ABS(L.bearing - L.AzS1) - 360) ELSE (ABS(L.bearing - L.AzS1)) END +
CASE WHEN(ABS(L.bearback - L.AzT1) > 180) THEN ABS(ABS(L.bearback - L.AzT1) - 360) ELSE (ABS(L.bearback - L.AzT1)) END ,1) AS ThetaAng,
CASE WHEN (ABS(L.AzS1-L.AzT1)> 180) THEN ABS(ABS(L.AzS1-L.AzT1)-360) ELSE (ABS(L.AzS1-L.AzT1)) END AS CoefCoOrient,
L.AzS,L.AzT, L.RegionS, L.DeptoS, L.MunS, L.RegionT, L.DeptoT, L.MunT, L.LNCELname, L.LNCELnameT, L.LNCELnameTB, L.lcrId, L.PLMN_idT, L.Prefijo, I.ClusterS,I.ClusterT,I.`Source MRBTS name`,I.`Source LNBTS name`, I.MRBTS_IdT, I.LNBTS_IdT, I.LNCEL_IdT, I.LcrIdT, I.LNBTST, I.MCC, I.MNC, I.ECI, L.version,
L.SBTS_id,L.name,L.LNBTSname,L.LNBTSnameT,L.eutraCelId,L.PowerBoost,L.PCI,L.RSI,L.tac,L.eutraCelIdT,L.eutraCelIdTb,L.PowerBoostT,L.PCIT,L.RSIT,L.tacT,L.Estado,L.EstadoT,L.VendorT
FROM T031_PAR_INTER AS I LEFT JOIN LNREL_PAR AS L ON (I.LNCELS = L.LNCELname) AND (I.LNBTS_IdT = L.LNBTS_idT) AND (I.LcrIdT = L.lcrIdT)
WHERE I.PLMN_Id = 'rc07';
--
--
DROP TABLE IF EXISTS T031_PAR_LNREL_ER8;
CREATE TABLE T031_PAR_LNREL_ER8 ENGINE=MyISAM AS
SELECT DISTINCT
I.PLMN_Id, I.LNCELS, I.LNCELT, I.IntraPrepSR, I.IntraSR, I.IntraATT, I.IntraCancelR, I.InterPrepSR, I.InterSR, I.InterATT, I.InterFR, I.LBSR ,I.LBATT, I.LateHO, I.EarlyHOtype1, I.EarlyHOtype2, I.Distance, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNREL_id, L.amleAllowed, L.handoverAllowed, L.removeAllowed, L.cellIndOffNeigh, L.cellIndOffNeighDelta, L.nrControl,L.nrStatus, L.SameSite, L.SameSector, L.BandaS, L.BandaT,
CASE WHEN L.bearing < 0 THEN (360 + L.bearing) ELSE L.bearing END AS bearing,
CASE WHEN L.bearback < 0 THEN (360 + L.bearback) ELSE L.bearback END AS bearback,
ROUND(CASE WHEN(ABS(L.bearing - L.AzS1) > 180) THEN ABS(ABS(L.bearing - L.AzS1) - 360) ELSE (ABS(L.bearing - L.AzS1)) END +
CASE WHEN(ABS(L.bearback - L.AzT1) > 180) THEN ABS(ABS(L.bearback - L.AzT1) - 360) ELSE (ABS(L.bearback - L.AzT1)) END ,1) AS ThetaAng,
CASE WHEN (ABS(L.AzS1-L.AzT1)> 180) THEN ABS(ABS(L.AzS1-L.AzT1)-360) ELSE (ABS(L.AzS1-L.AzT1)) END AS CoefCoOrient,
L.AzS,L.AzT, L.RegionS, L.DeptoS, L.MunS, L.RegionT, L.DeptoT, L.MunT, L.LNCELname, L.LNCELnameT, L.LNCELnameTB, L.lcrId, L.PLMN_idT, L.Prefijo, I.ClusterS,I.ClusterT,I.`Source MRBTS name`,I.`Source LNBTS name`, I.MRBTS_IdT, I.LNBTS_IdT, I.LNCEL_IdT, I.LcrIdT, I.LNBTST, I.MCC, I.MNC, I.ECI, L.version,
L.SBTS_id,L.name,L.LNBTSname,L.LNBTSnameT,L.eutraCelId,L.PowerBoost,L.PCI,L.RSI,L.tac,L.eutraCelIdT,L.eutraCelIdTb,L.PowerBoostT,L.PCIT,L.RSIT,L.tacT,L.Estado,L.EstadoT,L.VendorT
FROM T031_PAR_INTER AS I LEFT JOIN LNREL_PAR AS L ON (I.LNCELS = L.LNCELname) AND (I.LNBTS_IdT = L.LNBTS_idT) AND (I.LcrIdT = L.lcrIdT)
WHERE I.PLMN_Id = 'rc08';
--
--
DROP TABLE IF EXISTS T031_PAR_LNREL_ER9;
CREATE TABLE T031_PAR_LNREL_ER9 ENGINE=MyISAM AS
SELECT DISTINCT
I.PLMN_Id, I.LNCELS, I.LNCELT, I.IntraPrepSR, I.IntraSR, I.IntraATT, I.IntraCancelR, I.InterPrepSR, I.InterSR, I.InterATT, I.InterFR, I.LBSR ,I.LBATT, I.LateHO, I.EarlyHOtype1, I.EarlyHOtype2, I.Distance, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNREL_id, L.amleAllowed, L.handoverAllowed, L.removeAllowed, L.cellIndOffNeigh, L.cellIndOffNeighDelta, L.nrControl,L.nrStatus, L.SameSite, L.SameSector, L.BandaS, L.BandaT,
CASE WHEN L.bearing < 0 THEN (360 + L.bearing) ELSE L.bearing END AS bearing,
CASE WHEN L.bearback < 0 THEN (360 + L.bearback) ELSE L.bearback END AS bearback,
ROUND(CASE WHEN(ABS(L.bearing - L.AzS1) > 180) THEN ABS(ABS(L.bearing - L.AzS1) - 360) ELSE (ABS(L.bearing - L.AzS1)) END +
CASE WHEN(ABS(L.bearback - L.AzT1) > 180) THEN ABS(ABS(L.bearback - L.AzT1) - 360) ELSE (ABS(L.bearback - L.AzT1)) END ,1) AS ThetaAng,
CASE WHEN (ABS(L.AzS1-L.AzT1)> 180) THEN ABS(ABS(L.AzS1-L.AzT1)-360) ELSE (ABS(L.AzS1-L.AzT1)) END AS CoefCoOrient,
L.AzS,L.AzT, L.RegionS, L.DeptoS, L.MunS, L.RegionT, L.DeptoT, L.MunT, L.LNCELname, L.LNCELnameT, L.LNCELnameTB, L.lcrId, L.PLMN_idT, L.Prefijo, I.ClusterS,I.ClusterT,I.`Source MRBTS name`,I.`Source LNBTS name`, I.MRBTS_IdT, I.LNBTS_IdT, I.LNCEL_IdT, I.LcrIdT, I.LNBTST, I.MCC, I.MNC, I.ECI, L.version,
L.SBTS_id,L.name,L.LNBTSname,L.LNBTSnameT,L.eutraCelId,L.PowerBoost,L.PCI,L.RSI,L.tac,L.eutraCelIdT,L.eutraCelIdTb,L.PowerBoostT,L.PCIT,L.RSIT,L.tacT,L.Estado,L.EstadoT,L.VendorT
FROM T031_PAR_INTER AS I LEFT JOIN LNREL_PAR AS L ON (I.LNCELS = L.LNCELname) AND (I.LNBTS_IdT = L.LNBTS_idT) AND (I.LcrIdT = L.lcrIdT)
WHERE I.PLMN_Id = 'rc09';
--
--
DROP TABLE IF EXISTS T031_PAR_LNREL_ER10;
CREATE TABLE T031_PAR_LNREL_ER10 ENGINE=MyISAM AS
SELECT DISTINCT
I.PLMN_Id, I.LNCELS, I.LNCELT, I.IntraPrepSR, I.IntraSR, I.IntraATT, I.IntraCancelR, I.InterPrepSR, I.InterSR, I.InterATT, I.InterFR, I.LBSR ,I.LBATT, I.LateHO, I.EarlyHOtype1, I.EarlyHOtype2, I.Distance, L.MRBTS_id, L.LNBTS_id, L.LNCEL_id, L.LNREL_id, L.amleAllowed, L.handoverAllowed, L.removeAllowed, L.cellIndOffNeigh, L.cellIndOffNeighDelta, L.nrControl,L.nrStatus, L.SameSite, L.SameSector, L.BandaS, L.BandaT,
CASE WHEN L.bearing < 0 THEN (360 + L.bearing) ELSE L.bearing END AS bearing,
CASE WHEN L.bearback < 0 THEN (360 + L.bearback) ELSE L.bearback END AS bearback,
ROUND(CASE WHEN(ABS(L.bearing - L.AzS1) > 180) THEN ABS(ABS(L.bearing - L.AzS1) - 360) ELSE (ABS(L.bearing - L.AzS1)) END +
CASE WHEN(ABS(L.bearback - L.AzT1) > 180) THEN ABS(ABS(L.bearback - L.AzT1) - 360) ELSE (ABS(L.bearback - L.AzT1)) END ,1) AS ThetaAng,
CASE WHEN (ABS(L.AzS1-L.AzT1)> 180) THEN ABS(ABS(L.AzS1-L.AzT1)-360) ELSE (ABS(L.AzS1-L.AzT1)) END AS CoefCoOrient,
L.AzS,L.AzT, L.RegionS, L.DeptoS, L.MunS, L.RegionT, L.DeptoT, L.MunT, L.LNCELname, L.LNCELnameT, L.LNCELnameTB, L.lcrId, L.PLMN_idT, L.Prefijo, I.ClusterS,I.ClusterT,I.`Source MRBTS name`,I.`Source LNBTS name`, I.MRBTS_IdT, I.LNBTS_IdT, I.LNCEL_IdT, I.LcrIdT, I.LNBTST, I.MCC, I.MNC, I.ECI, L.version,
L.SBTS_id,L.name,L.LNBTSname,L.LNBTSnameT,L.eutraCelId,L.PowerBoost,L.PCI,L.RSI,L.tac,L.eutraCelIdT,L.eutraCelIdTb,L.PowerBoostT,L.PCIT,L.RSIT,L.tacT,L.Estado,L.EstadoT,L.VendorT
FROM T031_PAR_INTER AS I LEFT JOIN LNREL_PAR AS L ON (I.LNCELS = L.LNCELname) AND (I.LNBTS_IdT = L.LNBTS_idT) AND (I.LcrIdT = L.lcrIdT)
WHERE I.PLMN_Id = 'rc10';
--
--
