/****** Object:  Table [dbo].[ContractServices]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractServices](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[sgID] [int] NULL,
	[chID] [int] NULL,
	[plID] [int] NULL,
	[sID] [int] NULL,
	[pID] [int] NULL,
	[Code] [varchar](20) NULL,
	[Description] [varchar](255) NULL,
	[ValidStartDate] [datetime] NULL,
	[ValidEndDate] [datetime] NULL,
	[ValidStartAge] [int] NULL,
	[ValidEndAge] [int] NULL,
	[Status1] [varchar](1) NULL,
	[Modifier1] [varchar](2) NULL,
	[Modifier2] [varchar](2) NULL,
	[Modifier3] [varchar](2) NULL,
	[Modifier4] [varchar](2) NULL,
	[Modifier5] [varchar](2) NULL,
	[ProviderType] [varchar](3) NULL,
	[ProviderSpecialty] [varchar](3) NULL,
	[CostCenterGroup] [varchar](4) NULL,
	[CostCenterActivity] [varchar](3) NULL,
	[PlaceOfService] [varchar](2) NULL,
	[UnitRate] [numeric](16, 8) NULL,
	[UnitType] [varchar](20) NULL,
	[Units] [float] NULL,
	[LiabilityTypeID] [int] NULL,
	[RoomAndBoardAmt] [numeric](16, 8) NULL,
	[Provider99Number] [varchar](20) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[WaiverIneligible] [bit] NULL,
	[BenCode] [varchar](5) NULL,
	[BenDescription] [varchar](50) NULL,
	[HCPCS] [varchar](10) NULL,
	[FUNDINGStreamChainID] [int] NULL,
	[ReviewDate] [bit] NULL,
	[VariableRate] [bit] NULL,
	[AccountNumber0910] [varchar](50) NULL,
	[AccountNumber1112] [varchar](50) NULL,
	[MaximumDollars] [numeric](16, 8) NULL,
	[ProviderCategory] [varchar](2) NULL,
	[DisbursementTimingID] [int] NULL,
	[ReimbursableServices] [bit] NULL,
	[Division] [int] NULL,
	[Medicare] [bit] NULL,
	[MaxUnits] [int] NULL,
	[RateEffectiveDate] [datetime] NULL,
	[CBHNPLevelOfCareCode] [int] NULL,
	[Gender] [varchar](1) NULL,
	[StateDescription] [varchar](255) NULL,
	[CYAServiceType] [varchar](4) NULL,
	[FrequencyOfDelivery] [varchar](4) NULL,
	[DaycareType] [varchar](4) NULL,
	[ContractAdvance] [numeric](16, 8) NULL,
	[CustomaryRate ] [numeric](16, 8) NULL,
	[CostCenter] [varchar](10) NULL,
	[PeopleSoftDescription] [varchar](255) NULL,
	[ServiceCategory] [varchar](10) NULL,
	[CYADescription] [varchar](255) NULL,
	[IVEMaintenanceRate] [numeric](16, 8) NULL,
	[IVEAdminRate] [numeric](16, 8) NULL,
	[ServiceGroupServiceID] [int] NULL,
 CONSTRAINT [IX_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberOtherSystemIDS]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberOtherSystemIDS](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[Code] [varchar](6) NULL,
	[Description] [varchar](100) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdateddBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_MemberOtherSystemIDs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberHospitalizations]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberHospitalizations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[division] [varchar](4) NULL,
	[admitDate] [datetime] NULL,
	[admitReason] [varchar](50) NULL,
	[admitType] [varchar](30) NULL,
	[dischargeDate] [datetime] NULL,
	[dischargeType] [varchar](30) NULL,
	[delegateTime] [varchar](30) NULL,
	[hospEE] [varchar](30) NULL,
	[hospitalCode] [varchar](6) NULL,
	[hospitalDescription] [varchar](50) NULL,
	[hospitalType] [varchar](30) NULL,
	[referralSource] [varchar](50) NULL,
	[evalFacilityCode] [varchar](6) NULL,
	[evalFacility] [varchar](50) NULL,
	[evalPhysicianCode] [varchar](6) NULL,
	[evalPhysician] [varchar](30) NULL,
	[shCRA] [bit] NULL,
	[code201] [bit] NULL,
	[code302] [bit] NULL,
	[code2DR] [bit] NULL,
	[police] [bit] NULL,
	[numDays] [varchar](30) NULL,
	[diagCode] [varchar](7) NULL,
	[diagDescription] [varchar](100) NULL,
	[dischargeToName] [varchar](50) NULL,
	[dischargeToAddress] [varchar](30) NULL,
	[dischargeToCity] [varchar](20) NULL,
	[dischargeToState] [varchar](2) NULL,
	[dischargeToZip] [varchar](10) NULL,
	[dischargeToPhone] [varchar](12) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[delegateDate] [datetime] NULL,
	[teleNumber] [varchar](20) NULL,
	[delegateNumber] [int] NULL,
	[supervisorNumber] [int] NULL,
	[therapistNumber] [int] NULL,
 CONSTRAINT [IX_MemberHospitalizationsID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Claims]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Claims](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClaimNumber] [char](10) NULL,
	[InvoiceID] [int] NULL,
	[AuthorizationID] [int] NULL,
	[AuthorizationNumber] [int] NULL,
	[AuthServiceLineID] [int] NULL,
	[ContractHeaderID] [int] NULL,
	[ContractServiceLineID] [int] NULL,
	[ProviderID] [int] NULL,
	[ProviderLocationID] [int] NULL,
	[MemberID] [int] NULL,
	[Units] [float] NULL,
	[UnitDescription] [varchar](100) NULL,
	[UnitFee] [decimal](38, 19) NULL,
	[UnitType] [varchar](20) NULL,
	[ChargedAmt] [money] NULL,
	[OtherPaidAmt] [money] NULL,
	[OtherPaidReasonCode] [varchar](10) NULL,
	[PatientPaidAmt] [money] NULL,
	[PatientPaidReasonCode] [varchar](10) NULL,
	[PaidAmt] [money] NULL,
	[PaidReasonCode] [varchar](10) NULL,
	[PaidDate] [datetime] NULL,
	[BeginDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[ReceivedDate] [datetime] NULL,
	[DIAG1] [varchar](10) NULL,
	[DIAG2] [varchar](10) NULL,
	[DIAG3] [varchar](10) NULL,
	[DIAG4] [varchar](10) NULL,
	[FUNDUSAGE] [varchar](50) NULL,
	[Status] [int] NULL,
	[StatusID] [int] NOT NULL,
	[ContractUnitFee] [decimal](38, 19) NULL,
	[AuthContractMod1] [varchar](2) NULL,
	[AuthContractMod2] [varchar](2) NULL,
	[AuthContractMod3] [varchar](2) NULL,
	[AuthContractMod4] [varchar](2) NULL,
	[AuthContractMod5] [varchar](2) NULL,
	[ProviderType] [varchar](3) NULL,
	[ProviderSpecialtyCode] [varchar](3) NULL,
	[PlaceOfService] [varchar](2) NULL,
	[ContractNumber] [varchar](20) NULL,
	[CostCenterActivity] [varchar](3) NULL,
	[CostCenterGroup] [varchar](4) NULL,
	[ProcedureCode] [varchar](15) NULL,
	[ProcedureStartDate] [datetime] NULL,
	[ProcedureEndDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedFrom] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UploadRequired] [bit] NULL,
	[CurrentStatus] [varchar](30) NULL,
	[ClaimReferenceNumber] [varchar](20) NULL,
	[FFS] [bit] NULL,
	[ProviderCategory] [varchar](1) NULL,
	[ProgramFunded] [bit] NULL,
	[CountyCode] [varchar](2) NULL,
	[Division] [varchar](10) NULL,
	[Destination] [int] NULL,
	[837SubmissionDate] [datetime] NULL,
	[OriginalClaimID] [int] NULL,
	[837Status] [varchar](50) NULL,
	[EncounterSubmittedDate] [datetime] NULL,
	[FiscalInvoiceNumber] [varchar](50) NULL,
	[FiscalInvoicePaidDate] [datetime] NULL,
	[FiscalInvoiceCheckNumber] [varchar](20) NULL,
	[PeopleSoftSubmitted] [bit] NULL,
	[PeopleSoftSubmittedDate] [datetime] NULL,
	[UsualChargeAmt] [money] NULL,
	[Invoice] [varchar](20) NULL,
	[LiabilityID] [int] NULL,
	[OffsetAdvanceID] [int] NULL,
	[837CBHNPSubmissionDate] [datetime] NULL,
	[837CBHNPStatus] [varchar](50) NULL,
	[Remarks] [text] NULL,
	[PaymentDetail] [text] NULL,
	[InvoiceDate] [datetime] NULL,
	[UseCOVIDModifier] [bit] NOT NULL,
 CONSTRAINT [PK_Claims] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[CLAIMSALL]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CLAIMSALL]
AS
SELECT DISTINCT dbo.Claims.ClaimNumber AS CLAIMNO,
                             (SELECT        TOP (1) BenCode
                               FROM            dbo.ContractServices
                               WHERE        (dbo.Claims.ContractServiceLineID = ID)
                               ORDER BY dbo.Claims.ContractServiceLineID DESC) AS SVCCOD,
                             (SELECT        TOP (1) Modifier1
                               FROM            dbo.ContractServices AS ContractServices_9
                               WHERE        (dbo.Claims.ContractServiceLineID = ID)
                               ORDER BY dbo.Claims.ContractServiceLineID DESC) AS MODCOD,
                             (SELECT        TOP (1) Modifier2
                               FROM            dbo.ContractServices AS ContractServices_8
                               WHERE        (dbo.Claims.ContractServiceLineID = ID)
                               ORDER BY dbo.Claims.ContractServiceLineID DESC) AS HIPAA_INFO_MODIFIER_1,
                             (SELECT        TOP (1) Modifier3
                               FROM            dbo.ContractServices AS ContractServices_7
                               WHERE        (dbo.Claims.ContractServiceLineID = ID)
                               ORDER BY dbo.Claims.ContractServiceLineID DESC) AS HIPAA_INFO_MODIFIER_2,
                             (SELECT        TOP (1) Modifier4
                               FROM            dbo.ContractServices AS ContractServices_6
                               WHERE        (dbo.Claims.ContractServiceLineID = ID)
                               ORDER BY dbo.Claims.ContractServiceLineID DESC) AS HIPAA_INFO_MODIFIER_3,
                             (SELECT        TOP (1) PlaceOfService
                               FROM            dbo.ContractServices AS ContractServices_5
                               WHERE        (dbo.Claims.ContractServiceLineID = ID)
                               ORDER BY dbo.Claims.ContractServiceLineID DESC) AS POSCOD, dbo.Claims.Units AS UNITCT,
                             (SELECT        TOP (1) ProviderSpecialty
                               FROM            dbo.ContractServices AS ContractServices_3
                               WHERE        (dbo.Claims.ContractServiceLineID = ID)
                               ORDER BY dbo.Claims.ContractServiceLineID DESC) AS PROMISE_SPECIALTY,
                             (SELECT        TOP (1) HCPCS
                               FROM            dbo.ContractServices AS ContractServices_2
                               WHERE        (dbo.Claims.ContractServiceLineID = ID)
                               ORDER BY dbo.Claims.ContractServiceLineID DESC) AS HIPAA_SERVICE_CODE, dbo.Claims.ChargedAmt - dbo.Claims.PaidAmt AS TO_PAY, dbo.Claims.ChargedAmt AS CHRG, dbo.Claims.BeginDate AS SVCDAT, 
                         dbo.Claims.EndDate AS ENDDAT, dbo.Claims.ReceivedDate AS PIDATE, dbo.Claims.PaidDate AS FRPAYDAT, dbo.MEMBERINFO.COVDAYS,
                             (SELECT        TOP (1) admitDate
                               FROM            dbo.MemberHospitalizations
                               WHERE        (dbo.Claims.BeginDate >= admitDate) AND (dbo.Claims.BeginDate <= ISNULL(dischargeDate, '20991231')) AND (dbo.Claims.MemberID = MemberID)
                               ORDER BY admitDate DESC) AS ADMDATE,
                             (SELECT        TOP (1) dischargeDate
                               FROM            dbo.MemberHospitalizations AS MemberHospitalizations_2
                               WHERE        (dbo.Claims.EndDate <= ISNULL(dischargeDate, '20991231')) AND (dbo.Claims.EndDate >= admitDate) AND (dbo.Claims.MemberID = MemberID)
                               ORDER BY admitDate DESC) AS DISDATE, dbo.MEMBERINFO.ADMTYPE, dbo.Claims.DIAG1 AS DIAGN1, dbo.Claims.DIAG2 AS DIAGN2, dbo.MEMBERINFO.ADDR_1 AS ADDRESS1, dbo.MEMBERINFO.ADDR_2 AS ADDRESS2, 
                         dbo.MEMBERINFO.CITY, dbo.MEMBERINFO.STATE, dbo.MEMBERINFO.ZIP,
                             (SELECT        TOP (1) MPINUM + SERVLOC AS Expr1
                               FROM            dbo.CROSSWALKProviders_MPI) AS PROMISE_PROVIDER_ID,
                             (SELECT        TOP (1) Description
                               FROM            dbo.ContractServices AS ContractServices_1
                               WHERE        (dbo.Claims.ContractServiceLineID = ID)
                               ORDER BY dbo.Claims.ContractServiceLineID DESC) AS SVCDESC, dbo.Claims.ProviderCategory AS AGG_SERV_CATEGORY, dbo.Claims.ProviderID AS PROVIDER_ID, dbo.Claims.ClaimReferenceNumber AS LINE_NO, 
                         DATEPART(HOUR, dbo.MEMBERINFO.DISDATE) + DATEPART(MINUTE, dbo.MEMBERINFO.DISDATE) AS DISTIME,
                             (SELECT        TOP (1) HCPCS
                               FROM            dbo.ContractServices AS ContractServices_9
                               WHERE        (dbo.Claims.ContractServiceLineID = ID)
                               ORDER BY dbo.Claims.ContractServiceLineID DESC) AS ADMCODE,
                             (SELECT        TOP (1) Description
                               FROM            dbo.ContractServices AS ContractServices_9
                               WHERE        (dbo.Claims.ContractServiceLineID = ID)
                               ORDER BY dbo.Claims.ContractServiceLineID DESC) AS ADMSRC, dbo.Claims.UnitType AS BILLTYPE, '01' AS DISSTAT, dbo.Claims.ChargedAmt AS CLAAMT, dbo.MEMBERINFO.DRG, '00' AS TOSCOD, 
                         dbo.Claims.AuthContractMod1 AS HIPAA_PRICING_MODIFIER, '00' AS TIERCD, DATEPART(HOUR, dbo.MEMBERINFO.ADMDATE) + DATEPART(MINUTE, dbo.MEMBERINFO.ADMDATE) AS ADMTIME, 
                         dbo.MEMBERINFO.MEMBER_NAME, dbo.MEMBERINFO.DOB, dbo.Claims.MemberID AS SUBSCRIBER_ID, dbo.Claims.ID AS CLID, dbo.MEMBERINFO.MEMBNO, dbo.ICSI_MEMBERS.MEMBNO AS Expr1, 
                         dbo.Claims.[837SubmissionDate], dbo.Claims.ChargedAmt, dbo.Claims.ContractServiceLineID, dbo.Claims.ChargedAmt AS Expr2, dbo.MEMBERINFO.Gender, dbo.Claims.EncounterSubmittedDate, dbo.MEMBERINFO.CISNumber, 
                         dbo.Claims.ChargedAmt AS Expr3, dbo.Claims.[837CBHNPSubmissionDate], dbo.MEMBERINFO.MAIDNUM, dbo.Claims.CurrentStatus, dbo.Claims.Destination, dbo.Claims.ChargedAmt AS Expr4, dbo.Claims.PaidAmt, 
                         dbo.Claims.ChargedAmt AS Expr5, dbo.Claims.PaidAmt AS Expr6, dbo.Claims.ChargedAmt AS Expr7, dbo.Claims.PaidAmt AS Expr11, CROSSWALKProviders_MPI_1.MPINUM, 
                         CROSSWALKProviders_MPI_1.SERVLOC AS LOCATIONCODE, CROSSWALKProviders_MPI_1.PYSCH_CON_ID, CROSSWALKProviders_MPI_1.PROVIDER_NAME, CROSSWALKProviders_MPI_1.ADDR1 AS PADDR1, 
                         CROSSWALKProviders_MPI_1.ADDR2 AS PADDR2, CROSSWALKProviders_MPI_1.City AS PCITY, CROSSWALKProviders_MPI_1.State AS PSTATE, CROSSWALKProviders_MPI_1.ZIP AS PZIP, CROSSWALKProviders_MPI_1.PID,
                          CROSSWALKProviders_MPI_1.SPECIALTY, CROSSWALKProviders_MPI_1.ID, dbo.Claims.ChargedAmt AS Expr8, dbo.Claims.PaidAmt AS Expr9, dbo.Claims.Destination AS Expr10,
                             (SELECT        TOP (1) Description
                               FROM            dbo.MemberOtherSystemIDS
                               WHERE        (MemberID = dbo.MEMBERINFO.MEMBNO) AND (Code = 5) AND (EndDate IS NULL) OR
                                                         (MemberID = dbo.MEMBERINFO.MEMBNO) AND (Code = 5) AND (CAST(EndDate AS date) >= GETDATE())) AS MHXNUM, dbo.Claims.ProgramFunded, dbo.Claims.Division, MemberHospitalizations_1.admitDate, 
                         MemberHospitalizations_1.dischargeDate, dbo.Claims.UseCOVIDModifier
FROM            dbo.Claims INNER JOIN
                         dbo.MEMBERINFO ON dbo.Claims.MemberID = dbo.MEMBERINFO.MEMBNO INNER JOIN
                         dbo.ICSI_MEMBERS ON dbo.MEMBERINFO.MEMBNO = dbo.ICSI_MEMBERS.MEMBNO INNER JOIN
                         dbo.CROSSWALKProviders_MPI AS CROSSWALKProviders_MPI_1 ON dbo.Claims.ProviderID = CROSSWALKProviders_MPI_1.PYSCH_CON_ID LEFT OUTER JOIN
                         dbo.MemberHospitalizations AS MemberHospitalizations_1 ON dbo.Claims.MemberID = MemberHospitalizations_1.MemberID
GROUP BY dbo.Claims.ClaimNumber, dbo.Claims.ChargedAmt - dbo.Claims.PaidAmt, dbo.Claims.ChargedAmt, dbo.Claims.BeginDate, dbo.Claims.EndDate, dbo.Claims.ReceivedDate, dbo.Claims.PaidDate, dbo.MEMBERINFO.COVDAYS, 
                         dbo.MEMBERINFO.ADMTYPE, dbo.Claims.DIAG1, dbo.Claims.DIAG2, dbo.MEMBERINFO.ADDR_1, dbo.MEMBERINFO.ADDR_2, dbo.MEMBERINFO.CITY, dbo.MEMBERINFO.STATE, dbo.MEMBERINFO.ZIP, 
                         dbo.Claims.ProviderCategory, dbo.Claims.ProviderID, dbo.Claims.ClaimReferenceNumber, DATEPART(HOUR, dbo.MEMBERINFO.DISDATE) + DATEPART(MINUTE, dbo.MEMBERINFO.DISDATE), dbo.Claims.UnitType, 
                         dbo.MEMBERINFO.DRG, dbo.Claims.AuthContractMod1, DATEPART(HOUR, dbo.MEMBERINFO.ADMDATE) + DATEPART(MINUTE, dbo.MEMBERINFO.ADMDATE), dbo.Claims.MemberID, dbo.MEMBERINFO.MEMBER_NAME, 
                         dbo.MEMBERINFO.DOB, dbo.Claims.ID, dbo.Claims.ContractServiceLineID, dbo.MEMBERINFO.MEMBNO, dbo.ICSI_MEMBERS.MEMBNO, dbo.Claims.[837SubmissionDate], dbo.MEMBERINFO.Gender, dbo.Claims.Units, 
                         dbo.Claims.EncounterSubmittedDate, dbo.MEMBERINFO.CISNumber, dbo.Claims.[837CBHNPSubmissionDate], dbo.MEMBERINFO.MAIDNUM, dbo.Claims.PaidAmt, dbo.Claims.CurrentStatus, dbo.Claims.Destination, 
                         CROSSWALKProviders_MPI_1.MPINUM, CROSSWALKProviders_MPI_1.SERVLOC, CROSSWALKProviders_MPI_1.PYSCH_CON_ID, CROSSWALKProviders_MPI_1.PROVIDER_NAME, CROSSWALKProviders_MPI_1.ADDR1, 
                         CROSSWALKProviders_MPI_1.ADDR2, CROSSWALKProviders_MPI_1.City, CROSSWALKProviders_MPI_1.State, CROSSWALKProviders_MPI_1.ZIP, CROSSWALKProviders_MPI_1.PID, 
                         CROSSWALKProviders_MPI_1.SPECIALTY, CROSSWALKProviders_MPI_1.ID, dbo.MEMBERINFO.MHXNUM, dbo.Claims.ProgramFunded, dbo.Claims.Division, MemberHospitalizations_1.admitDate, 
                         MemberHospitalizations_1.dischargeDate, dbo.Claims.UseCOVIDModifier
GO
/****** Object:  Table [dbo].[PROVIDERS]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVIDERS](
	[PROV_ID] [int] NOT NULL,
	[PROV_PATH] [int] NULL,
	[NAME] [varchar](50) NULL,
	[SHORT_NAME] [varchar](25) NULL,
	[FAC1_TYPE] [int] NULL,
	[FAC2_TYPE] [int] NULL,
	[INCORP_DAT] [datetime] NULL,
	[TAX_STAT] [int] NULL,
	[VENDOR_ID] [int] NULL,
	[LAST_NAME] [varchar](30) NULL,
	[FIRST_NAME] [varchar](30) NULL,
	[MIDDLE] [varchar](1) NULL,
	[SS_NUMBER] [varchar](11) NULL,
	[SEX] [varchar](1) NULL,
	[BIRTH_DATE] [datetime] NULL,
	[PROFILE_ID] [int] NULL,
	[NON_PAR] [varchar](1) NULL,
	[PROG_AREA] [int] NULL,
	[CREAT_DATE] [datetime] NULL,
	[CREAT_BY] [int] NULL,
	[TOUCH_DATE] [datetime] NULL,
	[TOUCH_BY] [int] NULL,
	[EXT_ID] [varchar](20) NULL,
	[SYSTEM_ID] [varchar](20) NULL,
	[bu_required] [varchar](20) NULL,
	[HIPAAPAYERID] [varchar](80) NULL,
	[INSURANCERANKID] [int] NULL,
	[CLAIMFILINGINDICATORID] [int] NULL,
	[INSURANCETYPEID] [int] NULL,
	[ProviderCode] [varchar](15) NULL,
	[DisplayMemberSubscriberFlag] [varchar](1) NULL,
	[DefaultMemberSubScriberFlag] [varchar](1) NULL,
	[AllowMultipleBusinessUnitFlag] [varchar](1) NULL,
	[ProviderVendorID] [varchar](30) NULL,
 CONSTRAINT [PK_PROVIDERS] PRIMARY KEY CLUSTERED 
(
	[PROV_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOOKUP_COA_CODES]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOOKUP_COA_CODES](
	[ID] [int] NOT NULL,
	[CODE] [varchar](2) NULL,
	[DESCRIPTION] [varchar](50) NULL,
 CONSTRAINT [PK_LOOKUP_COA_CODE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOOKUP_COUNTY]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOOKUP_COUNTY](
	[ID] [int] NOT NULL,
	[CODE] [varchar](2) NULL,
	[COUNTY] [varchar](30) NULL,
 CONSTRAINT [PK_LOOKUP_COUNTY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOOKUP_DIAG_CODES]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOOKUP_DIAG_CODES](
	[ID] [int] NOT NULL,
	[Code] [varchar](5) NULL,
	[Description] [varchar](100) NULL,
	[PrimaryGroup] [varchar](200) NULL,
	[SubGroup] [varchar](100) NULL,
	[DiagCode] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOOKUP_FIN_CAT_NAME]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOOKUP_FIN_CAT_NAME](
	[ID] [int] NOT NULL,
	[CODE] [int] NULL,
	[DESCRIPTION] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MEMBER_ELIGIBILITY]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MEMBER_ELIGIBILITY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PlanCode] [int] NULL,
	[RecipientNumber] [varchar](20) NULL,
	[LastName] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[MiddleInitial] [varchar](2) NULL,
	[BirthDate] [datetime] NULL,
	[SSN] [varchar](9) NULL,
	[RaceCode] [int] NULL,
	[SexCode] [varchar](2) NULL,
	[CountyCode] [int] NULL,
	[Address1] [varchar](100) NULL,
	[Address2] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](2) NULL,
	[Zip] [varchar](9) NULL,
	[HomePhone] [varchar](10) NULL,
	[PlacementCountyCode] [int] NULL,
	[CategoryCode] [varchar](20) NULL,
	[CategoryStartDate] [datetime] NULL,
	[CategoryEndDate] [datetime] NULL,
	[InsuranceStartDate] [datetime] NULL,
	[InsuranceEndDate] [datetime] NULL,
	[LivingArrangementCode] [int] NULL,
	[LanguageCode] [int] NULL,
	[HMOCode] [int] NULL,
	[HMOStartDate] [datetime] NULL,
	[HMOEndDate] [datetime] NULL,
	[CaseNumber] [varchar](10) NULL,
	[PregnancyDueDate] [datetime] NULL,
	[FacilityPlacementCode] [int] NULL,
	[RecordStatus] [char](1) NULL,
	[MACategory] [varchar](3) NULL,
	[ProgramStatus] [varchar](2) NULL,
	[EthnicityCode] [int] NULL,
	[MACaseNumber] [varchar](9) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_MEMBER_ELIGIBILITY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[claims_all]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[claims_all]
AS
SELECT DISTINCT 
                      dbo.LOOKUP_COUNTY.COUNTY AS payor, dbo.CLAIM_DETAILS.ID AS claimmst_i, dbo.CLAIM_DETAILS.ClaimNumber AS claim_num, 
                      dbo.CLAIM_DETAILS.RecDate AS date_rec, dbo.CLAIM_SERVICE_LINE_DETAIL.ID AS claimdet_i, dbo.CLAIM_SERVICE_LINE_DETAIL.StartDate AS date_from, 
                      dbo.CLAIM_SERVICE_LINE_DETAIL.EndDate AS date_to, dbo.CLAIM_SERVICE_LINE_DETAIL.ProcCode AS proc_code, 
                      dbo.CLAIM_SERVICE_LINE_DETAIL.RevenueCode, dbo.CLAIM_ADJUDICATION.AmtPaid AS pay_doll, CONVERT(int, dbo.CLAIM_SERVICE_LINE_DETAIL.LineUnits) 
                      AS units, dbo.CLAIM_DETAILS.ServiceCat AS fin_cat, dbo.CLAIM_ADJUDICATION.AdjudDate AS check_date, dbo.CLAIM_DETAILS.MCOProvID AS prov_id, 
                      dbo.CLAIM_DETAILS.DiagCode1 AS prin_diag_code, dbo.CLAIM_DETAILS.DiagCode2 AS oth1_diag_code, dbo.CLAIM_DETAILS.DiagCode3 AS oth2_diag_code, 
                      dbo.LOOKUP_DIAG_CODES.Description AS prin_diag_name, Diag1.Description AS oth1_diag_name, Diag2.Description AS oth2_diag_name, 
                      dbo.CLAIM_ADJUDICATION.PaymentAdjCode1 AS descript, dbo.CLAIM_DETAILS.RecipientCIS AS patient_id, dbo.CLAIM_DETAILS.TotalCharges AS cla_doll, 
                      dbo.MEMBER_ELIGIBILITY.BirthDate, dbo.PROVIDERS.NAME, dbo.LOOKUP_COA_CODES.DESCRIPTION AS COA, 
                      dbo.CLAIM_ADJUDICATION.PaymentAdjAmt1 AS adjud_doll, dbo.LOOKUP_FIN_CAT_NAME.DESCRIPTION AS fin_cat_name, 
                      dbo.CLAIM_ADJUDICATION.ID AS claimadj_i
FROM         dbo.CLAIM_DETAILS INNER JOIN
                      dbo.CLAIM_SERVICE_LINE_DETAIL ON dbo.CLAIM_SERVICE_LINE_DETAIL.ClaimNumber = dbo.CLAIM_DETAILS.ClaimNumber INNER JOIN
                      dbo.CLAIM_ADJUDICATION ON dbo.CLAIM_ADJUDICATION.LineNumber = dbo.CLAIM_SERVICE_LINE_DETAIL.LineNumber INNER JOIN
                      dbo.MEMBER_ELIGIBILITY ON dbo.CLAIM_DETAILS.RecipientCIS = dbo.MEMBER_ELIGIBILITY.RecipientNumber LEFT OUTER JOIN
                      dbo.LOOKUP_COUNTY ON dbo.CLAIM_DETAILS.CountyCode = dbo.LOOKUP_COUNTY.CODE LEFT OUTER JOIN
                      dbo.LOOKUP_DIAG_CODES ON dbo.CLAIM_DETAILS.DiagCode1 = dbo.LOOKUP_DIAG_CODES.Code LEFT OUTER JOIN
                      dbo.LOOKUP_DIAG_CODES AS Diag1 ON dbo.CLAIM_DETAILS.DiagCode2 = Diag1.Code LEFT OUTER JOIN
                      dbo.LOOKUP_DIAG_CODES AS Diag2 ON dbo.CLAIM_DETAILS.DiagCode3 = Diag2.Code LEFT OUTER JOIN
                      dbo.PROVIDERS ON dbo.CLAIM_DETAILS.MCOProvID = dbo.PROVIDERS.PROV_ID LEFT OUTER JOIN
                      dbo.LOOKUP_COA_CODES ON dbo.MEMBER_ELIGIBILITY.CategoryCode = dbo.LOOKUP_COA_CODES.CODE LEFT OUTER JOIN
                      dbo.LOOKUP_FIN_CAT_NAME ON dbo.CLAIM_DETAILS.ServiceCat = dbo.LOOKUP_FIN_CAT_NAME.CODE
GO
/****** Object:  Table [dbo].[Auths]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auths](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AuthNumber] [int] NULL,
	[AuthAmendment] [int] NULL,
	[MemberID] [int] NOT NULL,
	[ProviderID] [int] NULL,
	[ProviderNumber] [varchar](20) NULL,
	[ProviderMANumber] [varchar](20) NULL,
	[ProviderContractNumber] [varchar](20) NULL,
	[ProviderContractAmendment] [varchar](3) NULL,
	[ProviderLocation] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[MaxDollars] [money] NULL,
	[MaxUnits] [money] NULL,
	[MaxVisits] [int] NULL,
	[AuthType] [varchar](5) NULL,
	[AuthTypeDesc] [varchar](30) NULL,
	[AuthProgramDesc] [varchar](255) NULL,
	[AuthGuarantor] [varchar](50) NULL,
	[AuthGuarantorPhy] [varchar](50) NULL,
	[ContactDate] [datetime] NULL,
	[ContactNotes] [varchar](2048) NULL,
	[AuthReviewDate] [datetime] NULL,
	[AuthReviewNotes] [varchar](2048) NULL,
	[DataEntryDate] [datetime] NULL,
	[ApprovalStatus] [varchar](30) NULL,
	[ApprovalDate] [datetime] NULL,
	[ApprovedBy] [varchar](20) NULL,
	[PrintRequired] [bit] NULL,
	[LastPrintedDate] [datetime] NULL,
	[RejectReason] [text] NULL,
	[RoomAndBoardLiability] [money] NULL,
	[Division] [varchar](4) NULL,
	[SpansFiscalYear] [bit] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[CCBHAuthNumber] [varchar](30) NULL,
	[AdjustmentReason] [text] NULL,
	[RejectReasonNote] [varchar](max) NULL,
	[PlacementID] [int] NULL,
	[OutOfState] [bit] NULL,
	[IsAdoption] [bit] NULL,
	[Respite] [bit] NULL,
	[IncludeAfcars] [bit] NULL,
	[AdoptionID] [int] NULL,
	[IsDisruption] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuthServices]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthServices](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AuthID] [int] NOT NULL,
	[AuthService] [varchar](15) NULL,
	[AuthServiceMod1] [varchar](2) NULL,
	[AuthServiceMod2] [varchar](2) NULL,
	[AuthServiceMod3] [varchar](2) NULL,
	[AuthServiceMod4] [varchar](2) NULL,
	[AuthServiceMod5] [varchar](2) NULL,
	[AuthServiceDesc] [varchar](255) NULL,
	[AuthOrigCHID] [int] NULL,
	[AuthOrigCSLID] [int] NULL,
	[AuthOrigPID] [int] NULL,
	[AuthServicePrice] [money] NULL,
	[AuthServiceMinAge] [int] NULL,
	[AuthServiceMaxAge] [int] NULL,
	[AuthServiceValidStartDate] [datetime] NULL,
	[AuthServiceValidEndDate] [datetime] NULL,
	[AuthCostCenterGroup] [varchar](4) NULL,
	[AuthCostCenterActivity] [varchar](3) NULL,
	[AuthProviderType] [varchar](3) NULL,
	[AuthProviderSpecialty] [varchar](3) NULL,
	[AuthUnitType] [varchar](20) NULL,
	[AuthPlaceOfService] [varchar](2) NULL,
	[AuthLiabilityType] [int] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClinicalNotes]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClinicalNotes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[MemberID] [int] NULL,
	[LogBookID] [int] NULL,
	[NoteDivision] [varchar](4) NULL,
	[NoteText] [text] NULL,
	[NoteRegarding] [varchar](100) NULL,
	[NoteOriginator] [int] NULL,
	[NoteDate] [datetime] NULL,
	[NoteType] [int] NULL,
	[NoteTitle] [int] NULL,
	[NoteLock] [bit] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[CaseManagerID] [int] NULL,
	[noteprinted] [bit] NULL,
	[noteprinteddate] [datetime] NULL,
	[CrisisAlert] [bit] NULL,
	[CrisisAlertDate] [datetime] NULL,
	[ProblemCodes] [int] NULL,
	[CrisisReferredTo] [int] NULL,
	[Disposition] [int] NULL,
	[CrisisAssessmentNotes] [text] NULL,
	[CrisisPlanNotes] [text] NULL,
	[ProblemCodesList] [varchar](200) NULL,
	[PINNumber] [varchar](255) NULL,
	[NoteStatus] [bit] NULL,
	[LastNoteViewed] [int] NULL,
 CONSTRAINT [PK_ClinicalNotes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClinicalNotesElectronicSignatures]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClinicalNotesElectronicSignatures](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClinicalNoteID] [int] NULL,
	[PinNumber] [varchar](255) NULL,
	[SignedBy] [varchar](20) NULL,
	[SignedDate] [datetime] NULL,
	[SignedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
 CONSTRAINT [PK_ClinicalNotesElectronicSignatures] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentLog]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Comment] [text] NULL,
	[FormName] [text] NULL,
	[TermName] [text] NULL,
	[CreatedDate] [datetime] NULL,
	[MemberID] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ApplicationVersion] [varchar](50) NULL,
	[Category] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractAdvances]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractAdvances](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContractHeaderID] [int] NULL,
	[ContractProviderID] [int] NULL,
	[ContractServiceID] [int] NULL,
	[Description] [varchar](50) NULL,
	[AdvanceAmount] [numeric](16, 8) NULL,
	[RepayPercentage] [numeric](16, 0) NULL,
	[AccountNumber] [varchar](50) NULL,
	[TotalRemaining] [numeric](16, 8) NULL,
	[PeoplesoftPaidDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedFrom] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedFrom] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractAppendices]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractAppendices](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContractHeaderID] [int] NULL,
	[AppendixID] [int] NULL,
	[IsChecked] [bit] NULL,
	[DocFilePath] [varchar](255) NULL,
	[ContractTypeID] [int] NULL,
	[Description] [varchar](255) NULL,
	[SortColumn] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractApprovalHistory]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractApprovalHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContractHeaderID] [int] NOT NULL,
	[ApprovalDate] [datetime] NOT NULL,
	[ApprovalStatus] [varchar](30) NULL,
	[ApprovedBy] [varchar](20) NULL,
	[RejectReasonID] [int] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractHeaders]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractHeaders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderID] [int] NULL,
	[Description] [varchar](255) NULL,
	[ValidStarting] [datetime] NULL,
	[ValidEnding] [datetime] NULL,
	[MaximumDollars] [numeric](16, 8) NULL,
	[MaximumUnits] [numeric](16, 8) NOT NULL,
	[ContractNumber] [varchar](20) NULL,
	[Sequence] [varchar](3) NULL,
	[FundingStream] [int] NULL,
	[Status] [int] NULL,
	[amendedID] [int] NULL,
	[reasonForAmend] [text] NULL,
	[DeptID] [int] NULL,
	[OfficeID] [int] NULL,
	[Purpose] [varchar](255) NULL,
	[Renew] [int] NULL,
	[OrgFormID] [int] NULL,
	[CType1ID] [int] NULL,
	[CType2ID] [int] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[Internal] [bit] NULL,
	[PointOfContact] [varchar](50) NULL,
	[POCPhone] [varchar](16) NULL,
	[ProgramFundedDollars] [numeric](16, 8) NULL,
	[IsProjected] [bit] NULL,
	[OldCHID] [int] NULL,
	[chReviewStatus] [varchar](50) NULL,
	[Level1AssignedDate] [datetime] NULL,
	[Level1Comments] [varchar](1000) NULL,
	[Level1DueDate] [datetime] NULL,
	[Level1Complete] [bit] NULL,
	[Level1PrimaryContact] [int] NULL,
	[Level1SecondaryContact] [int] NULL,
	[Level2AssignedDate] [datetime] NULL,
	[Level2Comments] [varchar](1000) NULL,
	[Level2DueDate] [datetime] NULL,
	[Level2Complete] [bit] NULL,
	[Level2PrimaryContact] [int] NULL,
	[Level2SecondaryContact] [int] NULL,
	[Level3AssignedDate] [datetime] NULL,
	[Level3Comments] [varchar](1000) NULL,
	[Level3DueDate] [datetime] NULL,
	[Level3Complete] [bit] NULL,
	[Level3PrimaryContact] [int] NULL,
	[Level3SecondaryContact] [int] NULL,
	[Level4AssignedDate] [datetime] NULL,
	[Level4Comments] [varchar](1000) NULL,
	[Level4DueDate] [datetime] NULL,
	[Level4Complete] [bit] NULL,
	[Level4PrimaryContact] [int] NULL,
	[Level4SecondaryContact] [int] NULL,
	[Level5AssignedDate] [datetime] NULL,
	[Level5Comments] [varchar](1000) NULL,
	[Level5DueDate] [datetime] NULL,
	[Level5Complete] [bit] NULL,
	[Level5PrimaryContact] [int] NULL,
	[Level5SecondaryContact] [int] NULL,
	[Level6AssignedDate] [datetime] NULL,
	[Level6Comments] [varchar](1000) NULL,
	[Level6DueDate] [datetime] NULL,
	[Level6Complete] [bit] NULL,
	[Level6PrimaryContact] [int] NULL,
	[Level6SecondaryContact] [int] NULL,
	[Level7AssignedDate] [datetime] NULL,
	[Level7Comments] [varchar](1000) NULL,
	[Level7DueDate] [datetime] NULL,
	[Level7Complete] [bit] NULL,
	[Level7PrimaryContact] [int] NULL,
	[Level7SecondaryContact] [int] NULL,
	[ProviderNarrative] [varchar](max) NULL,
	[IsCYAAgencyFosterHome] [bit] NULL,
 CONSTRAINT [IX_ContractHeaders_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractLocations]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractLocations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[chID] [int] NULL,
	[plID] [int] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
 CONSTRAINT [PK_ContractLocations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractReviewLog]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractReviewLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EventDate] [datetime] NULL,
	[ContractID] [int] NULL,
	[ContractNumber] [varchar](20) NULL,
	[ContractDescription] [varchar](50) NULL,
	[ClericalContact] [int] NULL,
	[ProviderID] [int] NULL,
	[ReviewStatus] [varchar](50) NULL,
	[AssignedContact] [int] NULL,
	[DueDate] [datetime] NULL,
	[EnteredBy] [varchar](20) NULL,
	[EnteredFrom] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractServiceRates]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractServiceRates](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContractHeaderID] [int] NULL,
	[ContractLocationID] [int] NULL,
	[ContractServiceID] [int] NULL,
	[ContractServiceRate] [numeric](16, 8) NULL,
	[ContractServiceRateStartDate] [datetime] NULL,
	[ContractServiceRateEndDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CrosswalkICD_DSM]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CrosswalkICD_DSM](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ICDCODE] [varchar](10) NULL,
	[DSMCODE] [varchar](10) NULL,
	[ICD10CODE] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DAS]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DAS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[memberID] [int] NULL,
	[division] [varchar](8) NULL,
	[noteID] [int] NULL,
	[LogBookID] [int] NULL,
	[dasLookupID] [int] NULL,
	[dasCategoryID] [int] NULL,
	[billable] [bit] NULL,
	[dasTime] [varchar](30) NULL,
	[dasDate] [datetime] NULL,
	[dasEndDate] [datetime] NULL,
	[dasTimeIn] [datetime] NULL,
	[dasTimeOut] [datetime] NULL,
	[dasNote] [text] NULL,
	[POMSProgramActivity] [varchar](50) NULL,
	[createdDate] [datetime] NULL,
	[createdBy] [varchar](20) NULL,
	[createdFrom] [varchar](20) NULL,
	[updatedDate] [datetime] NULL,
	[updatedBy] [varchar](20) NULL,
	[updatedFrom] [varchar](20) NULL,
	[ApprovedBy] [varchar](20) NULL,
	[ApprovedDate] [datetime] NULL,
	[userID] [int] NULL,
	[numUnits] [int] NULL,
	[RollupID] [int] NULL,
	[Rollup] [bit] NULL,
	[ClaimID] [int] NULL,
	[deleted] [bit] NULL,
	[pos_comm] [int] NULL,
	[end_Date] [datetime] NULL,
	[oncall] [bit] NULL,
	[medreim] [bit] NULL,
	[cl_comm] [int] NULL,
	[bill_units] [datetime] NULL,
	[bill_con] [int] NULL,
	[tot_time] [datetime] NULL,
	[nonbill_units] [int] NULL,
	[nonbil] [datetime] NULL,
	[con_cons] [bit] NULL,
	[con_par] [bit] NULL,
	[con_fam] [bit] NULL,
	[con_staff] [bit] NULL,
	[con_conatt] [bit] NULL,
	[con_other] [bit] NULL,
	[act_link] [bit] NULL,
	[act_mon] [bit] NULL,
	[act_ass] [bit] NULL,
	[act_acc] [bit] NULL,
	[act_support] [bit] NULL,
	[act_comre] [bit] NULL,
	[act_probres] [bit] NULL,
	[act_conatt] [bit] NULL,
	[of_house] [bit] NULL,
	[of_emp] [bit] NULL,
	[of_edu] [bit] NULL,
	[of_income] [bit] NULL,
	[of_mhtx] [bit] NULL,
	[of_datx] [bit] NULL,
	[of_soc] [bit] NULL,
	[of_adl] [bit] NULL,
	[of_medtx] [bit] NULL,
	[of_other] [bit] NULL,
	[of_conatt] [bit] NULL,
	[nar1] [text] NULL,
	[nar2] [text] NULL,
	[maid] [varchar](20) NULL,
	[consmrDx] [varchar](20) NULL,
	[DOB] [datetime] NULL,
	[srvcCode] [varchar](20) NULL,
	[casewnum] [varchar](20) NULL,
	[priCmgr] [varchar](20) NULL,
	[secCmgr] [varchar](20) NULL,
	[procCode] [varchar](20) NULL,
	[SourceType] [varchar](5) NULL,
	[ImportedDate] [datetime] NULL,
	[Importerrorflag] [bit] NULL,
	[Importerrordescription] [varchar](50) NULL,
	[Access_Import_rec_num] [int] NULL,
	[DASImportMainID] [int] NULL,
	[DASImportMainMod2] [varchar](2) NULL,
	[GoalsID] [int] NULL,
	[LocCommunityID] [int] NULL,
	[ServiceTypesID] [int] NULL,
	[CrisisEventsID] [int] NULL,
	[TravelTime] [int] NULL,
	[UseCOVIDModifier] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DASBilling]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DASBilling](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Entity] [varchar](10) NULL,
	[Type] [varchar](10) NULL,
	[EffectiveDate] [datetime] NULL,
	[UnitRate] [numeric](16, 8) NULL,
	[ProcedureCode] [varchar](10) NULL,
	[Modifier1] [varchar](5) NULL,
	[Modifier2] [varchar](5) NULL,
	[Modifier3] [varchar](5) NULL,
	[Match] [numeric](16, 8) NULL,
	[FFP] [numeric](16, 8) NULL,
	[PlaceOfService] [varchar](2) NULL,
	[Psych] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EIFamilyTransactions]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EIFamilyTransactions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[familyID] [int] NULL,
	[createdBy] [varchar](20) NULL,
	[createdDate] [datetime] NULL,
	[createdFrom] [varchar](20) NULL,
	[activationDate] [datetime] NULL,
	[deActivationDate] [datetime] NULL,
	[updateBy] [varchar](20) NULL,
	[updateDate] [datetime] NULL,
	[updateFrom] [varchar](20) NULL,
	[MemberAssociationID] [int] NULL,
	[Relationship] [int] NULL,
	[RelationshipToMembID] [int] NULL,
	[EITransactionsID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FamilyDefinitions]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FamilyDefinitions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[familyCode] [varchar](20) NULL,
	[familyDescription] [varchar](50) NULL,
	[createdBy] [varchar](20) NULL,
	[createdFrom] [varchar](20) NULL,
	[createdDate] [datetime] NULL,
	[updatedBy] [varchar](20) NULL,
	[updatedDate] [datetime] NULL,
	[updatedFrom] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FamilyTransactions]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FamilyTransactions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[familyID] [int] NULL,
	[createdBy] [varchar](20) NULL,
	[createdDate] [datetime] NULL,
	[createdFrom] [varchar](20) NULL,
	[activationDate] [datetime] NULL,
	[deActivationDate] [datetime] NULL,
	[updateBy] [varchar](20) NULL,
	[updateDate] [datetime] NULL,
	[updateFrom] [varchar](20) NULL,
	[MemberAssociationID] [int] NULL,
	[Relationship] [int] NULL,
	[RelationshipToMembID] [int] NULL,
	[CYATransactionsID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FundingListDetail]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FundingListDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FundingListID] [int] NULL,
	[ServiceID] [int] NULL,
	[MemberID] [int] NULL,
	[STARTDATE] [datetime] NULL,
	[ENDDATE] [datetime] NULL,
 CONSTRAINT [PK_FundingListDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FundingLists]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FundingLists](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DESCRIPTION] [varchar](100) NULL,
	[IsCYA] [bit] NULL,
 CONSTRAINT [PK_FundingLists] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FundingStream]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FundingStream](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DESCRIPTION] [varchar](100) NULL,
	[STARTDATE] [datetime] NULL,
	[ENDDATE] [datetime] NULL,
	[DOLLARMAX] [money] NULL,
	[PERCENTVALUE] [money] NULL,
	[PRIORITY] [int] NULL,
	[CREATEDBY] [varchar](50) NULL,
	[CREATEDFROM] [varchar](50) NULL,
	[CREATEDDATE] [datetime] NULL,
	[UPDATEDBY] [varchar](50) NULL,
	[UPDATEDFROM] [varchar](50) NULL,
	[UPDATEDATE] [datetime] NULL,
	[ACTIVE] [bit] NOT NULL,
	[ServiceListID] [int] NULL,
	[MemberListID] [int] NULL,
	[PeopleSoftAccount] [int] NULL,
	[IsCYA] [bit] NULL,
 CONSTRAINT [PK_FundingStream] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FundingStreamChains]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FundingStreamChains](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DESCRIPTION] [varchar](100) NULL,
	[IsProjected] [bit] NULL,
	[providercategory] [varchar](1) NULL,
	[IsCYA] [bit] NULL,
 CONSTRAINT [PK_FundingStreamChains] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FundingStreamLinks]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FundingStreamLinks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[fsCHAINID] [int] NOT NULL,
	[fsID] [int] NOT NULL,
 CONSTRAINT [PK_FundingStreamLinks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GeneratedContracts]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneratedContracts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[Note] [text] NULL,
	[ContractHeaderID] [int] NULL,
	[GeneratedReport] [varbinary](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Global_Code]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Global_Code](
	[Global_Code_ID] [int] NOT NULL,
	[category] [varchar](10) NOT NULL,
	[code] [varchar](10) NOT NULL,
	[name] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceApprovalHistory]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceApprovalHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceID] [int] NULL,
	[StatusChangedDate] [datetime] NULL,
	[Status] [varchar](30) NULL,
	[StatusChangedBy] [varchar](20) NULL,
	[RejectionReasonID] [int] NULL,
	[RejectionReason] [text] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_InvoiceApprovalHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceHeader]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceHeader](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContractID] [int] NULL,
	[ProviderID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceProviderLocation]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceProviderLocation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceID] [int] NULL,
	[ProviderID] [int] NULL,
	[ProviderLocationID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoices](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContractServiceID] [int] NULL,
	[ContractHeaderID] [int] NULL,
	[ProviderID] [int] NULL,
	[ProviderLocationID] [int] NULL,
	[InvoiceNumber] [varchar](20) NULL,
	[InvoiceRecDate] [datetime] NULL,
	[InvoiceDate] [datetime] NULL,
	[InvoiceAmount] [money] NULL,
	[PaidAmount] [money] NULL,
	[PeopleSoftDate] [datetime] NULL,
	[InvoiceStatus] [varchar](30) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[ReasonForDifference] [text] NULL,
	[OriginalInvoiceID] [int] NULL,
	[OffsetAdvanceID] [int] NULL,
	[IsCYA] [bit] NULL,
	[NotesText] [text] NULL,
	[InvoiceID] [int] NULL,
 CONSTRAINT [PK_Invoices] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOOKUP_ADJUSTMENT_CODES]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOOKUP_ADJUSTMENT_CODES](
	[CODE] [int] NOT NULL,
	[DESCRIPTION] [varchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOOKUP_ADMISSION_TYPE]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOOKUP_ADMISSION_TYPE](
	[ID] [int] NOT NULL,
	[CODE] [int] NULL,
	[DESCRIPTION] [varchar](50) NULL,
 CONSTRAINT [PK_LOOKUP_ADMISSION_TYPE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOOKUP_CONTRACT_TYPE]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOOKUP_CONTRACT_TYPE](
	[ID] [int] NOT NULL,
	[CODE] [int] NULL,
	[DESCRIPTION] [varchar](50) NULL,
 CONSTRAINT [PK_LOOKUP_CONTRACT_TYPE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOOKUP_DRG_CODES]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOOKUP_DRG_CODES](
	[DRGCodes_ID] [int] NOT NULL,
	[Code] [int] NULL,
	[Descript] [varchar](80) NULL,
	[Seq_Order] [int] NULL,
 CONSTRAINT [XPK_DRGCodes] PRIMARY KEY CLUSTERED 
(
	[DRGCodes_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOOKUP_ENCOUNTER_TYPES]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOOKUP_ENCOUNTER_TYPES](
	[TYPE] [varchar](10) NOT NULL,
	[DESCRIPTION] [varchar](50) NOT NULL,
 CONSTRAINT [PK_LOOKUP_ENCOUNTER_TYPE] PRIMARY KEY CLUSTERED 
(
	[TYPE] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOOKUP_PROVIDER_DETAILS]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOOKUP_PROVIDER_DETAILS](
	[provtypeid] [int] NOT NULL,
	[descript] [varchar](80) NULL,
	[prov_id] [int] NULL,
	[name] [varchar](50) NULL,
	[providerspecialties_id] [int] NULL,
	[description] [varchar](50) NULL,
	[code] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOOKUP_PROVIDER_SITE]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOOKUP_PROVIDER_SITE](
	[SITE_ID] [int] NOT NULL,
	[PROV_ID] [int] NULL,
	[MAST_SITE] [varchar](1) NULL,
	[MAIL_LINK] [int] NULL,
	[BILL_LINK] [int] NULL,
	[TAXA_LINK] [int] NULL,
	[PHYS_ADDR1] [varchar](50) NULL,
	[PHYS_ADDR2] [varchar](50) NULL,
	[PHYS_ADDR3] [varchar](50) NULL,
	[PHYS_CITY] [varchar](50) NULL,
	[PHYS_CNTY] [varchar](20) NULL,
	[PHYS_STATE] [varchar](2) NULL,
	[PHYS_ZIP] [varchar](10) NULL,
	[PHYS_PHONE] [varchar](12) NULL,
	[PHYS_EXT] [varchar](6) NULL,
	[PHYS_EMERG] [int] NULL,
	[PHYS_INVOL] [int] NULL,
	[PHYS_HANDI] [int] NULL,
	[PHYS_HEVEN] [int] NULL,
	[PHYS_HWEEK] [int] NULL,
	[MAIL_ADDR1] [varchar](50) NULL,
	[MAIL_ADDR2] [varchar](50) NULL,
	[MAIL_ADDR3] [varchar](50) NULL,
	[MAIL_CITY] [varchar](50) NULL,
	[MAIL_CNTY] [varchar](20) NULL,
	[MAIL_STATE] [varchar](2) NULL,
	[MAIL_ZIP] [varchar](10) NULL,
	[MAIL_PHONE] [varchar](12) NULL,
	[MAIL_EXT] [varchar](6) NULL,
	[MAIL_NOTE] [text] NULL,
	[MAIL_DIREC] [text] NULL,
	[BILL_ADDR1] [varchar](50) NULL,
	[BILL_ADDR2] [varchar](50) NULL,
	[BILL_ADDR3] [varchar](50) NULL,
	[BILL_CITY] [varchar](50) NULL,
	[BILL_CNTY] [varchar](20) NULL,
	[BILL_STATE] [varchar](2) NULL,
	[BILL_ZIP] [varchar](10) NULL,
	[BILL_PHONE] [varchar](12) NULL,
	[BILL_EXT] [varchar](6) NULL,
	[BILL_NOTE] [text] NULL,
	[BILL_DIREC] [text] NULL,
	[TAXA_ADDR1] [varchar](50) NULL,
	[TAXA_ADDR2] [varchar](50) NULL,
	[TAXA_ADDR3] [varchar](50) NULL,
	[TAXA_CITY] [varchar](50) NULL,
	[TAXA_CNTY] [varchar](20) NULL,
	[TAXA_STATE] [varchar](2) NULL,
	[TAXA_ZIP] [varchar](10) NULL,
	[TAXA_PHONE] [varchar](12) NULL,
	[TAXA_EXT] [varchar](6) NULL,
	[TAXA_NOTE] [text] NULL,
	[TAXA_DIREC] [text] NULL,
	[TAXA_FED_N] [varchar](50) NULL,
	[TAXA_FED_I] [varchar](20) NULL,
	[TOUCH_DATE] [datetime] NULL,
	[TOUCH_BY] [int] NULL,
	[ACT_SITE] [varchar](1) NULL,
	[PHYS_LETT] [varchar](1) NULL,
	[MAIL_LETT] [varchar](1) NULL,
	[BILL_LETT] [varchar](1) NULL,
	[TAXA_LETT] [varchar](1) NULL,
	[MAIL_CTRY] [int] NULL,
	[PHYS_CTRY] [int] NULL,
	[TAXA_CTRY] [int] NULL,
	[BILL_CTRY] [int] NULL,
	[PayToSiteFlag] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOOKUP_PROVIDER_SPECIALTY]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOOKUP_PROVIDER_SPECIALTY](
	[SPECIALTY] [text] NULL,
	[DESCRIPTION] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOOKUP_PROVIDER_TYPES]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOOKUP_PROVIDER_TYPES](
	[TYPE] [text] NULL,
	[DESCRIPTION] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOOKUP_RECIPIENT_GROUP]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOOKUP_RECIPIENT_GROUP](
	[ID] [int] NOT NULL,
	[RGNUM] [varchar](3) NULL,
	[GROUPNUMBER] [varchar](2) NULL,
	[DESCRIPTION] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOOKUPTAXONOMY]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOOKUPTAXONOMY](
	[psID] [int] NULL,
	[ptCode] [varchar](3) NULL,
	[Provider Type] [varchar](150) NULL,
	[Code] [varchar](4) NULL,
	[psDescription] [varchar](150) NULL,
	[Taxonomy] [varchar](15) NULL,
	[Taxonomy Description] [varchar](150) NULL,
	[FederalStateTaxonomy] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MCOAUTH]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MCOAUTH](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderID] [int] NULL,
	[ProviderName] [varchar](60) NULL,
	[AuthID] [varchar](20) NULL,
	[CountyCode] [int] NULL,
	[RecipientMAID] [varchar](20) NULL,
	[CBHNPLevelOfCareCode] [int] NULL,
	[AuthorizedUnitsOfService] [money] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[UnitRate] [money] NULL,
	[CBHNPInternalTreatmentID] [int] NULL,
	[AggregateEncounterCategory] [int] NULL,
	[ProviderTaxID] [int] NULL,
	[LocDescription] [varchar](255) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_MCOAUTH] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberAddress]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberAddress](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[Address1] [varchar](200) NULL,
	[Address2] [varchar](200) NULL,
	[Address3] [varchar](200) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](2) NULL,
	[ZipCode] [varchar](50) NULL,
	[HomePhone] [varchar](16) NULL,
	[WorkPhone] [varchar](16) NULL,
	[CellPhone] [varchar](16) NULL,
	[CountyCode] [varchar](4) NULL,
	[CountyName] [varchar](30) NULL,
	[SchoolDistrict] [int] NULL,
	[Township] [int] NULL,
	[CensusTract] [varchar](10) NULL,
	[Current] [bit] NULL,
	[Active] [bit] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[AddressType] [int] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[District] [int] NULL,
	[EmailAddress] [varchar](100) NULL,
	[CWISStatus] [varchar](10) NULL,
	[CWISAddressTypeCode] [varchar](3) NULL,
	[CWISCurrentLocation] [varchar](1) NULL,
	[CWISOrganizationName] [varchar](60) NULL,
	[CWISNonUSState] [varchar](32) NULL,
	[CWISCountryCode] [varchar](3) NULL,
	[CWISLatitude] [varchar](11) NULL,
	[CWISLongitude] [varchar](11) NULL,
	[CWISLocationDetail] [varchar](max) NULL,
	[CWISPrisonID] [varchar](20) NULL,
	[CWISGradeCode] [varchar](3) NULL,
	[CWISClassTypeCode] [varchar](3) NULL,
	[HomeNumOwner] [varchar](50) NULL,
	[CWISHoursPresent] [varchar](32) NULL,
	[Homeless] [bit] NULL,
	[PrimaryPhone] [varchar](6) NULL,
 CONSTRAINT [PK_MemberAddress] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberAlias]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberAlias](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[FirstName] [varchar](30) NULL,
	[MiddleInitial] [varchar](30) NULL,
	[LastName] [varchar](30) NULL,
	[AliasType] [int] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[CWISStatus] [varchar](10) NULL,
	[CWISAKASuffix] [varchar](32) NULL,
	[CWISAKADOB] [datetime] NULL,
	[CWISAKASSN] [varchar](9) NULL,
	[CWISEstimatedDOB] [varchar](1) NULL,
	[AdoptionDate] [datetime] NULL,
 CONSTRAINT [PK_MemberAlias] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberAssessments]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberAssessments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[Type] [varchar](4) NULL,
	[IntakeID] [int] NULL,
	[Division] [varchar](4) NULL,
	[EvalRequested] [datetime] NULL,
	[EvalSent] [datetime] NULL,
	[EvalReceived] [datetime] NULL,
	[EvalCompleted] [datetime] NULL,
	[EvalReportSent] [datetime] NULL,
	[ReferralReason] [int] NULL,
	[ReferralSource] [int] NULL,
	[ChildPerformance] [text] NULL,
	[FamilyInformation] [text] NULL,
	[EvalHistory] [text] NULL,
	[OtherEvaluations] [text] NULL,
	[OtherServices] [text] NULL,
	[DailyActivities] [text] NULL,
	[ChallengingActivities] [text] NULL,
	[DevelopmentConcerns] [text] NULL,
	[FamilyResources] [text] NULL,
	[AdditionalConcerns] [text] NULL,
	[PhysicalExamDate] [datetime] NULL,
	[PhysicalExamMD] [varchar](50) NULL,
	[MedicalHistory] [text] NULL,
	[HearingExamDate] [datetime] NULL,
	[HearingExamMD] [varchar](50) NULL,
	[HearingExamInstrument] [varchar](50) NULL,
	[HearingExamResults] [text] NULL,
	[VisionExamDate] [datetime] NULL,
	[VisionExamMD] [varchar](50) NULL,
	[VisionExamInstrument] [varchar](50) NULL,
	[VisionExamResults] [text] NULL,
	[CognitiveDevelopment] [text] NULL,
	[CommunicationDevelopment] [text] NULL,
	[SocialEmotionalDevelopment] [text] NULL,
	[PhysicalDevelopment] [text] NULL,
	[AdaptiveDevelopment] [text] NULL,
	[OtherDevelopment] [text] NULL,
	[EvaluationDate1] [datetime] NULL,
	[EvaluationAge1] [varchar](2) NULL,
	[EvaluationProcedures1] [text] NULL,
	[EvaluationResults1] [varchar](255) NULL,
	[EvaluationAdmin1] [varchar](50) NULL,
	[EvaluationDate2] [datetime] NULL,
	[EvaluationAge2] [varchar](2) NULL,
	[EvaluationProcedures2] [text] NULL,
	[EvaluationResults2] [varchar](255) NULL,
	[EvaluationAdmin2] [varchar](50) NULL,
	[EvaluationDate3] [datetime] NULL,
	[EvaluationAge3] [varchar](2) NULL,
	[EvaluationProcedures3] [text] NULL,
	[EvaluationResults3] [varchar](255) NULL,
	[EvaluationAdmin3] [varchar](50) NULL,
	[EvaluationDate4] [datetime] NULL,
	[EvaluationAge4] [varchar](2) NULL,
	[EvaluationProcedures4] [text] NULL,
	[EvaluationResults4] [varchar](255) NULL,
	[EvaluationAdmin4] [varchar](50) NULL,
	[EvaluationDate5] [datetime] NULL,
	[EvaluationAge5] [varchar](2) NULL,
	[EvaluationProcedures5] [text] NULL,
	[EvaluationResults5] [varchar](255) NULL,
	[EvaluationAdmin5] [varchar](50) NULL,
	[MemberEIEligibilityID] [varchar](5) NULL,
	[EligibilityCause] [varchar](50) NULL,
	[ActivitiesToParticipate] [text] NULL,
	[SkillsToLearn] [text] NULL,
	[SupportTools] [text] NULL,
	[OtherReferrals] [text] NULL,
	[OtherInformation] [text] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[WaiverStatus] [int] NULL,
	[PrimaryExceptionality] [int] NULL,
	[OtherExceptionalities] [int] NULL,
	[EvaluationType] [int] NULL,
	[EvaluationResults] [int] NULL,
	[TrackingCategories] [int] NULL,
	[ProcessInitiated] [datetime] NULL,
	[WaiverApproval] [datetime] NULL,
	[Reevaluation] [datetime] NULL,
	[Recertification] [datetime] NULL,
	[MAEligible] [bit] NULL,
	[CardIssueNumber] [varchar](20) NULL,
	[MCINumber] [varchar](20) NULL,
	[MAWAnomeetingdate] [bit] NULL,
	[MAWArefusedtransition] [bit] NULL,
	[MAWAletterdate] [datetime] NULL,
	[MAWAmeetingdate] [datetime] NULL,
	[MAWAdelayreason] [int] NULL,
	[TerminationDate] [datetime] NULL,
	[ReasonForTermination] [int] NULL,
	[MDEDelay] [int] NULL,
	[EIMtgDelay] [int] NULL,
	[DevAge] [varchar](20) NULL,
	[DevDelay] [varchar](20) NULL,
	[StandardDev] [varchar](20) NULL,
	[MDEExamdate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberAssessmentsParticipants]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberAssessmentsParticipants](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberAssessmentsID] [int] NULL,
	[MemberID] [int] NULL,
	[MemberAssociationsID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberAssociations]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberAssociations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[FirstName] [varchar](30) NULL,
	[MiddleInitial] [varchar](30) NULL,
	[LastName] [varchar](30) NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[Address3] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](2) NULL,
	[ZipCode] [varchar](10) NULL,
	[HomePhone] [varchar](16) NULL,
	[HomePhoneExt] [varchar](10) NULL,
	[WorkPhone] [varchar](16) NULL,
	[WorkPhoneExt] [varchar](10) NULL,
	[CellPhone] [varchar](16) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedFrom] [varchar](20) NULL,
	[Active] [bit] NULL,
	[RelationshipID] [int] NULL,
	[CountyCode] [varchar](4) NULL,
	[CountyName] [varchar](30) NULL,
	[LegalCustody] [bit] NULL,
	[PhysicalCustody] [bit] NULL,
	[PowerOfAttorney] [bit] NULL,
	[LegalGuardian] [bit] NULL,
	[FinancialGuardian] [bit] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[Release] [bit] NULL,
	[ReleaseDate] [datetime] NULL,
	[EmergencyContact] [bit] NULL,
	[Agency] [varchar](50) NULL,
	[NOTES] [text] NULL,
	[MailingAddress] [bit] NULL,
	[ExpirationDate] [datetime] NULL,
	[Gender] [varchar](1) NULL,
	[DOB] [datetime] NULL,
	[Race] [int] NULL,
	[MaritalStatus] [int] NULL,
	[School] [int] NULL,
	[Grade] [varchar](10) NULL,
	[RelateToFamily] [bit] NULL,
	[SSN] [varchar](12) NULL,
	[Ethnicity] [int] NULL,
	[Religion] [int] NULL,
	[CYANotActive] [bit] NULL,
	[AssumedDOB] [bit] NULL,
	[EmailAddress] [varchar](100) NULL,
	[MAPPRCase] [varchar](50) NULL,
	[Caseworker] [varchar](50) NULL,
	[CYA] [bit] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[FamilyID] [int] NULL,
	[SchoolName] [varchar](100) NULL,
	[WorkplaceName] [varchar](100) NULL,
 CONSTRAINT [PK_MemberAssociations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberCaseRecordStatus]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberCaseRecordStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[Division] [char](3) NULL,
	[RecordDate] [datetime] NULL,
	[RecordStatusID] [int] NULL,
	[RecordStatusDate] [datetime] NULL,
	[SignOutStaffName] [varchar](50) NULL,
	[SignOutDate] [datetime] NULL,
	[SignInDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
 CONSTRAINT [PK_MemberCaseRecordStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberCMSCHistory]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberCMSCHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Division] [varchar](10) NULL,
	[MemberID] [int] NOT NULL,
	[SystemOfCare] [int] NULL,
	[CMSCID] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[CMSCPosition] [int] NULL,
	[CMSCSupervisor] [int] NULL,
	[ReferIntakeAssignment] [varchar](6) NULL,
	[CaseOpenDate] [datetime] NULL,
	[CaseCloseDate] [datetime] NULL,
	[CaseCloseReasonID] [int] NULL,
	[TransferReasonID] [int] NULL,
	[TransferEffectiveDate] [datetime] NULL,
	[TransferReceivingOrganization] [varchar](50) NULL,
 CONSTRAINT [PK_MemberCMSCHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberDiagnosis]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberDiagnosis](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[IntakeID] [int] NULL,
	[Physician] [varchar](50) NULL,
	[Date] [datetime] NULL,
	[Phone] [varchar](15) NULL,
	[AXIS1Desc1] [varchar](100) NULL,
	[AXIS1Desc2] [varchar](100) NULL,
	[AXIS1Desc3] [varchar](100) NULL,
	[AXIS1Desc4] [varchar](100) NULL,
	[AXIS1Desc5] [varchar](100) NULL,
	[AXIS1Desc6] [varchar](100) NULL,
	[AXIS1Desc7] [varchar](100) NULL,
	[AXIS1Desc8] [varchar](100) NULL,
	[AXIS1DSMCODE1] [varchar](6) NULL,
	[AXIS1DSMCODE2] [varchar](6) NULL,
	[AXIS1DSMCODE3] [varchar](6) NULL,
	[AXIS1DSMCODE4] [varchar](6) NULL,
	[AXIS1DSMCODE5] [varchar](6) NULL,
	[AXIS1DSMCODE6] [varchar](6) NULL,
	[AXIS1DSMCODE7] [varchar](6) NULL,
	[AXIS1DSMCODE8] [varchar](6) NULL,
	[AXIS1ICDCODE1] [varchar](6) NULL,
	[AXIS1ICDCODE2] [varchar](6) NULL,
	[AXIS1ICDCODE3] [varchar](6) NULL,
	[AXIS1ICDCODE4] [varchar](6) NULL,
	[AXIS1ICDCODE5] [varchar](6) NULL,
	[AXIS1ICDCODE6] [varchar](6) NULL,
	[AXIS1ICDCODE7] [varchar](6) NULL,
	[AXIS1ICDCODE8] [varchar](6) NULL,
	[AXIS2MR] [int] NULL,
	[AXIS2IQ] [int] NULL,
	[AXIS2PerTrait] [int] NULL,
	[AXIS2Other] [int] NULL,
	[AXIS4] [text] NULL,
	[AXIS5Current] [int] NULL,
	[AXIS5History] [int] NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedFrom] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AXIS2Desc1] [varchar](100) NULL,
	[AXIS2Desc2] [varchar](100) NULL,
	[AXIS2Desc3] [varchar](100) NULL,
	[AXIS2Desc4] [varchar](100) NULL,
	[AXIS2DSMCODE1] [varchar](6) NULL,
	[AXIS2DSMCODE2] [varchar](6) NULL,
	[AXIS2DSMCODE3] [varchar](6) NULL,
	[AXIS2DSMCODE4] [varchar](6) NULL,
	[AXIS2ICDCODE1] [varchar](6) NULL,
	[AXIS2ICDCODE2] [varchar](6) NULL,
	[AXIS2ICDCODE3] [varchar](6) NULL,
	[AXIS2ICDCODE4] [varchar](6) NULL,
	[Axis4RadioButton] [varchar](20) NULL,
	[division] [varchar](4) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[AXIS3Desc1] [varchar](100) NULL,
	[AXIS3Desc2] [varchar](100) NULL,
	[AXIS3Desc3] [varchar](100) NULL,
	[AXIS3Desc4] [varchar](100) NULL,
	[AXIS3ICDCODE1] [varchar](6) NULL,
	[AXIS3ICDCODE2] [varchar](6) NULL,
	[AXIS3ICDCODE3] [varchar](6) NULL,
	[AXIS3ICDCODE4] [varchar](6) NULL,
	[AXIS1ICD10CODE1] [varchar](10) NULL,
	[AXIS1ICD10CODE2] [varchar](10) NULL,
	[AXIS1ICD10CODE3] [varchar](10) NULL,
	[AXIS1ICD10CODE4] [varchar](10) NULL,
	[AXIS1ICD10CODE5] [varchar](10) NULL,
	[AXIS1ICD10CODE6] [varchar](10) NULL,
	[AXIS1ICD10CODE7] [varchar](10) NULL,
	[AXIS1ICD10CODE8] [varchar](10) NULL,
	[AXIS2ICD10CODE1] [varchar](10) NULL,
	[AXIS2ICD10CODE2] [varchar](10) NULL,
	[AXIS2ICD10CODE3] [varchar](10) NULL,
	[AXIS2ICD10CODE4] [varchar](10) NULL,
	[AXIS3ICD10CODE1] [varchar](10) NULL,
	[AXIS3ICD10CODE2] [varchar](10) NULL,
	[AXIS3ICD10CODE3] [varchar](10) NULL,
	[AXIS3ICD10CODE4] [varchar](10) NULL,
	[AXIS1ICD10Desc1] [varchar](100) NULL,
	[AXIS1ICD10Desc2] [varchar](100) NULL,
	[AXIS1ICD10Desc3] [varchar](100) NULL,
	[AXIS1ICD10Desc4] [varchar](100) NULL,
	[AXIS1ICD10Desc5] [varchar](100) NULL,
	[AXIS1ICD10Desc6] [varchar](100) NULL,
	[AXIS1ICD10Desc7] [varchar](100) NULL,
	[AXIS1ICD10Desc8] [varchar](100) NULL,
	[AXIS2ICD10Desc1] [varchar](100) NULL,
	[AXIS2ICD10Desc2] [varchar](100) NULL,
	[AXIS2ICD10Desc3] [varchar](100) NULL,
	[AXIS2ICD10Desc4] [varchar](100) NULL,
	[AXIS3ICD10Desc1] [varchar](100) NULL,
	[AXIS3ICD10Desc2] [varchar](100) NULL,
	[AXIS3ICD10Desc3] [varchar](100) NULL,
	[AXIS3ICD10Desc4] [varchar](100) NULL,
 CONSTRAINT [PK_MemberDiagnosis] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberDiagnosisDetail]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberDiagnosisDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DIAGNOSISID] [int] NULL,
	[ICD9CODE] [varchar](10) NULL,
	[ICD10CODE] [varchar](10) NULL,
	[DSM5DIAGNOSIS] [varchar](500) NULL,
	[PREDECESSOR] [varchar](500) NULL,
	[SPECIFIERNOTES] [varchar](max) NULL,
	[DIAGNOSISORDER] [int] NULL,
	[CREATEDBY] [varchar](20) NULL,
	[CREATEDDATE] [datetime] NULL,
	[UPDATEDBY] [varchar](20) NULL,
	[UPDATEDDATE] [datetime] NULL,
	[ICD10DESCRIPTION] [varchar](500) NULL,
	[MEMBERID] [int] NULL,
	[TRACKINGID] [int] NULL,
	[EVALUATIONDATE] [datetime] NULL,
	[AFFIRMED] [bit] NOT NULL,
 CONSTRAINT [PK_MemberDiagnosisDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MEMBERDIAGNOSISICD10]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MEMBERDIAGNOSISICD10](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MEMBERID] [int] NULL,
	[PHONE] [varchar](15) NULL,
	[PHYSICIAN] [varchar](50) NULL,
	[EVALUATIONDATE] [datetime] NULL,
	[WHODASSCORE] [varchar](20) NULL,
	[WHODASOTHER] [varchar](20) NULL,
	[NOTES] [varchar](max) NULL,
	[CREATEDBY] [varchar](20) NULL,
	[CREATEDDATE] [datetime] NULL,
	[UPDATEDBY] [varchar](20) NULL,
	[UPDATEDDATE] [datetime] NULL,
 CONSTRAINT [PK_MEMBERDIAGNOSISICD10] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberEIEligibility]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberEIEligibility](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EligibilityID] [varchar](5) NULL,
	[IsEligible] [bit] NULL,
	[Cause] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberEIServiceRequest]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberEIServiceRequest](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[EiContractServicesID] [int] NULL,
	[IFSPStartDate] [datetime] NULL,
	[FrequencyOfDelivery4Week] [bit] NULL,
	[FrequencyOfDelivery4EOW] [bit] NULL,
	[FrequencyOfDelivery4Month] [bit] NULL,
	[FrequencyOfDelivery6Month] [bit] NULL,
	[FrequencyOfDeliveryOther] [bit] NULL,
	[FrequencyOfDeliveryText] [varchar](256) NULL,
	[FemaleOnly] [bit] NULL,
	[MaleOnly] [bit] NULL,
	[HearingLoss] [bit] NULL,
	[DegreeOfHearingLossMild] [bit] NULL,
	[DegreeOfHearingLossModerate] [bit] NULL,
	[DegreeOfHearingLossSevere] [bit] NULL,
	[DegreeOfHearingLossProfound] [bit] NULL,
	[AidForHearing] [bit] NULL,
	[Cochlear] [bit] NULL,
	[HearingAid] [bit] NULL,
	[Other] [bit] NULL,
	[SpecifyTypeUsedAidForHearingText] [text] NULL,
	[HearingMethodology] [bit] NULL,
	[HearingMethodologyText] [text] NULL,
	[VisionLoss] [bit] NULL,
	[Feeding] [bit] NULL,
	[Autism] [bit] NULL,
	[SignificantBehavioralConcerns] [bit] NULL,
	[SignificantBehavioralConcernsText] [text] NULL,
	[FamilyRequiresInterpreter] [bit] NULL,
	[PrimaryCareTakerMemberID] [int] NULL,
	[SecondaryCareTakerMemberID] [int] NULL,
	[Division] [varchar](4) NULL,
	[ProviderDirectAssignmentEiContractServicesID] [int] NULL,
	[FirstSessionNoteReceived] [bit] NULL,
	[ECOTypeNeedEntry] [bit] NULL,
	[ECOTypeNeedExit] [bit] NULL,
	[ECOTypeNeedBoth] [bit] NULL,
	[ECOTypeNeedNone] [bit] NULL,
	[ECOassignmentsInPELICAN] [bit] NULL,
	[ECOassignedInEImonitoring] [bit] NULL,
	[RevokeFirstStep] [bit] NULL,
	[VerifyDatesInPELICAN] [bit] NULL,
	[ServiceNotesCompleted] [bit] NULL,
	[NotifyProviderCannotBill] [bit] NULL,
	[NotesToProviderText] [text] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedFrom] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[PrimaryCareTakerAssociationID] [int] NULL,
	[SecondaryCareTakerAssociationID] [int] NULL,
	[ProviderPreferences] [int] NULL,
	[StatusID] [int] NULL,
	[ProviderID] [int] NULL,
	[MothersID] [int] NULL,
	[FathersID] [int] NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[Address3] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](2) NULL,
	[ZipCode] [varchar](50) NULL,
	[CountyCode] [varchar](4) NULL,
	[CountyName] [varchar](30) NULL,
	[ReOpeningAndTransfer] [bit] NULL,
	[OunceNeeded] [bit] NULL,
	[TransferringSupportCoordinatorID] [int] NULL,
	[CountyRejectionReasonsID] [int] NULL,
	[CurrentSupportsProviders] [text] NULL,
	[MAFundingSource] [bit] NULL,
	[ITFWaiverFundingSource] [bit] NULL,
	[IEIbaseFundingSource] [bit] NULL,
	[AltAddyForServices] [bit] NULL,
	[PrescriptionLetterReceived] [bit] NULL,
	[SCNotesEntered] [text] NULL,
	[LastPublished] [datetime] NULL,
	[ServiceStart] [datetime] NULL,
	[Entry7] [bit] NULL,
	[Exit1] [bit] NULL,
	[NA] [bit] NULL,
	[RejPriorStatus] [varchar](20) NULL,
	[Both] [bit] NULL,
	[Interventionist] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberEpisode]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberEpisode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[CaseID] [int] NULL,
	[StaffID] [int] NULL,
	[Status] [varchar](1) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CloseReason] [int] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
 CONSTRAINT [PK_MemberEpisode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberIEPAssessment]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberIEPAssessment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberAssessmentsID] [int] NULL,
	[IEPLookupsLookupID] [varchar](5) NULL,
	[IsBlind] [bit] NULL,
	[IsDeaf] [bit] NULL,
	[IsLearningDisabled] [bit] NULL,
	[IsEnglishProficient] [bit] NULL,
	[NeedsIEP] [bit] NULL,
	[NeedsAssistiveTechnology] [bit] NULL,
	[IsTransitioning] [bit] NULL,
	[IsTwoYearsOld] [bit] NULL,
	[IsKindergartenAge] [bit] NULL,
	[HasCommunicationNeeds] [bit] NULL,
	[OutcomeResultsID] [int] NULL,
	[OutcomeGoal] [text] NULL,
	[OutcomeDateDeveloped] [datetime] NULL,
	[OutcomeDateCompleted] [datetime] NULL,
	[CurrentActivity] [text] NULL,
	[TeachingStrategies] [text] NULL,
	[OutcomeMeasurement] [text] NULL,
	[ApprovingEIServices] [varchar](50) NULL,
	[IsInEarlyChildhoodProgram] [bit] NULL,
	[HowManyHoursPerWeek] [int] NULL,
	[IEPPreschoolLocation] [varchar](50) NULL,
	[TypicallyDeveloping] [text] NULL,
	[AreServicesNeeded] [bit] NULL,
	[ServicesReason] [varchar](50) NULL,
	[TransitionGoal] [text] NULL,
	[TransitionActivity] [text] NULL,
	[TransitionCreated] [datetime] NULL,
	[TransitionUpdated] [datetime] NULL,
	[TransitionMeetingDate] [datetime] NULL,
	[TransitionActivityDescription1] [text] NULL,
	[TransitionPerson1] [varchar](50) NULL,
	[TransitionTargetDate1] [datetime] NULL,
	[TransitionCompleteDate1] [datetime] NULL,
	[TransitionActivityDescription2] [text] NULL,
	[TransitionPerson2] [varchar](50) NULL,
	[TransitionTargetDate2] [datetime] NULL,
	[TransitionCompleteDate2] [datetime] NULL,
	[TransitionActivityDescription3] [text] NULL,
	[TransitionPerson3] [varchar](50) NULL,
	[TransitionTargetDate3] [datetime] NULL,
	[TransitionCompleteDate3] [datetime] NULL,
	[TransitionActivityDescription4] [text] NULL,
	[TransitionPerson4] [varchar](50) NULL,
	[TransitionTargetDate4] [datetime] NULL,
	[TransitionCompleteDate4] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberInsurance]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberInsurance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[relationToPolicyHolder] [int] NULL,
	[mhCoverage] [bit] NULL,
	[rxCoverage] [bit] NULL,
	[sequence] [int] NULL,
	[carrierName] [varchar](50) NULL,
	[copayAmount] [money] NULL,
	[copayPercentage] [numeric](18, 0) NULL,
	[effectiveStart] [datetime] NULL,
	[effectiveEnd] [datetime] NULL,
	[employerName] [varchar](50) NULL,
	[policyHolderName] [varchar](50) NULL,
	[policyHolderSSN] [varchar](11) NULL,
	[policyNumber] [varchar](50) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](50) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[deductable] [money] NULL,
	[carrierType] [int] NULL,
	[otherRelationship] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberIntake]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberIntake](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[CaseID] [int] NULL,
	[EpisodeID] [int] NULL,
	[Division] [varchar](10) NULL,
	[ActionType] [int] NULL,
	[IntakeType] [int] NULL,
	[ActionStartDate] [datetime] NULL,
	[ActionTargetDate] [datetime] NULL,
	[ActionEndDate] [datetime] NULL,
	[ActionDescription] [varchar](255) NULL,
	[ActionComment] [text] NULL,
	[Priority] [int] NULL,
	[AssignedStaffID] [int] NULL,
	[ActionTakenDescription] [varchar](255) NULL,
	[ActionTakenComment] [text] NULL,
	[AssessmentDescription] [varchar](255) NULL,
	[AssessmentComment] [text] NULL,
	[NoteDescription] [varchar](255) NULL,
	[NoteComment] [text] NULL,
	[ClosureType] [int] NULL,
	[CompletedStaffID] [int] NULL,
	[ActionAgency] [int] NULL,
	[ReferralAgency] [int] NULL,
	[ReferralReason] [int] NULL,
	[ReferralReason2] [int] NULL,
	[ReferralSource] [int] NULL,
	[ResponseLevel] [int] NULL,
	[SystemOfCare] [int] NULL,
	[ReferralAssignment] [int] NULL,
	[IntakeAssignment] [int] NULL,
	[DiagnosisScale] [int] NULL,
	[NumFunctionRating] [float] NULL,
	[AlphFunctionRating] [varchar](20) NULL,
	[DiagRatingIndicator] [int] NULL,
	[DiagnosisCode1] [varchar](10) NULL,
	[DiagnosisCode2] [varchar](10) NULL,
	[DiagnosisCode3] [varchar](10) NULL,
	[DiagnosisCode4] [varchar](10) NULL,
	[AdmissionType] [int] NULL,
	[AdmissionOfAge] [varchar](3) NULL,
	[AdmissionStartDate] [datetime] NULL,
	[AdmissionEndDate] [datetime] NULL,
	[EmploymentStatus] [int] NULL,
	[PrivateInsurance] [bit] NULL,
	[MedicareEligible] [bit] NULL,
	[MedicaidEligible] [bit] NULL,
	[InsuranceNumber] [varchar](30) NULL,
	[LiabilityAmount] [numeric](16, 8) NULL,
	[LiabilityDue] [numeric](16, 8) NULL,
	[ProviderID] [int] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[Committed] [bit] NULL,
	[TerminationNotes] [text] NULL,
	[IntakeNotes] [text] NULL,
	[TerminationDate] [datetime] NULL,
	[IntakeDate] [datetime] NULL,
	[DIV] [varchar](6) NULL,
	[IntakeTerminationReason] [int] NULL,
	[ScreeningID] [int] NULL,
	[IntakeTerminationDate] [datetime] NULL,
 CONSTRAINT [PK_MemberIntake] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberIntakeScreening]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberIntakeScreening](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[CaseID] [int] NULL,
	[FamilyID] [int] NULL,
	[Division] [varchar](10) NULL,
	[CPSNumber] [varchar](10) NULL,
	[ReferralSource] [int] NULL,
	[ReferralReason] [int] NULL,
	[ReferentRelation] [int] NULL,
	[ReferentPhone] [varchar](16) NULL,
	[SpecificAllegations] [text] NULL,
	[Referent] [varchar](50) NULL,
	[ScreeningDate] [datetime] NULL,
	[CYMenu] [bit] NULL,
	[AbuseRids] [bit] NULL,
	[InquiryRids] [bit] NULL,
	[ScreeningLog] [bit] NULL,
	[CIS] [bit] NULL,
	[Prothonotary] [bit] NULL,
	[ClerkOfCourts] [bit] NULL,
	[OtherHistory] [bit] NULL,
	[OtherDescription] [varchar](50) NULL,
	[CustodyIssues] [bit] NULL,
	[DomesticViolence] [bit] NULL,
	[PhysicalMistreatment] [bit] NULL,
	[Housing] [bit] NULL,
	[HygieneIssues] [bit] NULL,
	[InappropriateParentingSkills] [bit] NULL,
	[LackOfBasicNeeds] [bit] NULL,
	[LackOfCommunitySupport] [bit] NULL,
	[DrugAlcohol] [bit] NULL,
	[LackOfSupervision] [bit] NULL,
	[MedicalNeglect] [bit] NULL,
	[MHParentChild] [bit] NULL,
	[ParentChildConflict] [bit] NULL,
	[SexualMistreatment] [bit] NULL,
	[LackOfFamilySupport] [bit] NULL,
	[SchoolProblems] [bit] NULL,
	[TeenPregnancy] [bit] NULL,
	[Truancy] [bit] NULL,
	[OtherReferralReason] [bit] NULL,
	[OtherReferralReasonDescription] [varchar](50) NULL,
	[TypeOfMaltreatment] [text] NULL,
	[NatureOfMaltreatment] [text] NULL,
	[FamilyStrengthsProtectiveCapacities] [text] NULL,
	[ImminentPresentDanger] [text] NULL,
	[ScreenerRiskAssessment] [varchar](50) NULL,
	[ScreenerDisposition] [varchar](50) NULL,
	[SupervisorDisposition] [varchar](50) NULL,
	[ScreenerRiskDescription] [text] NULL,
	[SupervisorRiskDescription] [text] NULL,
	[ScreenerCommReferral] [text] NULL,
	[SupervisorCommReferral] [text] NULL,
	[ReasonForOverride] [text] NULL,
	[ReviewDate] [datetime] NULL,
	[ReferralDate] [datetime] NULL,
	[ReviewingSupervisor] [int] NULL,
	[AssignedCaseWorker] [int] NULL,
	[ResponseTag] [varchar](50) NULL,
	[OtherResponseDescription] [text] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
 CONSTRAINT [PK_MemberIntakeScreening] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberLivingAssessment]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberLivingAssessment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[LivingArrangementID] [int] NOT NULL,
	[LivingArrangementNotes] [text] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedFrom] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberMain]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberMain](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](30) NULL,
	[MiddleInitial] [varchar](30) NULL,
	[LastName] [varchar](30) NULL,
	[Prefix] [varchar](10) NULL,
	[Suffix] [varchar](10) NULL,
	[BSUNumber] [varchar](16) NULL,
	[CISNumber] [varchar](16) NULL,
	[SSN] [varchar](12) NULL,
	[DOB] [datetime] NULL,
	[Gender] [varchar](1) NULL,
	[Race01] [varchar](1) NULL,
	[Race02] [varchar](1) NULL,
	[Race03] [varchar](1) NULL,
	[Race04] [varchar](1) NULL,
	[Race05] [varchar](1) NULL,
	[Ethnicity] [varchar](1) NULL,
	[MaritalStatus] [int] NULL,
	[PrimaryLanguage] [int] NULL,
	[Religion] [int] NULL,
	[Citizen] [bit] NULL,
	[CitizenDate] [datetime] NULL,
	[Type] [varchar](20) NULL,
	[SpecialPopulation01] [varchar](2) NULL,
	[SpecialPopulation02] [varchar](2) NULL,
	[SpecialPopulation03] [varchar](2) NULL,
	[SpecialPopulation04] [varchar](2) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[AssumedDOB] [bit] NULL,
	[MR] [bit] NULL,
	[MH] [bit] NULL,
	[CY] [bit] NULL,
	[EI] [bit] NULL,
	[Crisis] [bit] NULL,
	[DA] [bit] NULL,
	[SO] [bit] NULL,
	[Pharmacy] [bit] NULL,
	[MHCM] [int] NULL,
	[MRCM] [int] NULL,
	[EICM] [int] NULL,
	[SOCM] [int] NULL,
	[CYCM] [int] NULL,
	[DACM] [int] NULL,
	[CRISISCM] [int] NULL,
	[PRIORMHCM] [int] NULL,
	[PRIORMRCM] [int] NULL,
	[PRIOREICM] [int] NULL,
	[PRIORSOCM] [int] NULL,
	[PRIORCYCM] [int] NULL,
	[PRIORDACM] [int] NULL,
	[PRIORCRISISCM] [int] NULL,
	[MAIDNUM] [varchar](20) NULL,
	[MCINUM] [varchar](20) NULL,
	[MHXNUM] [varchar](20) NULL,
	[MRXNUM] [varchar](20) NULL,
	[EIXNUM] [varchar](20) NULL,
	[ClosureDate] [datetime] NULL,
	[ClosureReason] [int] NULL,
	[ReceivingOrganization] [varchar](20) NULL,
	[TransferReason] [int] NULL,
	[TransferEffectiveDate] [datetime] NULL,
	[DrugOfChoice] [int] NULL,
	[DrugOfChoice2] [int] NULL,
	[CBHNP] [bit] NULL,
	[MA] [bit] NULL,
	[BillingEligible] [bit] NULL,
	[veteran] [bit] NULL,
	[MergedMemberID] [int] NULL,
	[CYMenu] [bit] NULL,
	[AbuseRids] [bit] NULL,
	[InquiryRids] [bit] NULL,
	[ScreeningLog] [bit] NULL,
	[CIS] [bit] NULL,
	[Prothonotary] [bit] NULL,
	[ClerkOfCourts] [bit] NULL,
	[Other] [bit] NULL,
	[OtherDescription] [text] NULL,
	[CD] [varchar](20) NULL,
	[PAGENUMBER] [varchar](20) NULL,
	[LegalCustody] [bit] NULL,
	[PhysicalCustody] [bit] NULL,
	[PowerOfAttorney] [bit] NULL,
	[LegalGuardian] [bit] NULL,
	[FinancialGuardian] [bit] NULL,
	[Release] [bit] NULL,
	[EmergencyContact] [bit] NULL,
	[Agency] [varchar](50) NULL,
	[Notes] [varchar](max) NULL,
	[Grade] [varchar](10) NULL,
	[PreviousMemberID] [int] NULL,
	[MAPPRCase] [varchar](50) NULL,
	[Caseworker] [varchar](10) NULL,
	[EverAdopted] [bit] NULL,
	[AdoptedAge] [int] NULL,
	[DeceasedDate] [datetime] NULL,
	[JCMS] [varchar](16) NULL,
	[SchoolName] [varchar](100) NULL,
	[WorkplaceName] [varchar](100) NULL,
	[UnableToDetermine] [bit] NULL,
	[HasChildEverBeenAdopted] [varchar](1) NULL,
	[CWISParticipantID] [int] NULL,
	[CWISAnonymous] [bit] NULL,
	[CWISConfidential] [bit] NULL,
	[CWISPersonNotExist] [bit] NULL,
	[CWISUnknownDOB] [bit] NULL,
	[CWISUnknownSSN] [bit] NULL,
	[CWISEstimatedDOD] [bit] NULL,
	[CWISMilitaryCode] [varchar](3) NULL,
	[CWISEducationLevelCode] [varchar](3) NULL,
	[CWISEmploymentLevelCode] [varchar](3) NULL,
	[CWISChildLivingArrangementCode] [varchar](3) NULL,
	[CWISGenderNotReported] [bit] NULL,
	[GuardianPrimaryLanguage] [int] NULL,
	[requiresCo] [bit] NULL,
	[NameChangeDate] [datetime] NULL,
 CONSTRAINT [PK_MemberMain] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberMedications]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberMedications](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[division] [varchar](4) NULL,
	[status] [varchar](1) NULL,
	[medID] [varchar](6) NULL,
	[medDescription] [varchar](30) NULL,
	[medDate] [datetime] NULL,
	[refillDate] [datetime] NULL,
	[dosageAmount] [numeric](8, 2) NULL,
	[dosageUnit] [varchar](4) NULL,
	[numberUnits] [varchar](4) NULL,
	[numberRefills] [varchar](4) NULL,
	[freqCode] [varchar](6) NULL,
	[freqDescription] [varchar](50) NULL,
	[routeCode] [varchar](3) NULL,
	[routeDescription] [varchar](30) NULL,
	[comments] [text] NULL,
	[physician] [varchar](5) NULL,
	[physicianName] [varchar](50) NULL,
	[specialty] [varchar](50) NULL,
	[beginDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberPrison]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberPrison](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[Division] [varchar](4) NULL,
	[FacilityName] [varchar](255) NULL,
	[FacilityAddress] [varchar](100) NULL,
	[FacilityCity] [varchar](50) NULL,
	[FacilityState] [varchar](2) NULL,
	[FacilityZipCode] [varchar](10) NULL,
	[FacilityPhoneNumber] [varchar](20) NULL,
	[FacilityContactName] [varchar](50) NULL,
	[AdmissionDate] [datetime] NULL,
	[AdmissionReason] [varchar](50) NULL,
	[DischargeDate] [datetime] NULL,
	[NumberDays] [varchar](30) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberProvider]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberProvider](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[ProviderID] [int] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
 CONSTRAINT [PK_MemberProvider] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MHLiability]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MHLiability](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[IgnoreIncome] [bit] NULL,
	[IgnoreIncomeReason] [varchar](50) NULL,
	[FormSigned] [bit] NULL,
	[DateFormSigned] [datetime] NULL,
	[TotDependents] [int] NULL,
	[TotalIncome] [numeric](16, 8) NULL,
	[TotalDeductions] [numeric](16, 8) NULL,
	[AdjFamilyIncome] [numeric](16, 8) NULL,
	[NRMaxLiab] [numeric](16, 8) NULL,
	[RMaxLiab] [numeric](16, 8) NULL,
	[CreatedBy] [varchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](30) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Division] [varchar](4) NULL,
	[Copay] [numeric](16, 8) NULL,
	[NRCopay] [numeric](16, 8) NULL,
	[ResCopay] [numeric](16, 8) NULL,
	[CalcMethod] [int] NULL,
	[Comment] [varchar](100) NULL,
	[BypassOption] [int] NULL,
	[BadDebt] [bit] NULL,
	[Abatement] [bit] NULL,
	[MedicalHardship] [bit] NULL,
	[OvrdClinicalAmt] [numeric](16, 8) NULL,
	[OvrdResidentialAmt] [numeric](16, 8) NULL,
	[RevisedDate] [datetime] NULL,
	[RevisedReason] [varchar](250) NULL,
	[SignaturesHistoryMemberID] [int] NULL,
	[SignaturesHistoryUserID] [int] NULL,
	[SignaturesHistoryWitnessID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MHLiabilityDeductions]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MHLiabilityDeductions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[MHLiabilityID] [int] NULL,
	[DeductionPerson] [int] NULL,
	[DeductionType] [int] NULL,
	[DeductionSource] [varchar](30) NULL,
	[DeductionAmount] [numeric](16, 8) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[Frequency] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MHLiabilityDeductionsDeleted]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MHLiabilityDeductionsDeleted](
	[ID] [int] NOT NULL,
	[MemberID] [int] NULL,
	[MHLiabilityID] [int] NULL,
	[DeductionPerson] [int] NULL,
	[DeductionType] [int] NULL,
	[DeductionSource] [varchar](30) NULL,
	[DeductionAmount] [numeric](16, 8) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[Frequency] [int] NULL,
 CONSTRAINT [PK_MHLiabilityDeductionsDeleted] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MHLiabilityIncome]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MHLiabilityIncome](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[MHLiabilityID] [int] NULL,
	[IncomePerson] [int] NULL,
	[IncomeType] [int] NULL,
	[IncomeSource] [varchar](20) NULL,
	[IncomeAmount] [numeric](16, 8) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](30) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[Frequency] [int] NULL,
	[IgnoreIncome] [bit] NULL,
	[IgnoreReason] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MHLiabilityRevisionHistory]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MHLiabilityRevisionHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LiabilityID] [int] NULL,
	[IgnoreIncome] [bit] NULL,
	[IgnoreIncomeReason] [varchar](50) NULL,
	[FormSigned] [bit] NULL,
	[DateFormSigned] [datetime] NULL,
	[TotDependents] [int] NULL,
	[TotalIncome] [numeric](16, 8) NULL,
	[TotalDeductions] [numeric](16, 8) NULL,
	[AdjFamilyIncome] [numeric](16, 8) NULL,
	[NRMaxLiab] [numeric](16, 8) NULL,
	[RMaxLiab] [numeric](16, 8) NULL,
	[CreatedBy] [varchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](30) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Division] [varchar](4) NULL,
	[Copay] [numeric](16, 8) NULL,
	[NRCopay] [numeric](16, 8) NULL,
	[ResCopay] [numeric](16, 8) NULL,
	[CalcMethod] [int] NULL,
	[Comment] [varchar](250) NULL,
	[BypassOption] [int] NULL,
	[BadDebt] [bit] NULL,
	[Abatement] [bit] NULL,
	[MedicalHardship] [bit] NULL,
	[OvrdClinicalAmt] [numeric](16, 8) NULL,
	[OvrdResidentialAmt] [numeric](16, 8) NULL,
	[RevisedDate] [datetime] NULL,
	[RevisedReason] [varchar](250) NULL,
	[SignaturesHistoryMemberID] [int] NULL,
	[SignaturesHistoryUserID] [int] NULL,
	[SignaturesHistoryWitnessID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MHLiabilityServices]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MHLiabilityServices](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MHLiablePerson]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MHLiablePerson](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[MHLiabilityID] [int] NULL,
	[Dependent] [bit] NULL,
	[RelationType] [int] NULL,
	[RelationName] [varchar](30) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[rUpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRBaseFundingType]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRBaseFundingType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FundingType] [nvarchar](50) NULL,
	[FundingCat] [nvarchar](50) NULL,
 CONSTRAINT [PK_MRBaseFundingType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRBaseFundTimePeriod]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRBaseFundTimePeriod](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FundTime] [nvarchar](50) NULL,
	[TimeCat] [nvarchar](50) NULL,
 CONSTRAINT [PK_MRBaseFundTimePeriod] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRBaseFY]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRBaseFY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Desc] [varchar](10) NULL,
	[SDate] [datetime] NULL,
	[EDate] [datetime] NULL,
	[SortOrder] [int] NULL,
 CONSTRAINT [PK_MRBaseFY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRBaseIBRFigures]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRBaseIBRFigures](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FYID] [int] NULL,
	[BaseWithMatch] [money] NULL,
	[AdminExp] [money] NULL,
	[TSM] [money] NULL,
	[SCOExp] [money] NULL,
	[AvailAnnual] [money] NULL,
	[Avail1TimeOnly] [money] NULL,
	[Comments] [varchar](256) NULL,
	[LastUpdatedBy] [varchar](50) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_MRBaseIBRFigures] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRBaseServiceProjections]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRBaseServiceProjections](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FundingTimeID] [int] NULL,
	[FundID] [int] NULL,
	[ServiceID] [int] NULL,
	[ProcCode] [varchar](10) NULL,
	[ProviderID] [int] NULL,
	[CBHNPProvID] [int] NULL,
	[UnitTypeID] [int] NULL,
	[Units] [int] NULL,
	[Rate] [decimal](38, 19) NULL,
	[TotalExp] [money] NULL,
	[SDate] [date] NULL,
	[EDate] [date] NULL,
	[Auth] [int] NULL,
	[MemberID] [int] NULL,
	[FYID] [int] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[Description] [varchar](50) NULL,
	[ApprovalDate] [datetime] NULL,
	[InvoiceID] [int] NULL,
	[InvoiceNumber] [nvarchar](50) NULL,
	[ProvLocationID] [int] NULL,
 CONSTRAINT [PK_MRBaseServiceProjections] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRBaseUnitType]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRBaseUnitType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UnitType] [nvarchar](50) NULL,
 CONSTRAINT [PK_MRBaseUnitType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderName] [varchar](60) NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](2) NULL,
	[ZipCode] [varchar](10) NULL,
	[Phone] [varchar](16) NULL,
	[Fax] [varchar](16) NULL,
	[WebSite] [varchar](255) NULL,
	[Active] [bit] NULL,
	[FederalIDNumber] [varchar](20) NULL,
	[CountyVendorNumber] [varchar](20) NULL,
	[PointOfContact] [varchar](50) NULL,
	[POCPhone] [varchar](16) NULL,
	[POCFax] [varchar](16) NULL,
	[POCEmail] [varchar](255) NULL,
	[MANumber] [varchar](20) NULL,
	[99Number] [varchar](20) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdateBy] [varchar](20) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateFrom] [varchar](20) NULL,
	[Notes] [text] NULL,
	[FundingStreamID] [int] NULL,
	[Spec1] [varchar](3) NULL,
	[Spec2] [varchar](3) NULL,
	[Spec3] [varchar](3) NULL,
	[MedDeg] [varchar](3) NULL,
	[ProvType] [varchar](2) NULL,
	[ProfitStatusID] [int] NULL,
	[VCSAddress1] [varchar](50) NULL,
	[VCSAddress2] [varchar](50) NULL,
	[VCSCity] [varchar](50) NULL,
	[VCSState] [varchar](2) NULL,
	[VCSZip] [varchar](10) NULL,
	[VNAddress1] [varchar](50) NULL,
	[VNAddress2] [varchar](50) NULL,
	[VNCity] [varchar](50) NULL,
	[VNState] [varchar](2) NULL,
	[VNZip] [varchar](10) NULL,
	[Incstate] [varchar](2) NULL,
	[SecondVendorName] [varchar](50) NULL,
	[VCSPhone] [varchar](16) NULL,
	[VCSFax] [varchar](16) NULL,
	[VNPhone] [varchar](16) NULL,
	[VNFax] [varchar](16) NULL,
	[MPI] [varchar](20) NULL,
	[NPI] [varchar](20) NULL,
	[AllowLiabilityInClaims] [bit] NULL,
	[POCExt] [varchar](7) NULL,
	[VPPOBExt] [varchar](7) NULL,
	[TaxonomyID] [int] NULL,
	[PayToProviderForPeoplesoft] [bit] NULL,
	[Division] [int] NULL,
	[BusinessAssociateAgreementDate] [datetime] NULL,
 CONSTRAINT [IX_ProviderID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProviderLocation]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProviderLocation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderID] [int] NOT NULL,
	[Description] [varchar](50) NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](2) NULL,
	[ZipCode] [varchar](10) NULL,
	[PointOfContact] [varchar](50) NULL,
	[POCPhone] [varchar](16) NULL,
	[POCFax] [varchar](16) NULL,
	[POCEmail] [varchar](255) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[Spec1] [varchar](3) NULL,
	[Spec2] [varchar](3) NULL,
	[Spec3] [varchar](3) NULL,
	[MedDeg] [varchar](3) NULL,
	[ProvType] [varchar](3) NULL,
	[MALocationCode] [varchar](4) NULL,
	[FFS] [bit] NULL,
	[ProviderCategory] [varchar](1) NULL,
	[ProgramFunded] [bit] NULL,
	[CAUID] [varchar](20) NULL,
	[POCExt] [varchar](7) NULL,
	[VendorLocID] [int] NULL,
	[SchoolDistrict] [varchar](40) NULL,
	[TotalBeds] [int] NULL,
	[White] [bit] NULL,
	[Asian] [bit] NULL,
	[Black] [bit] NULL,
	[AmericanIndian] [bit] NULL,
	[Hawaiian] [bit] NULL,
	[Other] [bit] NULL,
	[Male] [bit] NULL,
	[Female] [bit] NULL,
	[MaleAges] [varchar](60) NULL,
	[FemleAges] [varchar](60) NULL,
	[PhysicallyAbused] [bit] NULL,
	[SexuallyAbused] [bit] NULL,
	[HeartMonitor] [bit] NULL,
	[PhysicalDisable] [bit] NULL,
	[EmotionallyDisturbed] [bit] NULL,
	[BehavioralDisorders] [bit] NULL,
	[AIDS] [bit] NULL,
	[Notes] [varchar](max) NULL,
	[VendorID] [varchar](50) NULL,
	[FosterFamilyStruct] [int] NULL,
	[Race1stCaretaker] [int] NULL,
	[Ethnicity1stCaretaker] [int] NULL,
	[Race2ndCaretaker] [int] NULL,
	[Ethnicity2ndCaretaker] [int] NULL,
	[CaretakerBirthYr1st] [varchar](4) NULL,
	[CaretakerBirthYr2nd] [varchar](4) NULL,
	[CYAAdoptMotherID] [int] NULL,
	[CYAAdoptFatherID] [int] NULL,
	[CYAAdoptFamilyStructID] [int] NULL,
	[ChildrenUnder18] [varchar](10) NULL,
	[Race1stCaretakerAmericanIndian] [bit] NULL,
	[Race1stCaretakerAsian] [bit] NULL,
	[Race1stCaretakerBlack] [bit] NULL,
	[Race1stCaretakerNativeHawaiian] [bit] NULL,
	[Race1stCaretakerWhite] [bit] NULL,
	[Race1stCaretakerOther] [bit] NULL,
	[Race2ndCaretakerAmericanIndian] [bit] NULL,
	[Race2ndCaretakerAsian] [bit] NULL,
	[Race2ndCaretakerBlack] [bit] NULL,
	[Race2ndCaretakerNativeHawaiian] [bit] NULL,
	[Race2ndCaretakerWhite] [bit] NULL,
	[Race2ndCaretakerOther] [bit] NULL,
 CONSTRAINT [IX_ProviderLocationID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProviderLocationIVE]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProviderLocationIVE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PLID] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
 CONSTRAINT [PK_ProviderLocationIVE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProviderLocationLicense]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProviderLocationLicense](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderLocationID] [int] NULL,
	[StatusStartDate] [datetime] NULL,
	[StatusEndDate] [datetime] NULL,
	[LicenseApprovalDate] [datetime] NULL,
	[LicenseTerminationDate] [datetime] NULL,
	[LocationStatus] [int] NULL,
	[LicenseNumber] [varchar](20) NULL,
	[OtherStatusComment] [text] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[TitleIVE] [bit] NULL,
 CONSTRAINT [PK_ProviderLocationLicense] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProviderRolodex]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProviderRolodex](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](30) NULL,
	[MiddleInitial] [varchar](1) NULL,
	[LastName] [varchar](30) NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[MailingAddress1] [varchar](50) NULL,
	[MailingAddress2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[MailingCity] [varchar](50) NULL,
	[State] [varchar](2) NULL,
	[MailingState] [varchar](2) NULL,
	[ZipCode] [varchar](10) NULL,
	[MailingZipCode] [varchar](10) NULL,
	[HomePhone] [varchar](16) NULL,
	[WorkPhone] [varchar](16) NULL,
	[CellPhone] [varchar](16) NULL,
	[WorkPhoneExt] [varchar](5) NULL,
	[ProviderID] [int] NULL,
	[Comments] [text] NULL,
	[rRolodexType] [int] NULL,
	[Email] [varchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProviderServices]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProviderServices](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[pID] [int] NULL,
	[plID] [int] NULL,
	[sID] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[UnitRate] [money] NULL,
	[UnitDescription] [varchar](50) NULL,
	[ContractUnits] [int] NULL,
	[ServiceDollars] [money] NULL,
	[MinimumUnits] [int] NULL,
	[MaximumUnits] [int] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[UpdateBy] [varchar](20) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateFrom] [varchar](20) NULL,
	[FundingStreamID] [int] NULL,
	[AuthRequired] [bit] NULL,
 CONSTRAINT [PK_ProviderServices] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceGroupDescriptors]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceGroupDescriptors](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[Code] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceGroupServices]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceGroupServices](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[sgdID] [int] NULL,
	[Code] [varchar](10) NULL,
	[Modifier1] [varchar](2) NULL,
	[Modifier2] [varchar](2) NULL,
	[Modifier3] [varchar](2) NULL,
	[Modifier4] [varchar](2) NULL,
	[Modifier5] [varchar](2) NULL,
	[BenCode] [varchar](5) NULL,
	[Description] [varchar](255) NULL,
	[Status1] [varchar](1) NULL,
	[Price] [numeric](16, 8) NULL,
	[ValidStart] [datetime] NULL,
	[ValidEnd] [datetime] NULL,
	[ValidStartAge] [int] NULL,
	[ValidEndAge] [int] NULL,
	[CostCenterGroup] [varchar](2) NULL,
	[CostCenterActivity] [varchar](2) NULL,
	[ProviderType] [varchar](3) NULL,
	[ProviderSpecialty] [varchar](3) NULL,
	[UnitType] [varchar](20) NULL,
	[PlaceOfService] [varchar](2) NULL,
	[Descriptor] [varchar](10) NULL,
	[LiabilityTypeID] [int] NOT NULL,
	[RoomAndBoardAmt] [numeric](16, 8) NULL,
	[sID] [int] NULL,
	[HCPCS] [varchar](10) NULL,
	[UnitRate] [numeric](16, 8) NULL,
	[ProcedureCode] [varchar](10) NULL,
	[ProcedureDescription] [varchar](255) NULL,
	[AccountNumber0910] [varchar](255) NULL,
	[AccountNumber1112] [varchar](255) NULL,
	[ServiceInitiative] [varchar](10) NULL,
	[ServiceGroup] [varchar](10) NULL,
	[ServiceType] [varchar](10) NULL,
	[Mod2] [varchar](2) NULL,
	[FundingStreamChainID] [int] NULL,
	[ReviewDate] [bit] NULL,
	[VariableRate] [bit] NULL,
	[WaiverIneligible] [bit] NULL,
	[MaximumDollars] [numeric](16, 8) NULL,
	[ProviderCategory] [varchar](2) NULL,
	[DisbursementTimingID] [int] NULL,
	[ReimbursableServices] [bit] NULL,
	[Division] [int] NULL,
	[Medicare] [bit] NULL,
	[CBHNPLevelOfCareCode] [int] NULL,
	[Gender] [varchar](1) NULL,
	[StateDescription] [varchar](255) NULL,
	[CYAServiceType] [varchar](4) NULL,
	[FrequencyOfDelivery] [varchar](4) NULL,
	[DaycareType] [varchar](4) NULL,
	[CustomaryRate] [numeric](16, 8) NULL,
	[CostCenter] [varchar](10) NULL,
	[PeopleSoftDescription] [varchar](255) NULL,
	[ServiceCategory] [varchar](10) NULL,
	[CYADescription] [varchar](255) NULL,
	[IVEMaintenanceRate] [numeric](16, 8) NULL,
	[IVEAdminRate] [numeric](16, 8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[services]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[services](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](20) NULL,
	[Description] [varchar](255) NULL,
	[BenCode] [varchar](5) NULL,
	[BenDescription] [varchar](50) NULL,
	[ValidStartDate] [datetime] NULL,
	[ValidEndDate] [datetime] NULL,
	[ValidStartAge] [int] NULL,
	[ValidEndAge] [int] NULL,
	[Status1] [varchar](1) NULL,
	[Status2] [varchar](4) NULL,
	[Status3] [varchar](1) NULL,
	[Status4] [varchar](4) NULL,
	[Status5] [varchar](1) NULL,
	[Status6] [varchar](3) NULL,
	[Status7] [varchar](1) NULL,
	[Modifier1] [varchar](2) NULL,
	[Modifier2] [varchar](2) NULL,
	[Modifier3] [varchar](2) NULL,
	[Modifier4] [varchar](2) NULL,
	[Modifier5] [varchar](2) NULL,
	[CostCenterGroup] [varchar](4) NULL,
	[CostCenterActivity] [varchar](3) NULL,
	[ProviderType] [varchar](3) NULL,
	[UnitType] [varchar](20) NULL,
	[PlaceOfService] [varchar](2) NULL,
	[Descriptor] [varchar](10) NULL,
	[UnitRate] [numeric](16, 8) NULL,
	[LiabilityTypeID] [int] NULL,
	[RoomAndBoardAmt] [numeric](16, 8) NULL,
	[ProcedureCode] [varchar](10) NULL,
	[ProcedureDescription] [varchar](255) NULL,
	[AccountNumber0910] [varchar](50) NULL,
	[AccountNumber1112] [varchar](50) NULL,
	[Department] [varchar](5) NULL,
	[ServiceKey] [varchar](10) NULL,
	[ServiceInitiative] [varchar](10) NULL,
	[ServiceGroup] [varchar](10) NULL,
	[ServiceType] [varchar](10) NULL,
	[Mod2] [varchar](2) NULL,
	[HCPCS] [varchar](10) NULL,
	[ProviderSpecialty] [varchar](3) NULL,
	[ProviderType1] [varchar](3) NULL,
	[FUNDINGStreamChainID] [int] NULL,
	[ReviewDate] [bit] NULL,
	[VariableRate] [bit] NULL,
	[WaiverIneligible] [bit] NULL,
	[MaximumDollars] [numeric](16, 8) NULL,
	[ProviderCategory] [varchar](2) NULL,
	[DisbursementTimingID] [int] NULL,
	[ReimbursableServices] [bit] NULL,
	[Division] [int] NULL,
	[Medicare] [bit] NULL,
	[CBHNPLevelOfCareCode] [int] NULL,
	[Gender] [varchar](1) NULL,
	[StateDescription] [varchar](255) NULL,
	[CYAServiceType] [varchar](4) NULL,
	[FrequencyOfDelivery] [varchar](4) NULL,
	[DaycareType] [varchar](4) NULL,
	[CustomaryRate ] [numeric](16, 8) NULL,
	[CostCenter] [varchar](10) NULL,
	[PeopleSoftDescription] [varchar](255) NULL,
	[ServiceCategory] [varchar](10) NULL,
	[CYADescription] [varchar](255) NULL,
	[IVEMaintenanceRate] [numeric](16, 8) NULL,
	[IVEAdminRate] [numeric](16, 8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupAbuseType]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupAbuseType](
	[Code] [varchar](20) NULL,
	[Description] [varchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupAddressType]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupAddressType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Description] [varchar](50) NULL,
	[Default] [bit] NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupAdmitType]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupAdmitType](
	[Code] [varchar](2) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupAdoptionAge]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupAdoptionAge](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Description] [varchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupAliasTypes]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupAliasTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Description] [varchar](30) NULL,
	[Default] [bit] NULL,
	[Abbrev] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupAssessmentType]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupAssessmentType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](6) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupAuthAdjReasons]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupAuthAdjReasons](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Description] [varchar](255) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupAuthRejectReasons]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupAuthRejectReasons](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Reason] [varchar](255) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupAuthStatus]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupAuthStatus](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusDefault] [bit] NULL,
	[StatusCode] [int] NULL,
	[StatusDescription] [varchar](20) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupCaseTransferReason]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupCaseTransferReason](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Description] [varchar](255) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupCaseWorkerUnit]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupCaseWorkerUnit](
	[Code] [varchar](20) NULL,
	[Description] [varchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupCIHospital]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupCIHospital](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](6) NULL,
	[description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupClaimDestination]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupClaimDestination](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupClaimsRejectReasons]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupClaimsRejectReasons](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Reason] [varchar](120) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupClinicalNotesContact]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupClinicalNotesContact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](60) NULL,
	[Division] [varchar](10) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupClinicalNotesDisposition]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupClinicalNotesDisposition](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](4) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupClinicalNotesGoals]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupClinicalNotesGoals](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AgeGroup] [varchar](8) NULL,
	[Description] [varchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupClinicalNotesLocation]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupClinicalNotesLocation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](8) NULL,
	[Description] [varchar](25) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupClinicalNotesProblemCodes]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupClinicalNotesProblemCodes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](4) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupClinicalNotesReferredTo]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupClinicalNotesReferredTo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](4) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupClinicalNotesServiceTypes]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupClinicalNotesServiceTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](60) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupClinicalNotesTitle]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupClinicalNotesTitle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TitleDescription] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupClinicalNoteType]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupClinicalNoteType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
	[Division] [varchar](10) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupCloseReason]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupCloseReason](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Description] [varchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupClosingCodes]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupClosingCodes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](8) NULL,
	[Description] [varchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupClosureReasons]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupClosureReasons](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Description] [varchar](255) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupCommentCategory]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupCommentCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](100) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_tblLookupCommentCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupContactMode]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupContactMode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](8) NULL,
	[Description] [varchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupContractAppendices]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupContractAppendices](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AppendixID] [int] NULL,
	[Code] [varchar](4) NULL,
	[Description] [varchar](255) NULL,
	[IsDefault] [bit] NULL,
	[DefaultFilePath] [varchar](255) NULL,
	[IsCYA] [bit] NULL,
	[SortColumn] [int] NULL,
	[Active] [bit] NULL,
	[ChangesInProgressBy] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupContractDepartment]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupContractDepartment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](255) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupContractOffice]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupContractOffice](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](255) NULL,
	[MemberOfGrp] [int] NULL,
	[Phone] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[Address1] [varchar](128) NULL,
	[Address2] [varchar](128) NULL,
	[City] [varchar](64) NULL,
	[State] [varchar](2) NULL,
	[Zip] [varchar](15) NULL,
	[Type] [varchar](20) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupContractStatus]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupContractStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupContractType]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupContractType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](255) NULL,
	[IsCYA] [bit] NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupCostCenterActivity]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupCostCenterActivity](
	[ID] [int] NOT NULL,
	[ccgCode] [varchar](4) NULL,
	[Code] [varchar](4) NULL,
	[Description] [varchar](255) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupCostCenterCategory]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupCostCenterCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](20) NULL,
	[Description] [varchar](50) NULL,
	[IsCYA] [bit] NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupCostCenterGroup]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupCostCenterGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](4) NULL,
	[Description] [varchar](255) NULL,
	[IsCYA] [bit] NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupCountyRejectionReasons]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupCountyRejectionReasons](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupCrisisEvents]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupCrisisEvents](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](15) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupDAS]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupDAS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[division] [varchar](5) NULL,
	[code] [varchar](50) NULL,
	[description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupDASBillingType]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupDASBillingType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](6) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupDASCategories]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupDASCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[dascode] [varchar](50) NULL,
	[dasCatCode] [varchar](50) NULL,
	[dasCatDescription] [varchar](50) NULL,
	[billable] [bit] NULL,
	[contractServiceID] [int] NULL,
	[Encounter] [bit] NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupDASEntity]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupDASEntity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](6) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupDASPlaceOfService]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupDASPlaceOfService](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](6) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupDaycareType]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupDaycareType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](20) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupDeductionTypes]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupDeductionTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](30) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupDiagnosis]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupDiagnosis](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](100) NULL,
	[Axis] [varchar](3) NULL,
	[codeformatted] [varchar](10) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupDiagnosisScale]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupDiagnosisScale](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupDisbursementTiming]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupDisbursementTiming](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DESCRIPTION] [varchar](25) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupDischargeType]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupDischargeType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupDistricts]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupDistricts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](2) NULL,
	[description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupDivision]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupDivision](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [char](10) NULL,
 CONSTRAINT [PK_tblLookupDivision] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupDrugOfChoice]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupDrugOfChoice](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](3) NULL,
	[Description] [varchar](30) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupDSM4]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupDSM4](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](6) NULL,
	[Description] [varchar](100) NULL,
	[Axis1] [bit] NULL,
	[Axis2] [bit] NULL,
	[Axis3] [bit] NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupEIAreaDelay]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupEIAreaDelay](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupEIEvalResults]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupEIEvalResults](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](1) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupEIEvalType]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupEIEvalType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupEIMtgDelay]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupEIMtgDelay](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupEIOtherExcept]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupEIOtherExcept](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupEIPrimaryExcept]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupEIPrimaryExcept](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupEIRequestStatus]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupEIRequestStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](50) NULL,
	[WebPortal] [bit] NULL,
	[Luis] [bit] NULL,
	[PriortyOrder] [int] NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupEITerminationReason]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupEITerminationReason](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupEITermReason]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupEITermReason](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Description] [varchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupEITracking]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupEITracking](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupEIWaiverStatus]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupEIWaiverStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupEmploymentStatus]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupEmploymentStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupEthnicity]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupEthnicity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](1) NULL,
	[Description] [varchar](50) NULL,
	[Abbrev] [varchar](2) NULL,
	[StateCode] [varchar](2) NULL,
	[FedCode] [varchar](2) NULL,
	[CYA] [bit] NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupFactorCode]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupFactorCode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](100) NULL,
	[DxScale] [varchar](10) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupFamilyStructure]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupFamilyStructure](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Description] [varchar](30) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupFrequency]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupFrequency](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](5) NULL,
	[Description] [varchar](30) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupFrequencyOfDelivery]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupFrequencyOfDelivery](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](20) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupFunctioningLevel]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupFunctioningLevel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](100) NULL,
	[DxScale] [varchar](10) NULL,
	[FactorCode] [varchar](10) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupGoals]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupGoals](
	[Code] [varchar](20) NULL,
	[Description] [varchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupHospitalCode]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupHospitalCode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](4) NOT NULL,
	[Description] [varchar](50) NULL,
	[teleNumber] [char](12) NULL,
	[status] [varchar](1) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupHospitalType]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupHospitalType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Description] [varchar](30) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupICD10]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupICD10](
	[Code] [varchar](10) NULL,
	[Description] [varchar](255) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupICD9]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupICD9](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](6) NULL,
	[Description] [varchar](100) NULL,
	[Axis1] [bit] NULL,
	[Axis2] [bit] NULL,
	[Axis3] [bit] NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupIncome]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupIncome](
	[Code] [varchar](20) NULL,
	[Description] [varchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupIncomeTypes]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupIncomeTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](30) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupIndOfLiving]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupIndOfLiving](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Description] [varchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupInsurance]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupInsurance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](3) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupIntakeActionClosureType]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupIntakeActionClosureType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupIntakeClosureReason]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupIntakeClosureReason](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](128) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupIntakeDiagnosisScale]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupIntakeDiagnosisScale](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](128) NULL,
	[Source] [varchar](128) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupIntakeReferralAgency]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupIntakeReferralAgency](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](128) NULL,
	[Abbreviation] [varchar](30) NULL,
	[OfficeName] [varchar](128) NULL,
	[Email] [varchar](128) NULL,
	[PhoneNumber] [varchar](14) NULL,
	[FaxNumber] [varchar](14) NULL,
	[WebAddress] [varchar](128) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupIntakeReferralReason]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupIntakeReferralReason](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupIntakeReferralSource]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupIntakeReferralSource](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupIntakeRelationship]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupIntakeRelationship](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](30) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupIntakeResponseLevel]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupIntakeResponseLevel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupIntakeTerminationReason]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupIntakeTerminationReason](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](255) NULL,
	[Division] [varchar](3) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_tblLookupIntakeTerminationReason_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupIntakeTypeActionCode]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupIntakeTypeActionCode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupIntakeTypeCode]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupIntakeTypeCode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupInvoiceRejectReasons]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupInvoiceRejectReasons](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](70) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupLanguage]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupLanguage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Description] [varchar](30) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupLegal]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupLegal](
	[Code] [varchar](20) NULL,
	[Description] [varchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupLegalCustody]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupLegalCustody](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](2) NULL,
	[description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupLegalStatus]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupLegalStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](2) NULL,
	[description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupLiability]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupLiability](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[lowerLimit] [numeric](16, 8) NULL,
	[upperLimit] [numeric](16, 8) NULL,
	[dependants] [int] NULL,
	[NonresidentialLiability] [numeric](16, 8) NULL,
	[ResidentialLiability] [numeric](16, 8) NULL,
	[NonresidentialPercentage] [float] NULL,
	[ResidentialPercentage] [float] NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupLiabilityBypassOption]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupLiabilityBypassOption](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](4) NULL,
	[Description] [varchar](128) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupLiabilityData]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupLiabilityData](
	[Col001] [text] NULL,
	[Col002] [text] NULL,
	[Col003] [text] NULL,
	[Col004] [text] NULL,
	[Col005] [text] NULL,
	[Col006] [text] NULL,
	[Col007] [text] NULL,
	[Col008] [text] NULL,
	[Active] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupLiabilityType]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupLiabilityType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](4) NULL,
	[Description] [varchar](128) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupLivingArrangements]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupLivingArrangements](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupMaritalStatus]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupMaritalStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](6) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupMDEDelays]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupMDEDelays](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupMedDosageUnit]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupMedDosageUnit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[unitName] [varchar](10) NULL,
	[unitDescription] [varchar](20) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupMedFrequency]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupMedFrequency](
	[FrequencyId] [varchar](6) NOT NULL,
	[FrequencyDesc] [varchar](30) NULL,
	[status] [varchar](1) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupMedInventory]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupMedInventory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[drugId] [char](6) NOT NULL,
	[tradeDesc] [char](30) NULL,
	[genericDesc] [char](30) NULL,
	[scheduleCode] [char](1) NULL,
	[revenueclass] [char](2) NULL,
	[natDrugCode] [char](11) NULL,
	[stDrugCode] [char](11) NULL,
	[privateCharge] [decimal](8, 5) NULL,
	[rflsQtyRmng] [char](1) NULL,
	[formId] [char](2) NULL,
	[instCode1] [char](6) NULL,
	[instCode2] [char](6) NULL,
	[dispenseType] [char](1) NULL,
	[updateType] [char](1) NULL,
	[gcn] [char](5) NULL,
	[therapeuticCl] [char](6) NULL,
	[newCharge] [decimal](8, 5) NULL,
	[newNdcId] [char](11) NULL,
	[packageSize] [decimal](10, 3) NULL,
	[NewCurrent] [decimal](6, 2) NULL,
	[drugUnit] [char](2) NULL,
	[updateStatus] [char](1) NULL,
	[oldCharge] [decimal](8, 5) NULL,
	[CurrentOld] [decimal](6, 2) NULL,
	[status] [char](1) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupMedRoute]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupMedRoute](
	[medRouteId] [varchar](3) NOT NULL,
	[medRouteDesc] [varchar](30) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupMHCloseReason]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupMHCloseReason](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Description] [varchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupNoteTemplates]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupNoteTemplates](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](6) NULL,
	[Description] [varchar](max) NULL,
	[Active] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupOrgForm]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupOrgForm](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](255) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLOOKUPOTHERSYSTEMIDS]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLOOKUPOTHERSYSTEMIDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](6) NULL,
	[description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupPaidReasonCodes]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupPaidReasonCodes](
	[ReasCodeID] [int] IDENTITY(1,1) NOT NULL,
	[ReasCode] [varchar](2) NULL,
	[ReasDescription] [varchar](255) NULL,
	[ResLiability] [bit] NULL,
	[NonResLiability] [bit] NULL,
	[RandBLiability] [bit] NULL,
	[OtherLiability] [bit] NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupPeopleSoftAccounts]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupPeopleSoftAccounts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](4) NULL,
	[Description] [varchar](25) NULL,
	[IsCYA] [bit] NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupPerpetrator]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupPerpetrator](
	[Code] [varchar](20) NULL,
	[Description] [varchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupPhysicalCustody]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupPhysicalCustody](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](2) NULL,
	[description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupPlacementType]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupPlacementType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](2) NULL,
	[description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupPlaceOfService]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupPlaceOfService](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupPOMSSSNStatus]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupPOMSSSNStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](1) NULL,
	[Description] [varchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupPrimaryLanguage]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupPrimaryLanguage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](6) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupPrimaryPhone]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupPrimaryPhone](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](6) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupPriority]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupPriority](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Description] [varchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupPriorityDiagnosis]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupPriorityDiagnosis](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DiagnosisCode] [varchar](10) NULL,
	[PriorityCode] [varchar](2) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupPrison]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupPrison](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](6) NULL,
	[Name] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](2) NULL,
	[ZipCode] [varchar](10) NULL,
	[PhoneNumber] [varchar](16) NULL,
	[ContactPerson] [varchar](100) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedFrom] [varchar](20) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupProfitStatus]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupProfitStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](255) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupProviderCategory]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupProviderCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](1) NULL,
	[description] [varchar](100) NULL,
	[programFunded] [varchar](1) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupProviderLocationLicenseStatus]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupProviderLocationLicenseStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](100) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_tblLookupProviderLocationLicenseStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupProviderSpecialty]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupProviderSpecialty](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](3) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupProviderTaxonomy]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupProviderTaxonomy](
	[psID] [int] NULL,
	[ptCode] [varchar](3) NULL,
	[Provider Type] [varchar](150) NULL,
	[psCode] [varchar](4) NULL,
	[psDescription] [varchar](150) NULL,
	[Taxonomy] [varchar](15) NULL,
	[Taxonomy Description] [varchar](150) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupProviderType]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupProviderType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](3) NULL,
	[Description] [varchar](50) NULL,
	[IsCYA] [bit] NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupProvTypeAndSpec]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupProvTypeAndSpec](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProvTypeCode] [varchar](6) NULL,
	[ProvTypeDescription] [varchar](255) NULL,
	[SpecCode] [varchar](255) NULL,
	[SpecCodeDescription] [varchar](255) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupRaceCodes]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupRaceCodes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](1) NULL,
	[Description] [varchar](50) NULL,
	[Abbrev] [varchar](2) NULL,
	[StateCode] [varchar](2) NULL,
	[FedCode] [varchar](2) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupRecordStatus]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupRecordStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](8) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_tblLookupRecordStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupReferralReason]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupReferralReason](
	[Code] [varchar](20) NULL,
	[Description] [varchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupReferralSource]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupReferralSource](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](2) NULL,
	[description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupRejectReasons]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupRejectReasons](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Description] [varchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupRelationship]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupRelationship](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
	[CYA] [bit] NULL,
	[Code] [varchar](10) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupRelationshipInsurance]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupRelationshipInsurance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](30) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupRelationshipToChild]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupRelationshipToChild](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Description] [varchar](30) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupReligion]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupReligion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Abbrev] [varchar](2) NULL,
	[Description] [varchar](30) NULL,
	[StateCode] [varchar](2) NULL,
	[FedCode] [varchar](2) NULL,
	[CYA] [bit] NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupRemovalReason]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupRemovalReason](
	[Code] [varchar](20) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupRiskLevel]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupRiskLevel](
	[Code] [varchar](20) NULL,
	[Description] [varchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupRolodexType]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupRolodexType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupSafetyThreatResponses]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupSafetyThreatResponses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](255) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupScanType]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupScanType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](4) NULL,
	[Description] [varchar](128) NULL,
	[IsCya] [bit] NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupScanVideoType]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupScanVideoType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](4) NULL,
	[Description] [varchar](128) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupSchoolAttendance]    Script Date: 2/15/2021 1:01:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupSchoolAttendance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](1) NULL,
	[Description] [varchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupSchoolBehavior]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupSchoolBehavior](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](1) NULL,
	[Description] [varchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupSchoolDistrict]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupSchoolDistrict](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupSchoolPerformance]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupSchoolPerformance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](1) NULL,
	[Description] [varchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupSchoolSource]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupSchoolSource](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](1) NULL,
	[Description] [varchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupServiceInitiative]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupServiceInitiative](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Description] [varchar](100) NULL,
	[Division] [char](3) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupServiceType]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupServiceType](
	[Code] [varchar](20) NULL,
	[Description] [varchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupSpecialPopulation]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupSpecialPopulation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](1) NULL,
	[Description] [varchar](50) NULL,
	[Division] [varchar](3) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupStaffID]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupStaffID](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonID] [int] NULL,
	[Description] [varchar](50) NULL,
	[HireDate] [datetime] NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupStarRating]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupStarRating](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](10) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_tblLookupStarRating] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupStates]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupStates](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[LongName] [varchar](128) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupSystemOfCare]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupSystemOfCare](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Description] [varchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupTownship]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupTownship](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Description] [varchar](30) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupUserPosition]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupUserPosition](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupVocEd]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupVocEd](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NULL,
	[Description] [varchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLookupZipCode]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLookupZipCode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[zipCode] [char](10) NOT NULL,
	[city] [char](20) NULL,
	[countyCode] [char](4) NULL,
	[countyName] [char](15) NULL,
	[state] [char](2) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMemberEIServiceRequestStatus]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMemberEIServiceRequestStatus](
	[tblMemberEIServiceRequestStatusID] [int] IDENTITY(1,1) NOT NULL,
	[MemberEIServiceRequestID] [int] NULL,
	[ProviderID] [int] NULL,
	[StatusID] [int] NULL,
	[MemberID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedFrom] [varchar](20) NULL,
	[InternalLuis] [int] NULL,
	[ProviderAvailabilityNotes] [text] NULL,
	[ProviderEnteredNotes] [text] NULL,
	[ServiceDeliveryDate] [datetime] NULL,
	[RejectionReasonID] [int] NULL,
	[RejectionReasonNotesTxT] [text] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[Interventionist] [varchar](50) NULL,
 CONSTRAINT [PK_tblMemberEIServiceRequestStatus] PRIMARY KEY CLUSTERED 
(
	[tblMemberEIServiceRequestStatusID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMessages]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMessages](
	[msgID] [bigint] IDENTITY(1,1) NOT NULL,
	[Priority] [bit] NULL,
	[Status] [varchar](10) NULL,
	[DueDate] [datetime] NULL,
	[SentDate] [datetime] NULL,
	[Sender] [int] NULL,
	[Recipient] [int] NULL,
	[Subject] [varchar](512) NULL,
	[Division] [varchar](10) NULL,
	[Hidden] [bit] NULL,
	[Body] [text] NULL,
	[MemberID] [int] NULL,
	[ProviderRecipient] [int] NULL,
 CONSTRAINT [PK_tblMessages] PRIMARY KEY CLUSTERED 
(
	[msgID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMultipleSignatures]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMultipleSignatures](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Scanned_Doc_Id] [int] NOT NULL,
	[Signature_Name] [varchar](max) NOT NULL,
	[Created_By] [varchar](50) NOT NULL,
	[Created_Date] [datetime] NOT NULL,
	[Created_From] [varchar](50) NOT NULL,
	[Signature_Data] [varbinary](max) NOT NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_tblMultipleSignatures] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSecurity]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSecurity](
	[tblSecurityID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[MH] [int] NOT NULL,
	[MR] [int] NOT NULL,
	[EI] [int] NOT NULL,
	[HChoice] [int] NOT NULL,
	[DA] [int] NOT NULL,
	[PHARM] [int] NOT NULL,
	[CY] [int] NOT NULL,
	[Finance] [int] NOT NULL,
	[System] [int] NOT NULL,
	[Reports] [int] NOT NULL,
	[Member] [int] NOT NULL,
	[Provider] [int] NOT NULL,
	[Intake] [int] NOT NULL,
	[DAS] [int] NOT NULL,
	[Importers] [int] NOT NULL,
	[Auths] [int] NOT NULL,
	[AuthsApprove] [bit] NULL,
	[Claims] [int] NOT NULL,
	[CrisisInterv] [int] NOT NULL,
	[WebAccess] [bit] NULL,
	[Contracts] [int] NOT NULL,
	[ContractsAuth] [bit] NULL,
	[ClaimsApprove] [bit] NULL,
	[Exporters] [int] NOT NULL,
	[IssueTrackerAdmin] [bit] NULL,
	[NotesApprove] [bit] NULL,
	[HealthChoicesAccess] [bit] NULL,
	[GeneralLedger] [int] NOT NULL,
	[FundingStream] [int] NOT NULL,
	[Department1] [int] NOT NULL,
	[Department2] [int] NOT NULL,
	[Department3] [int] NOT NULL,
	[Department4] [int] NOT NULL,
	[Department5] [int] NOT NULL,
	[Function1] [int] NOT NULL,
	[Function2] [int] NOT NULL,
	[Function3] [int] NOT NULL,
	[Function4] [int] NOT NULL,
	[Function5] [int] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedFrom] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[MEMBERMR] [int] NOT NULL,
	[MEMBEREI] [int] NOT NULL,
	[MEMBERCY] [int] NOT NULL,
	[MEMBERSO] [int] NOT NULL,
	[MEMBERXX] [int] NOT NULL,
	[CLAIMMR] [int] NOT NULL,
	[CLAIMEI] [int] NOT NULL,
	[CLAIMCY] [int] NOT NULL,
	[CLAIMSO] [int] NOT NULL,
	[CLAIMXX] [int] NOT NULL,
	[AUTHMR] [int] NOT NULL,
	[AUTHEI] [int] NOT NULL,
	[AUTHCY] [int] NOT NULL,
	[AUTHSO] [int] NOT NULL,
	[AUTHXX] [int] NOT NULL,
	[MEMBERDA] [int] NOT NULL,
	[CLAIMDA] [int] NOT NULL,
	[AUTHDA] [int] NOT NULL,
	[AuthPrinting] [bit] NULL,
	[AuthInReview] [bit] NULL,
	[AuthReports] [bit] NULL,
	[ClaimReports] [bit] NULL,
	[InvoiceReports] [bit] NULL,
	[MemberReports] [bit] NULL,
	[LiabilityReports] [bit] NULL,
	[ServiceReports] [bit] NULL,
	[LiabilityAccess] [bit] NULL,
	[EncounterLogging] [bit] NULL,
	[CYAFinance] [int] NULL,
	[RecordReports] [bit] NULL,
	[ScannedDocsAdd] [bit] NULL,
	[AuthSecondaryReview] [bit] NULL,
	[EIServiceRequest] [bit] NULL,
	[ServiceRequestPublished] [bit] NULL,
	[ServiceRequestConfirmed] [bit] NULL,
	[AdministrativeReview] [bit] NULL,
	[InterpreterAssigned] [bit] NULL,
	[InterpreterNeeded] [bit] NULL,
	[ServiceRequestReports] [bit] NULL,
	[CPS] [bit] NULL,
	[TestingAccess] [bit] NULL,
	[ServiceRequestVOID] [bit] NULL,
	[RoleStartDate] [datetime] NULL,
	[RoleEndDate] [datetime] NULL,
	[RoleId] [int] NULL,
	[IDDAlert] [bit] NULL,
	[BSUedit] [bit] NULL,
	[EditAddress] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSecurityRoles]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSecurityRoles](
	[tblSecurityRoleID] [int] IDENTITY(1,1) NOT NULL,
	[ROLENAME] [varchar](50) NOT NULL,
	[MH] [int] NOT NULL,
	[MR] [int] NOT NULL,
	[EI] [int] NOT NULL,
	[HChoice] [int] NOT NULL,
	[DA] [int] NOT NULL,
	[PHARM] [int] NOT NULL,
	[CY] [int] NOT NULL,
	[Finance] [int] NOT NULL,
	[System] [int] NOT NULL,
	[Reports] [int] NOT NULL,
	[Member] [int] NOT NULL,
	[Provider] [int] NOT NULL,
	[Intake] [int] NOT NULL,
	[DAS] [int] NOT NULL,
	[Importers] [int] NOT NULL,
	[Auths] [int] NOT NULL,
	[AuthsApprove] [bit] NOT NULL,
	[Claims] [int] NOT NULL,
	[CrisisInterv] [int] NOT NULL,
	[WebAccess] [bit] NOT NULL,
	[Contracts] [int] NOT NULL,
	[ContractsAuth] [bit] NOT NULL,
	[ClaimsApprove] [bit] NOT NULL,
	[Exporters] [int] NOT NULL,
	[IssueTrackerAdmin] [bit] NOT NULL,
	[NotesApprove] [bit] NOT NULL,
	[HealthChoicesAccess] [bit] NOT NULL,
	[GeneralLedger] [int] NOT NULL,
	[FundingStream] [int] NOT NULL,
	[Department1] [int] NOT NULL,
	[Department2] [int] NOT NULL,
	[Department3] [int] NOT NULL,
	[Department4] [int] NOT NULL,
	[Department5] [int] NOT NULL,
	[Function1] [int] NOT NULL,
	[Function2] [int] NOT NULL,
	[Function3] [int] NOT NULL,
	[Function4] [int] NOT NULL,
	[Function5] [int] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedFrom] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedFrom] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[MEMBERMR] [int] NOT NULL,
	[MEMBEREI] [int] NOT NULL,
	[MEMBERCY] [int] NOT NULL,
	[MEMBERSO] [int] NOT NULL,
	[MEMBERXX] [int] NOT NULL,
	[CLAIMMR] [int] NOT NULL,
	[CLAIMEI] [int] NOT NULL,
	[CLAIMCY] [int] NOT NULL,
	[CLAIMSO] [int] NOT NULL,
	[CLAIMXX] [int] NOT NULL,
	[AUTHMR] [int] NOT NULL,
	[AUTHEI] [int] NOT NULL,
	[AUTHCY] [int] NOT NULL,
	[AUTHSO] [int] NOT NULL,
	[AUTHXX] [int] NOT NULL,
	[MEMBERDA] [int] NOT NULL,
	[CLAIMDA] [int] NOT NULL,
	[AUTHDA] [int] NOT NULL,
	[AuthPrinting] [bit] NULL,
	[AuthInReview] [bit] NULL,
	[AuthReports] [bit] NULL,
	[ClaimReports] [bit] NULL,
	[InvoiceReports] [bit] NULL,
	[MemberReports] [bit] NULL,
	[LiabilityReports] [bit] NULL,
	[ServiceReports] [bit] NULL,
	[CYAFinance] [int] NULL,
	[RecordReports] [bit] NULL,
	[ScannedDocsAdd] [bit] NULL,
	[AuthSecondaryReview] [bit] NULL,
	[EIServiceRequest] [bit] NULL,
	[ServiceRequestPublished] [bit] NULL,
	[ServiceRequestConfirmed] [bit] NULL,
	[AdministrativeReview] [bit] NULL,
	[InterpreterAssigned] [bit] NULL,
	[InterpreterNeeded] [bit] NULL,
	[LiabilityAccess] [bit] NULL,
	[EncounterLogging] [bit] NULL,
	[ServiceRequestReports] [bit] NULL,
	[CPS] [bit] NULL,
	[IDDAlert] [bit] NULL,
	[BSUedit] [bit] NULL,
	[EditAddress] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSystemAccessLog]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSystemAccessLog](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MACHINENAME] [varchar](512) NULL,
	[DOMAINNAME] [varchar](512) NULL,
	[USERNAME] [varchar](512) NULL,
	[IPADDRESS] [varchar](50) NULL,
	[DATEOFCONTACT] [datetime] NULL,
 CONSTRAINT [PK_tblSystemAccessLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSystemSettings]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSystemSettings](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MessagingRefresh] [int] NULL,
	[AutoLogOutTime] [int] NULL,
	[CrisisInterventionRefresh] [int] NULL,
	[CountyMAIDNumber] [varchar](50) NULL,
	[CountyCode] [varchar](50) NULL,
	[CountyAlphaCode] [varchar](4) NULL,
	[LocationCode] [varchar](4) NULL,
	[CountyName] [varchar](35) NULL,
	[MemberRegistrationRefresh] [int] NULL,
	[PeopleSoftVoucherNumber] [varchar](10) NULL,
	[BESNUMBERTEST] [varchar](50) NULL,
	[BESNUMBERLIVE] [varchar](50) NULL,
	[MPINUMBERTEST] [varchar](50) NULL,
	[MPINUMBERLIVE] [varchar](50) NULL,
	[COUNTYMCOCODEN] [varchar](50) NULL,
	[COUNTYMCOCODEA] [varchar](50) NULL,
	[DPWNAME] [varchar](50) NULL,
	[CONTACTNAME] [varchar](50) NULL,
	[CONTACTPHONE] [varchar](50) NULL,
	[CONTACTFAX] [varchar](50) NULL,
	[CONTACTEMAIL] [varchar](50) NULL,
	[LASTCONTROLNUM] [varchar](50) NULL,
	[SubSystemNumber] [varchar](10) NULL,
	[PFVoucherNumber] [varchar](10) NULL,
	[PlanProviderID] [varchar](50) NULL,
	[MPI_ICM] [varchar](50) NOT NULL,
	[MPI_TSM] [varchar](50) NOT NULL,
	[MPI_CI] [varchar](50) NOT NULL,
	[MPI_EI] [varchar](50) NOT NULL,
	[MPI_RC] [varchar](50) NOT NULL,
	[NPI_ICM] [varchar](50) NOT NULL,
	[NPI_TSM] [varchar](50) NOT NULL,
	[NPI_CI] [varchar](50) NOT NULL,
	[NPI_RC] [varchar](50) NOT NULL,
	[NPI_EI] [varchar](50) NOT NULL,
	[scanneddocsfolder] [varchar](256) NULL,
	[EIN] [varchar](50) NULL,
	[QueryTimeout] [int] NULL,
	[LastClaimDtlCreatedDate] [datetime] NULL,
	[LastClaimLineCreatedDate] [datetime] NULL,
	[LastClaimAdjCreatedDate] [datetime] NULL,
	[EncounterSubmitterID] [varchar](50) NULL,
	[CountyAddress] [varchar](100) NULL,
	[CountyCity] [varchar](50) NULL,
	[CountyState] [varchar](2) NULL,
	[CountyZipCode] [varchar](10) NULL,
	[CYAReportSentTo1] [varchar](255) NULL,
	[CYAReportSentTo2] [varchar](255) NULL,
	[CYAReportSentTo3] [varchar](255) NULL,
	[VideoFolder] [varchar](256) NULL,
	[MCONUMBER] [varchar](50) NULL,
	[MCONAME] [varchar](100) NULL,
	[OtherSubmitterIDISA] [varchar](50) NULL,
	[OtherSubmitterIDNM] [varchar](50) NULL,
	[HomelessZipCode] [varchar](10) NULL,
	[ReportAddressFooterText] [varchar](256) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUserCaseWorker]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserCaseWorker](
	[tblUserCaseWorkerID] [int] IDENTITY(1,1) NOT NULL,
	[tblUserID] [int] NOT NULL,
	[supervisorID] [int] NULL,
	[division] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUserLogins]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserLogins](
	[UserID] [int] NOT NULL,
	[PCName] [varchar](20) NULL,
	[FirstName] [varchar](20) NULL,
	[LastName] [varchar](25) NULL,
	[LastLoginDate] [datetime] NULL,
	[VersionNumber] [varchar](12) NULL,
	[UserName] [varchar](50) NULL,
 CONSTRAINT [PK_tblUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblusers]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblusers](
	[tblUsersID] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](20) NULL,
	[password] [varchar](255) NULL,
	[firstName] [varchar](20) NULL,
	[middleInitial] [varchar](120) NULL,
	[lastName] [varchar](20) NULL,
	[createdBy] [varchar](20) NULL,
	[createdDate] [datetime] NULL,
	[createdFrom] [varchar](20) NULL,
	[lastMemberAccessed] [int] NULL,
	[accountDisabled] [bit] NULL,
	[resetPassword] [bit] NULL,
	[address1] [varchar](50) NULL,
	[address2] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](2) NULL,
	[zipcode] [varchar](10) NULL,
	[countyCode] [varchar](4) NULL,
	[countyName] [varchar](30) NULL,
	[inactiveDate] [datetime] NULL,
	[homePhone] [varchar](16) NULL,
	[workPhone] [varchar](16) NULL,
	[cellPhone] [varchar](16) NULL,
	[email] [varchar](255) NULL,
	[therapistNum] [varchar](3) NULL,
	[ProviderID] [int] NULL,
	[lastProviderAccessed] [int] NULL,
	[updatedBy] [varchar](20) NULL,
	[updatedFrom] [varchar](20) NULL,
	[updatedDate] [datetime] NULL,
	[delegate] [bit] NULL,
	[EmpNumber] [int] NULL,
	[Division] [int] NOT NULL,
	[Position] [int] NOT NULL,
	[IsSupervisior] [bit] NOT NULL,
	[DirectSupervisor] [int] NOT NULL,
	[PreviousDirectSupervisior] [int] NOT NULL,
	[MHCM] [bit] NOT NULL,
	[MRCM] [bit] NOT NULL,
	[EICM] [bit] NOT NULL,
	[CYCM] [bit] NOT NULL,
	[SOCM] [bit] NOT NULL,
	[DACM] [bit] NOT NULL,
	[Expansion1] [int] NOT NULL,
	[Expansion2] [int] NOT NULL,
	[Expansion3] [int] NOT NULL,
	[ExpField1] [varchar](50) NULL,
	[ExpField2] [varchar](50) NULL,
	[ExpField3] [varchar](50) NULL,
	[AutoMemberLookup] [bit] NOT NULL,
	[INFOREF] [bit] NOT NULL,
	[RECORDS] [bit] NOT NULL,
	[ACMDAS] [bit] NULL,
	[ICMDAS] [bit] NULL,
	[RCDAS] [bit] NULL,
	[CrisisDAS] [bit] NULL,
	[WebAccess] [bit] NULL,
	[CRAdmin] [bit] NULL,
	[CRLevel1] [bit] NULL,
	[CRLevel2] [bit] NULL,
	[CRLevel3] [bit] NULL,
	[CRLevel4] [bit] NULL,
	[CRLevel5] [bit] NULL,
	[CRLevel6] [bit] NULL,
	[CRLevel7] [bit] NULL,
	[CYAInfoRef] [bit] NULL,
	[PINNumber] [varchar](255) NULL,
	[CYADSS] [bit] NULL,
	[CYAReports] [bit] NULL,
	[StartDate] [datetime] NULL,
	[FontFamily] [varchar](40) NULL,
	[FontSize] [real] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsersPositionDates]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsersPositionDates](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Position] [int] NULL,
	[PositionStartDate] [datetime] NULL,
	[PositionEndDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tblUsersPositionDates] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XWalkICD9ICD10]    Script Date: 2/15/2021 1:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XWalkICD9ICD10](
	[ICD9] [varchar](10) NULL,
	[ICD10] [varchar](10) NULL,
	[ICD10Desc] [varchar](100) NULL,
	[Level] [int] NULL,
	[ICD9Count] [int] NULL,
	[AutoAssign] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Claims] ADD  DEFAULT ((0)) FOR [UseCOVIDModifier]
GO
ALTER TABLE [dbo].[ClinicalNotes] ADD  CONSTRAINT [DF_ClinicalNotes_noteprinted]  DEFAULT ((0)) FOR [noteprinted]
GO
ALTER TABLE [dbo].[CommentLog] ADD  CONSTRAINT [DF_CommentLog_MemberID]  DEFAULT ('') FOR [MemberID]
GO
ALTER TABLE [dbo].[CommentLog] ADD  CONSTRAINT [DF_CommentLog_CreatedBy]  DEFAULT ('') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[CommentLog] ADD  CONSTRAINT [DF_CommentLog_ApplicationVersion]  DEFAULT ('') FOR [ApplicationVersion]
GO
ALTER TABLE [dbo].[DAS] ADD  DEFAULT ((0)) FOR [UseCOVIDModifier]
GO
ALTER TABLE [dbo].[FundingStream] ADD  CONSTRAINT [DF_FundingStream_ACTIVE]  DEFAULT ((1)) FOR [ACTIVE]
GO
ALTER TABLE [dbo].[MemberAddress] ADD  DEFAULT ((0)) FOR [Current]
GO
ALTER TABLE [dbo].[MemberAddress] ADD  DEFAULT ((0)) FOR [Active]
GO
ALTER TABLE [dbo].[MemberDiagnosisDetail] ADD  DEFAULT ((1)) FOR [AFFIRMED]
GO
ALTER TABLE [dbo].[MemberMain] ADD  CONSTRAINT [DF_MemberMain_UnableToDetermine]  DEFAULT ((0)) FOR [UnableToDetermine]
GO
ALTER TABLE [dbo].[MemberMain] ADD  CONSTRAINT [DF_MemberMain_HasChildEverBeenAdopted]  DEFAULT ('') FOR [HasChildEverBeenAdopted]
GO
ALTER TABLE [dbo].[tblSecurity] ADD  DEFAULT ((0)) FOR [MEMBERMR]
GO
ALTER TABLE [dbo].[tblSecurity] ADD  DEFAULT ((0)) FOR [MEMBEREI]
GO
ALTER TABLE [dbo].[tblSecurity] ADD  DEFAULT ((0)) FOR [MEMBERCY]
GO
ALTER TABLE [dbo].[tblSecurity] ADD  DEFAULT ((0)) FOR [MEMBERSO]
GO
ALTER TABLE [dbo].[tblSecurity] ADD  DEFAULT ((0)) FOR [MEMBERXX]
GO
ALTER TABLE [dbo].[tblSecurity] ADD  DEFAULT ((0)) FOR [CLAIMMR]
GO
ALTER TABLE [dbo].[tblSecurity] ADD  DEFAULT ((0)) FOR [CLAIMEI]
GO
ALTER TABLE [dbo].[tblSecurity] ADD  DEFAULT ((0)) FOR [CLAIMCY]
GO
ALTER TABLE [dbo].[tblSecurity] ADD  DEFAULT ((0)) FOR [CLAIMSO]
GO
ALTER TABLE [dbo].[tblSecurity] ADD  DEFAULT ((0)) FOR [CLAIMXX]
GO
ALTER TABLE [dbo].[tblSecurity] ADD  DEFAULT ((0)) FOR [AUTHMR]
GO
ALTER TABLE [dbo].[tblSecurity] ADD  DEFAULT ((0)) FOR [AUTHEI]
GO
ALTER TABLE [dbo].[tblSecurity] ADD  DEFAULT ((0)) FOR [AUTHCY]
GO
ALTER TABLE [dbo].[tblSecurity] ADD  DEFAULT ((0)) FOR [AUTHSO]
GO
ALTER TABLE [dbo].[tblSecurity] ADD  DEFAULT ((0)) FOR [AUTHXX]
GO
ALTER TABLE [dbo].[tblSecurity] ADD  DEFAULT ((0)) FOR [MEMBERDA]
GO
ALTER TABLE [dbo].[tblSecurity] ADD  DEFAULT ((0)) FOR [CLAIMDA]
GO
ALTER TABLE [dbo].[tblSecurity] ADD  DEFAULT ((0)) FOR [AUTHDA]
GO
ALTER TABLE [dbo].[tblSecurity] ADD  CONSTRAINT [DF_tblSecurity_LiabilityAccess]  DEFAULT ((0)) FOR [LiabilityAccess]
GO
ALTER TABLE [dbo].[tblSecurity] ADD  CONSTRAINT [DF_tblSecurity_EncounterLogging]  DEFAULT ((0)) FOR [EncounterLogging]
GO
ALTER TABLE [dbo].[tblSecurityRoles] ADD  DEFAULT ((0)) FOR [MEMBERMR]
GO
ALTER TABLE [dbo].[tblSecurityRoles] ADD  DEFAULT ((0)) FOR [MEMBEREI]
GO
ALTER TABLE [dbo].[tblSecurityRoles] ADD  DEFAULT ((0)) FOR [MEMBERCY]
GO
ALTER TABLE [dbo].[tblSecurityRoles] ADD  DEFAULT ((0)) FOR [MEMBERSO]
GO
ALTER TABLE [dbo].[tblSecurityRoles] ADD  DEFAULT ((0)) FOR [MEMBERXX]
GO
ALTER TABLE [dbo].[tblSecurityRoles] ADD  DEFAULT ((0)) FOR [CLAIMMR]
GO
ALTER TABLE [dbo].[tblSecurityRoles] ADD  DEFAULT ((0)) FOR [CLAIMEI]
GO
ALTER TABLE [dbo].[tblSecurityRoles] ADD  DEFAULT ((0)) FOR [CLAIMCY]
GO
ALTER TABLE [dbo].[tblSecurityRoles] ADD  DEFAULT ((0)) FOR [CLAIMSO]
GO
ALTER TABLE [dbo].[tblSecurityRoles] ADD  DEFAULT ((0)) FOR [CLAIMXX]
GO
ALTER TABLE [dbo].[tblSecurityRoles] ADD  DEFAULT ((0)) FOR [AUTHMR]
GO
ALTER TABLE [dbo].[tblSecurityRoles] ADD  DEFAULT ((0)) FOR [AUTHEI]
GO
ALTER TABLE [dbo].[tblSecurityRoles] ADD  DEFAULT ((0)) FOR [AUTHCY]
GO
ALTER TABLE [dbo].[tblSecurityRoles] ADD  DEFAULT ((0)) FOR [AUTHSO]
GO
ALTER TABLE [dbo].[tblSecurityRoles] ADD  DEFAULT ((0)) FOR [AUTHXX]
GO
ALTER TABLE [dbo].[tblSecurityRoles] ADD  DEFAULT ((0)) FOR [MEMBERDA]
GO
ALTER TABLE [dbo].[tblSecurityRoles] ADD  DEFAULT ((0)) FOR [CLAIMDA]
GO
ALTER TABLE [dbo].[tblSecurityRoles] ADD  DEFAULT ((0)) FOR [AUTHDA]
GO
ALTER TABLE [dbo].[tblSystemSettings] ADD  CONSTRAINT [DF_tblSystemSettings_CountyAddress]  DEFAULT ('') FOR [CountyAddress]
GO
ALTER TABLE [dbo].[tblSystemSettings] ADD  CONSTRAINT [DF_tblSystemSettings_CountyCity]  DEFAULT ('') FOR [CountyCity]
GO
ALTER TABLE [dbo].[tblSystemSettings] ADD  CONSTRAINT [DF_tblSystemSettings_CountyState]  DEFAULT ('') FOR [CountyState]
GO
ALTER TABLE [dbo].[tblSystemSettings] ADD  CONSTRAINT [DF_tblSystemSettings_CountyZipCode]  DEFAULT ('') FOR [CountyZipCode]
GO
ALTER TABLE [dbo].[tblSystemSettings] ADD  CONSTRAINT [DF_tblSystemSettings_CYAReportSentTo1]  DEFAULT ('') FOR [CYAReportSentTo1]
GO
ALTER TABLE [dbo].[tblSystemSettings] ADD  CONSTRAINT [DF_tblSystemSettings_CYAReportSentTo2]  DEFAULT ('') FOR [CYAReportSentTo2]
GO
ALTER TABLE [dbo].[tblSystemSettings] ADD  CONSTRAINT [DF_tblSystemSettings_CYAReportSentTo3]  DEFAULT ('') FOR [CYAReportSentTo3]
GO
ALTER TABLE [dbo].[MRBaseServiceProjections]  WITH NOCHECK ADD  CONSTRAINT [FK_MRBaseServiceProjections_MRBaseServiceProjections] FOREIGN KEY([ID])
REFERENCES [dbo].[MRBaseServiceProjections] ([ID])
GO
ALTER TABLE [dbo].[MRBaseServiceProjections] NOCHECK CONSTRAINT [FK_MRBaseServiceProjections_MRBaseServiceProjections]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID from Member Main table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CommentLog', @level2type=N'COLUMN',@level2name=N'MemberID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User who created record' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CommentLog', @level2type=N'COLUMN',@level2name=N'CreatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Version of the application' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CommentLog', @level2type=N'COLUMN',@level2name=N'ApplicationVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Address Status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberAddress', @level2type=N'COLUMN',@level2name=N'CWISStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Address Type Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberAddress', @level2type=N'COLUMN',@level2name=N'CWISAddressTypeCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Current Location' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberAddress', @level2type=N'COLUMN',@level2name=N'CWISCurrentLocation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Organization Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberAddress', @level2type=N'COLUMN',@level2name=N'CWISOrganizationName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Non US State' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberAddress', @level2type=N'COLUMN',@level2name=N'CWISNonUSState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Country Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberAddress', @level2type=N'COLUMN',@level2name=N'CWISCountryCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Latitude' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberAddress', @level2type=N'COLUMN',@level2name=N'CWISLatitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Longitude' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberAddress', @level2type=N'COLUMN',@level2name=N'CWISLongitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Location Detail' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberAddress', @level2type=N'COLUMN',@level2name=N'CWISLocationDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Prison ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberAddress', @level2type=N'COLUMN',@level2name=N'CWISPrisonID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Grade Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberAddress', @level2type=N'COLUMN',@level2name=N'CWISGradeCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Class Type Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberAddress', @level2type=N'COLUMN',@level2name=N'CWISClassTypeCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Room' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberAddress', @level2type=N'COLUMN',@level2name=N'HomeNumOwner'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Hours Present' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberAddress', @level2type=N'COLUMN',@level2name=N'CWISHoursPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Address Status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberAlias', @level2type=N'COLUMN',@level2name=N'CWISStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS AKA Suffix' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberAlias', @level2type=N'COLUMN',@level2name=N'CWISAKASuffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS AKA DOB' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberAlias', @level2type=N'COLUMN',@level2name=N'CWISAKADOB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS AKA SSN' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberAlias', @level2type=N'COLUMN',@level2name=N'CWISAKASSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Estimated DOB' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberAlias', @level2type=N'COLUMN',@level2name=N'CWISEstimatedDOB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address1 for Support to Occur' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'Address1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address2 for Support to Occur' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address3 for Support to Occur' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'Address3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'City for Support to Occur' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State for Support to Occur' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ZipCode for Support to Occur' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'ZipCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CountyCode for Support to Occur' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'CountyCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CountyName for Support to Occur' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'CountyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ReOpeningAndTransfer for the service request' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'ReOpeningAndTransfer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OunceNeeded for the service request' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'OunceNeeded'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'tblUsersID from tblUsers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'TransferringSupportCoordinatorID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID from the tblLookupCountyRejectionReasons table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'CountyRejectionReasonsID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Any current supports being given to the child that is known' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'CurrentSupportsProviders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Checkbox for funding source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'MAFundingSource'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Checkbox for funding source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'ITFWaiverFundingSource'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Checkbox for funding source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'IEIbaseFundingSource'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Alt Address for Services to be provided' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'AltAddyForServices'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Marked if there has been a letter received' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'PrescriptionLetterReceived'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unlimited Text for SC notes to be entered' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'SCNotesEntered'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ECO Radio option 7 Entry' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'Entry7'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ECO Radio option Exit1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'Exit1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ECO Radio option NA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'NA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status when rejected on WP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'RejPriorStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ECO Radio option Both' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberEIServiceRequest', @level2type=N'COLUMN',@level2name=N'Both'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unable to determine if ever adopted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberMain', @level2type=N'COLUMN',@level2name=N'UnableToDetermine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has the child ever been adopted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberMain', @level2type=N'COLUMN',@level2name=N'HasChildEverBeenAdopted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID from CYAReferralIntakeParticipants' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberMain', @level2type=N'COLUMN',@level2name=N'CWISParticipantID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Anonymous' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberMain', @level2type=N'COLUMN',@level2name=N'CWISAnonymous'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Confidential' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberMain', @level2type=N'COLUMN',@level2name=N'CWISConfidential'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Person Not Exist' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberMain', @level2type=N'COLUMN',@level2name=N'CWISPersonNotExist'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Unknown DOB' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberMain', @level2type=N'COLUMN',@level2name=N'CWISUnknownDOB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWISUnknown SSN' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberMain', @level2type=N'COLUMN',@level2name=N'CWISUnknownSSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Estimated DOD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberMain', @level2type=N'COLUMN',@level2name=N'CWISEstimatedDOD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Military Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberMain', @level2type=N'COLUMN',@level2name=N'CWISMilitaryCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWI SEducation Level Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberMain', @level2type=N'COLUMN',@level2name=N'CWISEducationLevelCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Employment Level Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberMain', @level2type=N'COLUMN',@level2name=N'CWISEmploymentLevelCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Child Living Arrangement Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberMain', @level2type=N'COLUMN',@level2name=N'CWISChildLivingArrangementCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CWIS Gender Not Reported' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberMain', @level2type=N'COLUMN',@level2name=N'CWISGenderNotReported'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Record ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberPrison', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Members ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberPrison', @level2type=N'COLUMN',@level2name=N'MemberID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Division Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberPrison', @level2type=N'COLUMN',@level2name=N'Division'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Facility Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberPrison', @level2type=N'COLUMN',@level2name=N'FacilityName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Facility Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberPrison', @level2type=N'COLUMN',@level2name=N'FacilityAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Facility City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberPrison', @level2type=N'COLUMN',@level2name=N'FacilityCity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Facility State' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberPrison', @level2type=N'COLUMN',@level2name=N'FacilityState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Facility Zip Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberPrison', @level2type=N'COLUMN',@level2name=N'FacilityZipCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Facility Phone Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberPrison', @level2type=N'COLUMN',@level2name=N'FacilityPhoneNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Facility Contact Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberPrison', @level2type=N'COLUMN',@level2name=N'FacilityContactName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Admission Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberPrison', @level2type=N'COLUMN',@level2name=N'AdmissionDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Admission Reason' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberPrison', @level2type=N'COLUMN',@level2name=N'AdmissionReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Discharge Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberPrison', @level2type=N'COLUMN',@level2name=N'DischargeDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number Days between Admission Date and Discharged Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberPrison', @level2type=N'COLUMN',@level2name=N'NumberDays'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Created By' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberPrison', @level2type=N'COLUMN',@level2name=N'CreatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Created Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberPrison', @level2type=N'COLUMN',@level2name=N'CreatedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Created From PC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberPrison', @level2type=N'COLUMN',@level2name=N'CreatedFrom'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last Updated By person' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberPrison', @level2type=N'COLUMN',@level2name=N'UpdatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last Updated Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberPrison', @level2type=N'COLUMN',@level2name=N'UpdatedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last Updated From PC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberPrison', @level2type=N'COLUMN',@level2name=N'UpdatedFrom'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Business Associate Agreement Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provider', @level2type=N'COLUMN',@level2name=N'BusinessAssociateAgreementDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupCommentCategory', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupCommentCategory', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupCommentCategory', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID for this table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupCountyRejectionReasons', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code for the item in the table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupCountyRejectionReasons', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description for the item in the table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupCountyRejectionReasons', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PrisonID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupPrison', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupPrison', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupPrison', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupPrison', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupPrison', @level2type=N'COLUMN',@level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupPrison', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Zip Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupPrison', @level2type=N'COLUMN',@level2name=N'ZipCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phone Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupPrison', @level2type=N'COLUMN',@level2name=N'PhoneNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Person to Contact' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupPrison', @level2type=N'COLUMN',@level2name=N'ContactPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Created by User' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupPrison', @level2type=N'COLUMN',@level2name=N'CreatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Created Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupPrison', @level2type=N'COLUMN',@level2name=N'CreatedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Created From PC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupPrison', @level2type=N'COLUMN',@level2name=N'CreatedFrom'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID column for the lookup table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupRejectReasons', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupRelationship', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Record ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupScanVideoType', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupScanVideoType', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLookupScanVideoType', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Auto generated number for each row created automatically in this transaction table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblMemberEIServiceRequestStatus', @level2type=N'COLUMN',@level2name=N'tblMemberEIServiceRequestStatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The id  from the tblLookupRejectionReasons table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblMemberEIServiceRequestStatus', @level2type=N'COLUMN',@level2name=N'RejectionReasonID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The provider enters the rejection reason notes in this column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblMemberEIServiceRequestStatus', @level2type=N'COLUMN',@level2name=N'RejectionReasonNotesTxT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the person that last updated this record' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblMemberEIServiceRequestStatus', @level2type=N'COLUMN',@level2name=N'UpdatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the computer that updated this record last' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblMemberEIServiceRequestStatus', @level2type=N'COLUMN',@level2name=N'UpdatedFrom'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date this record was last updated' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblMemberEIServiceRequestStatus', @level2type=N'COLUMN',@level2name=N'UpdatedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CPS security' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSecurity', @level2type=N'COLUMN',@level2name=N'CPS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Debug Access Security Setting' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSecurity', @level2type=N'COLUMN',@level2name=N'TestingAccess'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Void A Service Request Security Setting' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSecurity', @level2type=N'COLUMN',@level2name=N'ServiceRequestVOID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CPS security' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSecurityRoles', @level2type=N'COLUMN',@level2name=N'CPS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'County office address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSystemSettings', @level2type=N'COLUMN',@level2name=N'CountyAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'County office city' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSystemSettings', @level2type=N'COLUMN',@level2name=N'CountyCity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'County office state' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSystemSettings', @level2type=N'COLUMN',@level2name=N'CountyState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'County office zip code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSystemSettings', @level2type=N'COLUMN',@level2name=N'CountyZipCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CYA report sent to' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSystemSettings', @level2type=N'COLUMN',@level2name=N'CYAReportSentTo1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CYA report sent to' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSystemSettings', @level2type=N'COLUMN',@level2name=N'CYAReportSentTo2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CYA report sent to' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSystemSettings', @level2type=N'COLUMN',@level2name=N'CYAReportSentTo3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Video Folder' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSystemSettings', @level2type=N'COLUMN',@level2name=N'VideoFolder'
GO
