/*
 Navicat Premium Dump SQL

 Source Server         : mssql
 Source Server Type    : SQL Server
 Source Server Version : 16004195 (16.00.4195)
 Source Host           : localhost:1433
 Source Catalog        : db_addons
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 16004195 (16.00.4195)
 File Encoding         : 65001

 Date: 29/06/2025 23:31:08
*/


-- ----------------------------
-- Table structure for buyers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[buyers]') AND type IN ('U'))
	DROP TABLE [dbo].[buyers]
GO

CREATE TABLE [dbo].[buyers] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [code] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [email] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [address] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [created_at] datetime  NULL,
  [updated_at] datetime  NULL
)
GO

ALTER TABLE [dbo].[buyers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of buyers
-- ----------------------------
SET IDENTITY_INSERT [dbo].[buyers] ON
GO

INSERT INTO [dbo].[buyers] ([id], [name], [code], [email], [address], [created_at], [updated_at]) VALUES (N'1', N'Adrian Hadinata Hadi Darsono', N'AD', N'adrianhhd@gmail.com', N'Jl Pusponjolo Tengah 1 No 20', N'2025-06-28 00:59:47.757', N'2025-06-28 00:59:47.757')
GO

INSERT INTO [dbo].[buyers] ([id], [name], [code], [email], [address], [created_at], [updated_at]) VALUES (N'2', N'Adrian Hadinata Hadi Darsono', N'AC', N'adrianhhd@gmail.com', N'Jl Pusponjolo Tengah 1 No 20', N'2025-06-28 01:18:45.377', N'2025-06-28 01:18:45.377')
GO

INSERT INTO [dbo].[buyers] ([id], [name], [code], [email], [address], [created_at], [updated_at]) VALUES (N'3', N'Adrian Hadinata Hadi Darsono', N'AE', N'adrianhhd@gmail.com', N'Jl Pusponjolo Tengah 1 No 20', N'2025-06-28 01:21:39.607', N'2025-06-28 01:21:39.607')
GO

INSERT INTO [dbo].[buyers] ([id], [name], [code], [email], [address], [created_at], [updated_at]) VALUES (N'4', N'Adrian Hadinata Hadi Darsono', N'AA', N'adrianhhd@gmail.com', N'Dusun Balutan Purwoharjo RT 009 / RW 004, Comal, Pemalang', N'2025-06-28 01:22:37.987', N'2025-06-28 01:22:37.987')
GO

INSERT INTO [dbo].[buyers] ([id], [name], [code], [email], [address], [created_at], [updated_at]) VALUES (N'6', N'Adrian Hadinata Hadi Darsono', N'ARE', N'adrianhhd@gmail.com', N'Jl Pusponjolo Tengah 1 No 20', N'2025-06-28 01:42:28.477', N'2025-06-28 11:16:02.837')
GO

INSERT INTO [dbo].[buyers] ([id], [name], [code], [email], [address], [created_at], [updated_at]) VALUES (N'7', N'Adrian Hadinata Hadi Darsono', N'ARERE', N'adrianhhd@gmail.com', N'Jl Pusponjolo Tengah 1 No 20', N'2025-06-28 11:16:11.260', N'2025-06-28 11:16:11.260')
GO

SET IDENTITY_INSERT [dbo].[buyers] OFF
GO


-- ----------------------------
-- Table structure for cache
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[cache]') AND type IN ('U'))
	DROP TABLE [dbo].[cache]
GO

CREATE TABLE [dbo].[cache] (
  [key] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [value] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [expiration] int  NOT NULL
)
GO

ALTER TABLE [dbo].[cache] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of cache
-- ----------------------------

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[cache_locks]') AND type IN ('U'))
	DROP TABLE [dbo].[cache_locks]
GO

CREATE TABLE [dbo].[cache_locks] (
  [key] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [owner] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [expiration] int  NOT NULL
)
GO

ALTER TABLE [dbo].[cache_locks] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for Customer_Master
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer_Master]') AND type IN ('U'))
	DROP TABLE [dbo].[Customer_Master]
GO

CREATE TABLE [dbo].[Customer_Master] (
  [seq_code] int  IDENTITY(1,1) NOT NULL,
  [code] char(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [discription] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [corp_head_office_add1] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [corp_head_office_add2] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [corp_city] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [corp_province] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [corp_country_seq_code] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [comm_head_office_add1] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [comm_head_office_add2] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [comm_city] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [comm_province] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [comm_country_seq_code] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [commission] numeric(18,2)  NULL,
  [BusinessType] char(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DraftPI_required] bit DEFAULT 0 NULL,
  [SampleDealDropped] numeric(18,2)  NULL,
  [SampledDealProduction] numeric(18,2)  NULL,
  [addition] varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [deduction] varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [general] varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BusinessModel] char(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SampleDealAgreed] bit DEFAULT 0 NULL,
  [TargetMargin] float(53)  NULL,
  [Bcorp_head_office_add1] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [bcorp_head_office_add2] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [bcorp_city] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [bcorp_province] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [bcorp_country_seq_code] int  NULL,
  [bcomm_head_office_add1] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [bcomm_head_office_add2] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [bcomm_city] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [bcomm_province] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [bcomm_country_seq_code] int  NULL,
  [buyercode] char(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [buyerName] char(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [couriercharge] numeric(18,2)  NULL,
  [devfreight] char(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [samplingfreight] char(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [productionfreight] char(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [2006%] numeric(18,2)  NULL,
  [2006value] numeric(18,2)  NULL,
  [shipping_mark] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [commondiscountdicription] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [commondiscountpercent] numeric(18,2)  NULL,
  [curflutucationdis] bit DEFAULT 0 NULL,
  [curflutucationdisDescription] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [curflutucationdispercent] numeric(18,2)  NULL,
  [shortshipdebitpercent] numeric(18,2)  NULL,
  [sold] nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [coa_income] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Rek_Hpp] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [coa_FGood] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [coa_Asset] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Customer_Master] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Customer_Master
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Customer_Master] ON
GO

INSERT INTO [dbo].[Customer_Master] ([seq_code], [code], [discription], [corp_head_office_add1], [corp_head_office_add2], [corp_city], [corp_province], [corp_country_seq_code], [comm_head_office_add1], [comm_head_office_add2], [comm_city], [comm_province], [comm_country_seq_code], [commission], [BusinessType], [DraftPI_required], [SampleDealDropped], [SampledDealProduction], [addition], [deduction], [general], [BusinessModel], [SampleDealAgreed], [TargetMargin], [Bcorp_head_office_add1], [bcorp_head_office_add2], [bcorp_city], [bcorp_province], [bcorp_country_seq_code], [bcomm_head_office_add1], [bcomm_head_office_add2], [bcomm_city], [bcomm_province], [bcomm_country_seq_code], [buyercode], [buyerName], [couriercharge], [devfreight], [samplingfreight], [productionfreight], [2006%], [2006value], [shipping_mark], [commondiscountdicription], [commondiscountpercent], [curflutucationdis], [curflutucationdisDescription], [curflutucationdispercent], [shortshipdebitpercent], [sold], [coa_income], [Rek_Hpp], [coa_FGood], [coa_Asset]) VALUES (N'1', N'M0001     ', N'SRI BUYER', N'Klaten', NULL, N'klaten', N'Jawa tengah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, N'5211000', N'7100000', N'2130100', N'2001001')
GO

INSERT INTO [dbo].[Customer_Master] ([seq_code], [code], [discription], [corp_head_office_add1], [corp_head_office_add2], [corp_city], [corp_province], [corp_country_seq_code], [comm_head_office_add1], [comm_head_office_add2], [comm_city], [comm_province], [comm_country_seq_code], [commission], [BusinessType], [DraftPI_required], [SampleDealDropped], [SampledDealProduction], [addition], [deduction], [general], [BusinessModel], [SampleDealAgreed], [TargetMargin], [Bcorp_head_office_add1], [bcorp_head_office_add2], [bcorp_city], [bcorp_province], [bcorp_country_seq_code], [bcomm_head_office_add1], [bcomm_head_office_add2], [bcomm_city], [bcomm_province], [bcomm_country_seq_code], [buyercode], [buyerName], [couriercharge], [devfreight], [samplingfreight], [productionfreight], [2006%], [2006value], [shipping_mark], [commondiscountdicription], [commondiscountpercent], [curflutucationdis], [curflutucationdisDescription], [curflutucationdispercent], [shortshipdebitpercent], [sold], [coa_income], [Rek_Hpp], [coa_FGood], [coa_Asset]) VALUES (N'3', N'Internal  ', N'Internal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[Customer_Master] OFF
GO


-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[failed_jobs]') AND type IN ('U'))
	DROP TABLE [dbo].[failed_jobs]
GO

CREATE TABLE [dbo].[failed_jobs] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [uuid] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [connection] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [queue] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [payload] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [exception] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [failed_at] datetime DEFAULT getdate() NOT NULL
)
GO

ALTER TABLE [dbo].[failed_jobs] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
SET IDENTITY_INSERT [dbo].[failed_jobs] ON
GO

SET IDENTITY_INSERT [dbo].[failed_jobs] OFF
GO


-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[job_batches]') AND type IN ('U'))
	DROP TABLE [dbo].[job_batches]
GO

CREATE TABLE [dbo].[job_batches] (
  [id] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [total_jobs] int  NOT NULL,
  [pending_jobs] int  NOT NULL,
  [failed_jobs] int  NOT NULL,
  [failed_job_ids] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [options] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [cancelled_at] int  NULL,
  [created_at] int  NOT NULL,
  [finished_at] int  NULL
)
GO

ALTER TABLE [dbo].[job_batches] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of job_batches
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[jobs]') AND type IN ('U'))
	DROP TABLE [dbo].[jobs]
GO

CREATE TABLE [dbo].[jobs] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [queue] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [payload] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [attempts] tinyint  NOT NULL,
  [reserved_at] int  NULL,
  [available_at] int  NOT NULL,
  [created_at] int  NOT NULL
)
GO

ALTER TABLE [dbo].[jobs] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of jobs
-- ----------------------------
SET IDENTITY_INSERT [dbo].[jobs] ON
GO

SET IDENTITY_INSERT [dbo].[jobs] OFF
GO


-- ----------------------------
-- Table structure for migrations
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[migrations]') AND type IN ('U'))
	DROP TABLE [dbo].[migrations]
GO

CREATE TABLE [dbo].[migrations] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [migration] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [batch] int  NOT NULL
)
GO

ALTER TABLE [dbo].[migrations] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of migrations
-- ----------------------------
SET IDENTITY_INSERT [dbo].[migrations] ON
GO

INSERT INTO [dbo].[migrations] ([id], [migration], [batch]) VALUES (N'1', N'0001_01_01_000000_create_users_table', N'1')
GO

INSERT INTO [dbo].[migrations] ([id], [migration], [batch]) VALUES (N'2', N'0001_01_01_000001_create_cache_table', N'1')
GO

INSERT INTO [dbo].[migrations] ([id], [migration], [batch]) VALUES (N'3', N'0001_01_01_000002_create_jobs_table', N'1')
GO

INSERT INTO [dbo].[migrations] ([id], [migration], [batch]) VALUES (N'4', N'2025_06_28_002637_create_buyer_models_table', N'2')
GO

SET IDENTITY_INSERT [dbo].[migrations] OFF
GO


-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[password_reset_tokens]') AND type IN ('U'))
	DROP TABLE [dbo].[password_reset_tokens]
GO

CREATE TABLE [dbo].[password_reset_tokens] (
  [email] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [token] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [created_at] datetime  NULL
)
GO

ALTER TABLE [dbo].[password_reset_tokens] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for PWN_Main
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PWN_Main]') AND type IN ('U'))
	DROP TABLE [dbo].[PWN_Main]
GO

CREATE TABLE [dbo].[PWN_Main] (
  [Seq_code] int  IDENTITY(1,1) NOT NULL,
  [PWN_No] int  NULL,
  [Article] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Worksheet_Recd_Dt] datetime  NULL,
  [Delivery_Dt] datetime  NULL,
  [Cust_Seq_Code] int  NULL,
  [Division_Seq_Code] int  NULL,
  [Corp_Cust_Seq_Code] int  NULL,
  [Collection_Seq_code] int  NULL,
  [Factory_Seq_Code] int  NULL,
  [Quoted_Price] float(53)  NULL,
  [QCur_Seq_Code] varbinary(50)  NULL,
  [Factory_Price] float(53)  NULL,
  [FCur_Seq_Code] varbinary(50)  NULL,
  [PG_Seq_Code] int  NULL,
  [Projected_Qty] int  NULL,
  [Total_Quantity] float(53)  NULL,
  [Quota_Seq_Code] int  NULL,
  [CO_Seq_Code] int  NULL,
  [Remarks] ntext COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Pwn_CreatedDate] datetime  NULL,
  [Factory_Del_Dt] datetime  NULL,
  [Main_Fab_Seq_Code] int  NULL,
  [Dept_Seq_Code] int  NULL,
  [Employee_Seq_Code] int  NULL,
  [Employee_Dept_Code] int  NULL,
  [Criticality_Seq_code] int  NULL,
  [Worksheet_seq_Code] int  NULL,
  [Completed] bit DEFAULT 0 NULL,
  [SWN_Seq_Code] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Main_Quality_Seq_Code] int  NULL,
  [Main_FAB_Code] nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [WS_Fabric_Details_Seq_Code] int  NULL,
  [garmentwt_fk] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [garmentsize] int  NULL,
  [Garment_Finishing_Seq] int  NULL,
  [QC_filenote_recommendation] ntext COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [QA_Comments] ntext COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BOM_Comments] nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [qc_observation_Status] int  NULL,
  [Size_Set_Status] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PPM_Date] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Production_Status] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Latest_BOM_Del_Date] datetime  NULL,
  [GG] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [gsm] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [fabricdesignname] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [articledescription] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [qc_seq_code] int  NULL,
  [port_loading] int  NULL,
  [updated_by] int  NULL,
  [garment_unit_seq_code] int  NULL,
  [agent_seq_code] int  NULL,
  [order_type] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [productionhouse] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [sewing_planned_date] datetime  NULL,
  [process_planned_date] datetime  NULL,
  [Cost_Seq_code] varbinary(50)  NULL,
  [markersize] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [repeatsize] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [markerdirection] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [markertype] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [markerfabtype] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [extendeddel] datetime  NULL,
  [fabric_indate] datetime  NULL,
  [DateModified] datetime DEFAULT getdate() NULL,
  [colremarks] ntext COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [statuspo] bit DEFAULT 0 NULL,
  [Lunas] int DEFAULT 0 NULL,
  [SMV] int  NULL,
  [very] bit DEFAULT 0 NULL,
  [valid] bit DEFAULT 0 NULL,
  [ValidBOM] bit DEFAULT 0 NULL,
  [PWN_No_Alias] nvarchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [WO_Ameya] int  NULL,
  [From_Costing] bit DEFAULT 0 NULL,
  [productivity] int  NULL,
  [MesinAvaible] int  NULL,
  [productGroup_main] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MaterialCost] float(53)  NULL,
  [kurs] float(53)  NULL,
  [currency2] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [location_] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ShipmentDate] datetime  NULL,
  [Seq_code_Convert] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FG_DATE] datetime  NULL
)
GO

ALTER TABLE [dbo].[PWN_Main] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of PWN_Main
-- ----------------------------
SET IDENTITY_INSERT [dbo].[PWN_Main] ON
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-04-10 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-04-10 11:39:33.507', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0001/04/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'2', N'2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-04-10 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-04-10 14:47:00.690', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0002/04/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'3', N'3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-04-10 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-04-10 14:47:09.750', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0003/04/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'4', N'4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-04-10 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-04-10 14:47:10.720', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0004/04/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'5', N'5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-04-10 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-04-10 14:47:29.307', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0005/04/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'6', N'6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-04-10 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-04-10 14:47:30.377', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0006/04/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'7', N'7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-04-10 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-04-10 14:51:32.573', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0007/04/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'8', N'8', N'testing app', NULL, N'2025-04-10 00:00:00.000', N'1', N'6', NULL, N'2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'4', NULL, NULL, NULL, N'2025-04-10 00:00:00.000', N'2025-04-10 00:00:00.000', NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'testing app', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-04-10 14:51:33.843', NULL, N'0', N'0', NULL, N'0', N'1', N'0', N'SEG/WO-0008/04/2025', NULL, N'0', NULL, NULL, NULL, NULL, N'5', N'USD', N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'9', N'9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-04-10 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-04-10 15:32:48.843', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0009/04/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'10', N'10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-04-10 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-04-10 15:32:49.327', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0010/04/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'11', N'11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-04-10 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-04-10 15:32:52.230', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0011/04/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'12', N'12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-04-10 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-04-10 15:36:50.987', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0012/04/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'13', N'13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-04-10 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-04-10 15:37:31.713', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0013/04/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'14', N'14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-04-10 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-04-10 15:37:37.323', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0014/04/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'15', N'15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-04-10 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-04-10 15:44:29.520', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0015/04/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'16', N'16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-04-10 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-04-10 15:44:38.603', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0016/04/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'17', N'17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-04-10 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-04-10 15:44:44.670', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0017/04/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'18', N'18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-05-17 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-05-17 18:22:07.727', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0018/05/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'19', N'19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-05-17 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-05-17 18:22:12.093', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0019/05/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'20', N'20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-05-17 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-05-17 18:22:21.650', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0020/05/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'21', N'21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-05-21 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-05-21 00:11:06.263', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0021/05/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'USD', N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'22', N'22', N'PANEL SOLAR X1239.000', NULL, N'2025-06-08 00:00:00.000', N'1', NULL, NULL, N'2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'151', NULL, NULL, NULL, N'2025-05-23 00:00:00.000', N'2025-06-04 00:00:00.000', NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'SEGLTD/0012/2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-05-23 10:35:47.293', NULL, N'0', N'0', NULL, N'0', N'1', N'0', N'SEG/WO-0022/05/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'USD', N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'23', N'0', N'STOCK', NULL, NULL, N'3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', NULL, NULL, NULL, N'2025-04-10 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-04-10 11:39:33.507', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'STOCK', NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'25', N'23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-05-26 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-05-26 19:42:44.727', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0023/05/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'USD', N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'26', N'24', N'210.11.0126 Karung Plastik P99 65X103CM', NULL, N'2025-06-04 00:00:00.000', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10000', NULL, NULL, NULL, N'2025-05-28 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'1', N'00010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-05-28 09:54:37.900', NULL, N'0', N'1', NULL, N'0', N'1', N'0', N'SEG/WO-0024/05/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'USD', N'KM        ', N'2025-06-02 00:00:00.000', NULL, N'2025-05-28 00:00:00.000')
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'27', N'25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-05-28 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-05-28 15:28:30.447', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0025/05/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'USD', N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'28', N'26', N'211.11.0126 Karung Plastik P99 65x103cm 800 12x12', NULL, N'2025-06-04 00:00:00.000', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10000', NULL, NULL, NULL, N'2025-05-28 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'00010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-05-28 15:30:18.097', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0026/05/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'USD', N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'29', N'27', N'123', NULL, N'2025-05-28 00:00:00.000', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10', NULL, NULL, NULL, N'2025-05-28 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'1233', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-05-28 16:05:47.290', NULL, N'0', N'0', NULL, N'0', N'1', N'0', N'SEG/WO-0027/05/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'USD', N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'30', N'28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-06-02 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-06-02 13:23:46.767', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0028/06/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'USD', N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'31', N'29', N'style 2', NULL, N'2025-06-09 00:00:00.000', N'1', N'6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'500', NULL, NULL, NULL, N'2025-06-02 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'045', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-06-02 13:27:12.100', NULL, N'0', N'0', NULL, N'0', N'1', N'0', N'SEG/WO-0029/06/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'USD', N'KM        ', NULL, NULL, N'2025-06-21 00:00:00.000')
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'32', N'30', N'NY-50CK', NULL, N'2025-06-23 00:00:00.000', N'1', N'7', NULL, N'2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'100', NULL, NULL, NULL, N'2025-06-20 00:00:00.000', N'2025-06-23 00:00:00.000', NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'NY-50CK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-06-24 09:29:36.317', NULL, N'0', N'0', NULL, N'0', N'1', N'0', N'SEG/WO-0030/06/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'USD', N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'33', N'31', N'Single Wall Corrugated', NULL, N'2025-06-30 00:00:00.000', N'1', N'6', NULL, N'2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'100', NULL, NULL, NULL, N'2025-06-24 00:00:00.000', N'2025-06-28 00:00:00.000', NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'SWC/BATCH#1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-06-25 13:15:23.467', NULL, N'0', N'0', NULL, N'0', N'1', N'0', N'SEG/WO-0031/06/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'USD', N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'34', N'32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, N'2025-06-25 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-06-25 15:02:56.860', NULL, N'0', N'0', NULL, N'0', N'0', N'0', N'SEG/WO-0032/06/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'USD', N'KM        ', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PWN_Main] ([Seq_code], [PWN_No], [Article], [Worksheet_Recd_Dt], [Delivery_Dt], [Cust_Seq_Code], [Division_Seq_Code], [Corp_Cust_Seq_Code], [Collection_Seq_code], [Factory_Seq_Code], [Quoted_Price], [QCur_Seq_Code], [Factory_Price], [FCur_Seq_Code], [PG_Seq_Code], [Projected_Qty], [Total_Quantity], [Quota_Seq_Code], [CO_Seq_Code], [Remarks], [Pwn_CreatedDate], [Factory_Del_Dt], [Main_Fab_Seq_Code], [Dept_Seq_Code], [Employee_Seq_Code], [Employee_Dept_Code], [Criticality_Seq_code], [Worksheet_seq_Code], [Completed], [SWN_Seq_Code], [Main_Quality_Seq_Code], [Main_FAB_Code], [WS_Fabric_Details_Seq_Code], [garmentwt_fk], [garmentsize], [Garment_Finishing_Seq], [QC_filenote_recommendation], [QA_Comments], [BOM_Comments], [qc_observation_Status], [Size_Set_Status], [PPM_Date], [Production_Status], [Latest_BOM_Del_Date], [GG], [gsm], [fabricdesignname], [articledescription], [qc_seq_code], [port_loading], [updated_by], [garment_unit_seq_code], [agent_seq_code], [order_type], [productionhouse], [sewing_planned_date], [process_planned_date], [Cost_Seq_code], [markersize], [repeatsize], [markerdirection], [markertype], [markerfabtype], [extendeddel], [fabric_indate], [DateModified], [colremarks], [statuspo], [Lunas], [SMV], [very], [valid], [ValidBOM], [PWN_No_Alias], [WO_Ameya], [From_Costing], [productivity], [MesinAvaible], [productGroup_main], [MaterialCost], [kurs], [currency2], [location_], [ShipmentDate], [Seq_code_Convert], [FG_DATE]) VALUES (N'35', N'33', N'6120003519
Cover Printing
53967', NULL, NULL, N'1', N'6', NULL, N'2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'150', NULL, NULL, NULL, N'2025-06-25 00:00:00.000', NULL, NULL, NULL, N'114', NULL, NULL, NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2025-06-25 15:05:38.803', NULL, N'0', N'0', NULL, N'0', N'1', N'0', N'SEG/WO-0033/06/2025', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'USD', N'KM        ', NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[PWN_Main] OFF
GO


-- ----------------------------
-- Table structure for PWN_PO_Details
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PWN_PO_Details]') AND type IN ('U'))
	DROP TABLE [dbo].[PWN_PO_Details]
GO

CREATE TABLE [dbo].[PWN_PO_Details] (
  [Seq_code] int  IDENTITY(1,1) NOT NULL,
  [PWN_Seq_Code] int  NULL,
  [Cust_PO] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustReq_Del_Dt] datetime  NULL,
  [InternalReq_Del_Dt] datetime  NULL,
  [Ship_Mode_Seq] varbinary(100)  NULL,
  [Ship_Terms_Seq] varbinary(100)  NULL,
  [PaymentTerm] varbinary(200)  NULL,
  [Total_Qty] float(53)  NULL,
  [Approval_Comment] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Article_Del_Status] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Shipped] smallint  NULL,
  [goods_description] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [custom_code] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [cat] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [edoc_no] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [pi_main_seq] int  NULL,
  [EDoc_Date] datetime  NULL,
  [pir_main_seq] int  NULL,
  [presentation_days_sub] int  NULL,
  [presentation_days_main] int  NULL,
  [transfer_lc_seq] int  NULL,
  [lc_amount] nvarchar(18) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [edoc_fact_exp_date] datetime  NULL,
  [edoc_exp_Date] datetime  NULL,
  [lc_issuing_bank] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [freight] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SokoArticle] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [extended_dt] datetime  NULL,
  [Remark] ntext COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [fabric_indt] datetime  NULL,
  [Confirm] bit DEFAULT 0 NULL,
  [statuspo] bit DEFAULT 0 NULL,
  [wo_ameya] int  NULL,
  [article] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [doc_code] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Color_PO] nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Color_Seq] int  NULL
)
GO

ALTER TABLE [dbo].[PWN_PO_Details] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of PWN_PO_Details
-- ----------------------------
SET IDENTITY_INSERT [dbo].[PWN_PO_Details] ON
GO

INSERT INTO [dbo].[PWN_PO_Details] ([Seq_code], [PWN_Seq_Code], [Cust_PO], [CustReq_Del_Dt], [InternalReq_Del_Dt], [Ship_Mode_Seq], [Ship_Terms_Seq], [PaymentTerm], [Total_Qty], [Approval_Comment], [Article_Del_Status], [Shipped], [goods_description], [custom_code], [cat], [edoc_no], [pi_main_seq], [EDoc_Date], [pir_main_seq], [presentation_days_sub], [presentation_days_main], [transfer_lc_seq], [lc_amount], [edoc_fact_exp_date], [edoc_exp_Date], [lc_issuing_bank], [freight], [SokoArticle], [extended_dt], [Remark], [fabric_indt], [Confirm], [statuspo], [wo_ameya], [article], [doc_code], [Color_PO], [Color_Seq]) VALUES (N'1', N'8', N'testing app', N'2025-04-10 00:00:00.000', N'2025-04-10 00:00:00.000', NULL, NULL, NULL, N'1', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'0', NULL, NULL, N'PWN', N'blue', NULL)
GO

INSERT INTO [dbo].[PWN_PO_Details] ([Seq_code], [PWN_Seq_Code], [Cust_PO], [CustReq_Del_Dt], [InternalReq_Del_Dt], [Ship_Mode_Seq], [Ship_Terms_Seq], [PaymentTerm], [Total_Qty], [Approval_Comment], [Article_Del_Status], [Shipped], [goods_description], [custom_code], [cat], [edoc_no], [pi_main_seq], [EDoc_Date], [pir_main_seq], [presentation_days_sub], [presentation_days_main], [transfer_lc_seq], [lc_amount], [edoc_fact_exp_date], [edoc_exp_Date], [lc_issuing_bank], [freight], [SokoArticle], [extended_dt], [Remark], [fabric_indt], [Confirm], [statuspo], [wo_ameya], [article], [doc_code], [Color_PO], [Color_Seq]) VALUES (N'2', N'8', N'testingapp2', N'2025-04-10 00:00:00.000', N'2025-04-10 00:00:00.000', NULL, NULL, NULL, N'2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'0', NULL, NULL, N'PWN', N'white', NULL)
GO

INSERT INTO [dbo].[PWN_PO_Details] ([Seq_code], [PWN_Seq_Code], [Cust_PO], [CustReq_Del_Dt], [InternalReq_Del_Dt], [Ship_Mode_Seq], [Ship_Terms_Seq], [PaymentTerm], [Total_Qty], [Approval_Comment], [Article_Del_Status], [Shipped], [goods_description], [custom_code], [cat], [edoc_no], [pi_main_seq], [EDoc_Date], [pir_main_seq], [presentation_days_sub], [presentation_days_main], [transfer_lc_seq], [lc_amount], [edoc_fact_exp_date], [edoc_exp_Date], [lc_issuing_bank], [freight], [SokoArticle], [extended_dt], [Remark], [fabric_indt], [Confirm], [statuspo], [wo_ameya], [article], [doc_code], [Color_PO], [Color_Seq]) VALUES (N'3', N'22', N'SOLAR1', N'2025-06-08 00:00:00.000', N'2025-06-04 00:00:00.000', 0x420079002000410069007200, 0x46004F00420020005300680061006E006700680061006900, 0x440050002000350030002500, N'150', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'0', NULL, NULL, N'PWN', N'ALL COLOR', NULL)
GO

INSERT INTO [dbo].[PWN_PO_Details] ([Seq_code], [PWN_Seq_Code], [Cust_PO], [CustReq_Del_Dt], [InternalReq_Del_Dt], [Ship_Mode_Seq], [Ship_Terms_Seq], [PaymentTerm], [Total_Qty], [Approval_Comment], [Article_Del_Status], [Shipped], [goods_description], [custom_code], [cat], [edoc_no], [pi_main_seq], [EDoc_Date], [pir_main_seq], [presentation_days_sub], [presentation_days_main], [transfer_lc_seq], [lc_amount], [edoc_fact_exp_date], [edoc_exp_Date], [lc_issuing_bank], [freight], [SokoArticle], [extended_dt], [Remark], [fabric_indt], [Confirm], [statuspo], [wo_ameya], [article], [doc_code], [Color_PO], [Color_Seq]) VALUES (N'4', N'23', N'Stock', NULL, NULL, NULL, NULL, NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'0', NULL, NULL, N'PWN', N'Stock', NULL)
GO

INSERT INTO [dbo].[PWN_PO_Details] ([Seq_code], [PWN_Seq_Code], [Cust_PO], [CustReq_Del_Dt], [InternalReq_Del_Dt], [Ship_Mode_Seq], [Ship_Terms_Seq], [PaymentTerm], [Total_Qty], [Approval_Comment], [Article_Del_Status], [Shipped], [goods_description], [custom_code], [cat], [edoc_no], [pi_main_seq], [EDoc_Date], [pir_main_seq], [presentation_days_sub], [presentation_days_main], [transfer_lc_seq], [lc_amount], [edoc_fact_exp_date], [edoc_exp_Date], [lc_issuing_bank], [freight], [SokoArticle], [extended_dt], [Remark], [fabric_indt], [Confirm], [statuspo], [wo_ameya], [article], [doc_code], [Color_PO], [Color_Seq]) VALUES (N'5', N'26', N'1307026707', N'2025-06-04 00:00:00.000', NULL, NULL, NULL, NULL, N'10000', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'0', NULL, NULL, N'PWN', N'ALL Color', NULL)
GO

INSERT INTO [dbo].[PWN_PO_Details] ([Seq_code], [PWN_Seq_Code], [Cust_PO], [CustReq_Del_Dt], [InternalReq_Del_Dt], [Ship_Mode_Seq], [Ship_Terms_Seq], [PaymentTerm], [Total_Qty], [Approval_Comment], [Article_Del_Status], [Shipped], [goods_description], [custom_code], [cat], [edoc_no], [pi_main_seq], [EDoc_Date], [pir_main_seq], [presentation_days_sub], [presentation_days_main], [transfer_lc_seq], [lc_amount], [edoc_fact_exp_date], [edoc_exp_Date], [lc_issuing_bank], [freight], [SokoArticle], [extended_dt], [Remark], [fabric_indt], [Confirm], [statuspo], [wo_ameya], [article], [doc_code], [Color_PO], [Color_Seq]) VALUES (N'6', N'28', N'1307026707', N'2025-06-04 00:00:00.000', NULL, NULL, NULL, NULL, N'10000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'0', NULL, NULL, N'PWN', N'No color', NULL)
GO

INSERT INTO [dbo].[PWN_PO_Details] ([Seq_code], [PWN_Seq_Code], [Cust_PO], [CustReq_Del_Dt], [InternalReq_Del_Dt], [Ship_Mode_Seq], [Ship_Terms_Seq], [PaymentTerm], [Total_Qty], [Approval_Comment], [Article_Del_Status], [Shipped], [goods_description], [custom_code], [cat], [edoc_no], [pi_main_seq], [EDoc_Date], [pir_main_seq], [presentation_days_sub], [presentation_days_main], [transfer_lc_seq], [lc_amount], [edoc_fact_exp_date], [edoc_exp_Date], [lc_issuing_bank], [freight], [SokoArticle], [extended_dt], [Remark], [fabric_indt], [Confirm], [statuspo], [wo_ameya], [article], [doc_code], [Color_PO], [Color_Seq]) VALUES (N'7', N'29', N'122', N'2025-05-28 00:00:00.000', NULL, NULL, NULL, NULL, N'10', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'0', NULL, NULL, N'PWN', N'all', NULL)
GO

INSERT INTO [dbo].[PWN_PO_Details] ([Seq_code], [PWN_Seq_Code], [Cust_PO], [CustReq_Del_Dt], [InternalReq_Del_Dt], [Ship_Mode_Seq], [Ship_Terms_Seq], [PaymentTerm], [Total_Qty], [Approval_Comment], [Article_Del_Status], [Shipped], [goods_description], [custom_code], [cat], [edoc_no], [pi_main_seq], [EDoc_Date], [pir_main_seq], [presentation_days_sub], [presentation_days_main], [transfer_lc_seq], [lc_amount], [edoc_fact_exp_date], [edoc_exp_Date], [lc_issuing_bank], [freight], [SokoArticle], [extended_dt], [Remark], [fabric_indt], [Confirm], [statuspo], [wo_ameya], [article], [doc_code], [Color_PO], [Color_Seq]) VALUES (N'8', N'31', N'045', N'2025-06-09 00:00:00.000', NULL, NULL, NULL, NULL, N'500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'0', NULL, NULL, N'PWN', N'No Color', NULL)
GO

INSERT INTO [dbo].[PWN_PO_Details] ([Seq_code], [PWN_Seq_Code], [Cust_PO], [CustReq_Del_Dt], [InternalReq_Del_Dt], [Ship_Mode_Seq], [Ship_Terms_Seq], [PaymentTerm], [Total_Qty], [Approval_Comment], [Article_Del_Status], [Shipped], [goods_description], [custom_code], [cat], [edoc_no], [pi_main_seq], [EDoc_Date], [pir_main_seq], [presentation_days_sub], [presentation_days_main], [transfer_lc_seq], [lc_amount], [edoc_fact_exp_date], [edoc_exp_Date], [lc_issuing_bank], [freight], [SokoArticle], [extended_dt], [Remark], [fabric_indt], [Confirm], [statuspo], [wo_ameya], [article], [doc_code], [Color_PO], [Color_Seq]) VALUES (N'9', N'22', N'SOLAR2', N'2025-06-08 00:00:00.000', N'2025-06-04 00:00:00.000', NULL, NULL, NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'0', NULL, NULL, N'PWN', N'ALL COLOR', NULL)
GO

INSERT INTO [dbo].[PWN_PO_Details] ([Seq_code], [PWN_Seq_Code], [Cust_PO], [CustReq_Del_Dt], [InternalReq_Del_Dt], [Ship_Mode_Seq], [Ship_Terms_Seq], [PaymentTerm], [Total_Qty], [Approval_Comment], [Article_Del_Status], [Shipped], [goods_description], [custom_code], [cat], [edoc_no], [pi_main_seq], [EDoc_Date], [pir_main_seq], [presentation_days_sub], [presentation_days_main], [transfer_lc_seq], [lc_amount], [edoc_fact_exp_date], [edoc_exp_Date], [lc_issuing_bank], [freight], [SokoArticle], [extended_dt], [Remark], [fabric_indt], [Confirm], [statuspo], [wo_ameya], [article], [doc_code], [Color_PO], [Color_Seq]) VALUES (N'10', N'32', N'NY-50CK-BATH001', N'2025-07-11 00:00:00.000', N'2025-07-01 00:00:00.000', 0x4200790020004C0061006E006400, NULL, 0x3300300025002000540054002000420046005200200053004800490050004D004E005400200041004E00440020003700300025002000500044004300200034003500200044004100590053002000410046005400200053004800490050004D004E005400, N'100', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'0', NULL, NULL, N'PWN', N'DARK WHITE', NULL)
GO

INSERT INTO [dbo].[PWN_PO_Details] ([Seq_code], [PWN_Seq_Code], [Cust_PO], [CustReq_Del_Dt], [InternalReq_Del_Dt], [Ship_Mode_Seq], [Ship_Terms_Seq], [PaymentTerm], [Total_Qty], [Approval_Comment], [Article_Del_Status], [Shipped], [goods_description], [custom_code], [cat], [edoc_no], [pi_main_seq], [EDoc_Date], [pir_main_seq], [presentation_days_sub], [presentation_days_main], [transfer_lc_seq], [lc_amount], [edoc_fact_exp_date], [edoc_exp_Date], [lc_issuing_bank], [freight], [SokoArticle], [extended_dt], [Remark], [fabric_indt], [Confirm], [statuspo], [wo_ameya], [article], [doc_code], [Color_PO], [Color_Seq]) VALUES (N'11', N'8', N'testingapp3', N'2025-04-10 00:00:00.000', N'2025-04-10 00:00:00.000', NULL, NULL, NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'0', NULL, NULL, N'PWN', N'blue', NULL)
GO

INSERT INTO [dbo].[PWN_PO_Details] ([Seq_code], [PWN_Seq_Code], [Cust_PO], [CustReq_Del_Dt], [InternalReq_Del_Dt], [Ship_Mode_Seq], [Ship_Terms_Seq], [PaymentTerm], [Total_Qty], [Approval_Comment], [Article_Del_Status], [Shipped], [goods_description], [custom_code], [cat], [edoc_no], [pi_main_seq], [EDoc_Date], [pir_main_seq], [presentation_days_sub], [presentation_days_main], [transfer_lc_seq], [lc_amount], [edoc_fact_exp_date], [edoc_exp_Date], [lc_issuing_bank], [freight], [SokoArticle], [extended_dt], [Remark], [fabric_indt], [Confirm], [statuspo], [wo_ameya], [article], [doc_code], [Color_PO], [Color_Seq]) VALUES (N'12', N'33', N'SWC/BATCH#1', N'2025-06-30 00:00:00.000', NULL, NULL, NULL, NULL, N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'0', NULL, NULL, N'PWN', N'BROWN', NULL)
GO

INSERT INTO [dbo].[PWN_PO_Details] ([Seq_code], [PWN_Seq_Code], [Cust_PO], [CustReq_Del_Dt], [InternalReq_Del_Dt], [Ship_Mode_Seq], [Ship_Terms_Seq], [PaymentTerm], [Total_Qty], [Approval_Comment], [Article_Del_Status], [Shipped], [goods_description], [custom_code], [cat], [edoc_no], [pi_main_seq], [EDoc_Date], [pir_main_seq], [presentation_days_sub], [presentation_days_main], [transfer_lc_seq], [lc_amount], [edoc_fact_exp_date], [edoc_exp_Date], [lc_issuing_bank], [freight], [SokoArticle], [extended_dt], [Remark], [fabric_indt], [Confirm], [statuspo], [wo_ameya], [article], [doc_code], [Color_PO], [Color_Seq]) VALUES (N'13', N'35', N'4500333996', NULL, NULL, NULL, NULL, NULL, N'150', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'0', NULL, NULL, N'PWN', N'BROWN', NULL)
GO

INSERT INTO [dbo].[PWN_PO_Details] ([Seq_code], [PWN_Seq_Code], [Cust_PO], [CustReq_Del_Dt], [InternalReq_Del_Dt], [Ship_Mode_Seq], [Ship_Terms_Seq], [PaymentTerm], [Total_Qty], [Approval_Comment], [Article_Del_Status], [Shipped], [goods_description], [custom_code], [cat], [edoc_no], [pi_main_seq], [EDoc_Date], [pir_main_seq], [presentation_days_sub], [presentation_days_main], [transfer_lc_seq], [lc_amount], [edoc_fact_exp_date], [edoc_exp_Date], [lc_issuing_bank], [freight], [SokoArticle], [extended_dt], [Remark], [fabric_indt], [Confirm], [statuspo], [wo_ameya], [article], [doc_code], [Color_PO], [Color_Seq]) VALUES (N'14', N'36', N'Art.Small 2nd buy01', N'2025-07-07 00:00:00.000', NULL, NULL, NULL, NULL, N'175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'0', NULL, NULL, N'PWN', N'Stone White', NULL)
GO

INSERT INTO [dbo].[PWN_PO_Details] ([Seq_code], [PWN_Seq_Code], [Cust_PO], [CustReq_Del_Dt], [InternalReq_Del_Dt], [Ship_Mode_Seq], [Ship_Terms_Seq], [PaymentTerm], [Total_Qty], [Approval_Comment], [Article_Del_Status], [Shipped], [goods_description], [custom_code], [cat], [edoc_no], [pi_main_seq], [EDoc_Date], [pir_main_seq], [presentation_days_sub], [presentation_days_main], [transfer_lc_seq], [lc_amount], [edoc_fact_exp_date], [edoc_exp_Date], [lc_issuing_bank], [freight], [SokoArticle], [extended_dt], [Remark], [fabric_indt], [Confirm], [statuspo], [wo_ameya], [article], [doc_code], [Color_PO], [Color_Seq]) VALUES (N'15', N'36', N'Art.Small 2nd buy02', N'2025-07-07 00:00:00.000', NULL, NULL, NULL, NULL, N'250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'0', NULL, NULL, N'PWN', N'Plain White', NULL)
GO

SET IDENTITY_INSERT [dbo].[PWN_PO_Details] OFF
GO


-- ----------------------------
-- Table structure for sessions
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sessions]') AND type IN ('U'))
	DROP TABLE [dbo].[sessions]
GO

CREATE TABLE [dbo].[sessions] (
  [id] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [user_id] bigint  NULL,
  [ip_address] nvarchar(45) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [user_agent] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [payload] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [last_activity] int  NOT NULL
)
GO

ALTER TABLE [dbo].[sessions] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO [dbo].[sessions] ([id], [user_id], [ip_address], [user_agent], [payload], [last_activity]) VALUES (N'1V8hJvW56uRUcuVVKiAz4A9fbzaAQkQ4cGqqI7if', N'1', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', N'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN29oNnNVT2tCdDNIMndjeHNEVVZPM2NKTVN1SkhwSUhTdTRUNEJEbCI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMDoiaHR0cDovL2FkZG9uLWZpbmFuY2UudGVzdC9ib21zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', N'1751210918')
GO

INSERT INTO [dbo].[sessions] ([id], [user_id], [ip_address], [user_agent], [payload], [last_activity]) VALUES (N'4HhQzPHlXKjGem6BprRBZ2HGeTPUWeLzxuFfj5j5', N'1', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', N'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZUQ1OWIzVGJyZXpGaTAwdW85MjdQSFZOWENORUs4YU8yOEVHWVUwRSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNzoiaHR0cDovL2FkZG9uLWZpbmFuY2UudGVzdC9ib21zP3BhZ2U9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', N'1751214568')
GO


-- ----------------------------
-- Table structure for sysdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sysdiagrams]') AND type IN ('U'))
	DROP TABLE [dbo].[sysdiagrams]
GO

CREATE TABLE [dbo].[sysdiagrams] (
  [name] sysname  NOT NULL,
  [principal_id] int  NOT NULL,
  [diagram_id] int  IDENTITY(1,1) NOT NULL,
  [version] int  NULL,
  [definition] varbinary(max)  NULL
)
GO

ALTER TABLE [dbo].[sysdiagrams] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sysdiagrams
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sysdiagrams] ON
GO

SET IDENTITY_INSERT [dbo].[sysdiagrams] OFF
GO


-- ----------------------------
-- Table structure for users
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type IN ('U'))
	DROP TABLE [dbo].[users]
GO

CREATE TABLE [dbo].[users] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [email] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [email_verified_at] datetime  NULL,
  [password] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [remember_token] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [created_at] datetime  NULL,
  [updated_at] datetime  NULL
)
GO

ALTER TABLE [dbo].[users] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of users
-- ----------------------------
SET IDENTITY_INSERT [dbo].[users] ON
GO

INSERT INTO [dbo].[users] ([id], [name], [email], [email_verified_at], [password], [remember_token], [created_at], [updated_at]) VALUES (N'1', N'Adrian Hadinata Hadi Darsono', N'adrianhhd@gmail.com', NULL, N'$2y$12$tzvyOKUA5UTdqU6R6ii8hOgj9.sUG3jN/o5T86gTeHTcflcF1.eHu', N'ZlgdatiltkabVU9Unp4GKEHyvaJy6I8bwlU6ONGvy0bHE7eEzasJwrzkHBhi', N'2025-06-26 08:50:37.777', N'2025-06-26 08:50:37.777')
GO

SET IDENTITY_INSERT [dbo].[users] OFF
GO


-- ----------------------------
-- procedure structure for sp_upgraddiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_upgraddiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_upgraddiagrams]
GO

CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagrams]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagramdefinition
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagramdefinition]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagramdefinition]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_creatediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_creatediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_creatediagram]
GO

CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
GO


-- ----------------------------
-- procedure structure for sp_renamediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_renamediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_renamediagram]
GO

CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_alterdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_alterdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_alterdiagram]
GO

CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_dropdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_dropdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_dropdiagram]
GO

CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
GO


-- ----------------------------
-- function structure for fn_diagramobjects
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_diagramobjects]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fn_diagramobjects]
GO

CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
GO


-- ----------------------------
-- Auto increment value for buyers
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[buyers]', RESEED, 7)
GO


-- ----------------------------
-- Primary Key structure for table buyers
-- ----------------------------
ALTER TABLE [dbo].[buyers] ADD CONSTRAINT [PK__buyers__3213E83FF446238F] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table cache
-- ----------------------------
ALTER TABLE [dbo].[cache] ADD CONSTRAINT [cache_key_primary] PRIMARY KEY CLUSTERED ([key])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table cache_locks
-- ----------------------------
ALTER TABLE [dbo].[cache_locks] ADD CONSTRAINT [cache_locks_key_primary] PRIMARY KEY CLUSTERED ([key])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Customer_Master
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Customer_Master]', RESEED, 3)
GO


-- ----------------------------
-- Primary Key structure for table Customer_Master
-- ----------------------------
ALTER TABLE [dbo].[Customer_Master] ADD CONSTRAINT [PK_Customer_Master] PRIMARY KEY CLUSTERED ([seq_code])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for failed_jobs
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[failed_jobs]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table failed_jobs
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [failed_jobs_uuid_unique]
ON [dbo].[failed_jobs] (
  [uuid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table failed_jobs
-- ----------------------------
ALTER TABLE [dbo].[failed_jobs] ADD CONSTRAINT [PK__failed_j__3213E83F6BD4F1D6] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table job_batches
-- ----------------------------
ALTER TABLE [dbo].[job_batches] ADD CONSTRAINT [job_batches_id_primary] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for jobs
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[jobs]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table jobs
-- ----------------------------
CREATE NONCLUSTERED INDEX [jobs_queue_index]
ON [dbo].[jobs] (
  [queue] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table jobs
-- ----------------------------
ALTER TABLE [dbo].[jobs] ADD CONSTRAINT [PK__jobs__3213E83FE0DCE212] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for migrations
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[migrations]', RESEED, 4)
GO


-- ----------------------------
-- Primary Key structure for table migrations
-- ----------------------------
ALTER TABLE [dbo].[migrations] ADD CONSTRAINT [PK__migratio__3213E83F82207988] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table password_reset_tokens
-- ----------------------------
ALTER TABLE [dbo].[password_reset_tokens] ADD CONSTRAINT [password_reset_tokens_email_primary] PRIMARY KEY CLUSTERED ([email])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for PWN_Main
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[PWN_Main]', RESEED, 35)
GO


-- ----------------------------
-- Indexes structure for table PWN_Main
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_PWN_Main]
ON [dbo].[PWN_Main] (
  [PWN_No] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_PWN_Main_2]
ON [dbo].[PWN_Main] (
  [Seq_code] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_PWN_Main_1]
ON [dbo].[PWN_Main] (
  [Pwn_CreatedDate] ASC
)
GO


-- ----------------------------
-- Triggers structure for table PWN_Main
-- ----------------------------
CREATE TRIGGER [dbo].[trg_AfterInsert_PWN_update_id_convert]
ON [dbo].[PWN_Main]
WITH EXECUTE AS CALLER
FOR INSERT
AS
BEGIN
    UPDATE PWN_MAIN
    SET seq_code_convert = CAST(i.seq_code AS nvarchar(50))
    FROM inserted i
    WHERE PWN_MAIN.seq_code_convert = i.seq_code;
END
GO

CREATE TRIGGER [dbo].[trg_BeforeInsert_PWN_MAIN]
ON [dbo].[PWN_Main]
WITH EXECUTE AS CALLER
INSTEAD OF INSERT
AS
BEGIN
    -- Declare variables to hold the output values from the procedure
    DECLARE @p_no INT;
    DECLARE @p_no_alias NVARCHAR(25);
	DECLARE @Location NVARCHAR(50);

	SELECT @Location = Location_ FROM INSERTED;

    -- Call the procedure to get the next number and alias
    EXEC P_PWN_MAIN_NO_ALIAS @p_no OUTPUT, @p_no_alias OUTPUT, @Location;

    -- Insert the new row with the PWN_NO and PWN_NO_ALIAS set by the procedure
    INSERT INTO PWN_MAIN (PWN_No, PWN_No_Alias, Article, Worksheet_Recd_Dt, Delivery_Dt,
                          Cust_Seq_Code, Division_Seq_Code, Corp_Cust_Seq_Code, Collection_Seq_code,
                          Factory_Seq_Code, Quoted_Price, QCur_Seq_Code, Factory_Price, FCur_Seq_Code,
                          PG_Seq_Code, Projected_Qty, Total_Quantity, Quota_Seq_Code, CO_Seq_Code,
                          Remarks, Pwn_CreatedDate, Factory_Del_Dt, Main_Fab_Seq_Code, Dept_Seq_Code,
                          Employee_Seq_Code, Employee_Dept_Code, Criticality_Seq_code, Worksheet_seq_Code,
                          Completed, SWN_Seq_Code, Main_Quality_Seq_Code, Main_FAB_Code, WS_Fabric_Details_Seq_Code,
                          garmentwt_fk, garmentsize, Garment_Finishing_Seq, QC_filenote_recommendation,
                          QA_Comments, BOM_Comments, qc_observation_Status, Size_Set_Status, PPM_Date,
                          Production_Status, Latest_BOM_Del_Date, GG, gsm, fabricdesignname, articledescription,
                          qc_seq_code, port_loading, updated_by, garment_unit_seq_code, agent_seq_code, order_type,
                          productionhouse, sewing_planned_date, process_planned_date, Cost_Seq_code, markersize,
                          repeatsize, markerdirection, markertype, markerfabtype, extendeddel, fabric_indate, DateModified,
                          colremarks, statuspo, Lunas, SMV, very, valid, ValidBOM, WO_Ameya, From_Costing,
                          productivity, MesinAvaible, productGroup_main, MaterialCost, kurs, currency2, location_,
                          ShipmentDate, Seq_code_Convert, FG_DATE)
    SELECT @p_no, @p_no_alias, Article, Worksheet_Recd_Dt, Delivery_Dt,
           Cust_Seq_Code, Division_Seq_Code, Corp_Cust_Seq_Code, Collection_Seq_code,
           Factory_Seq_Code, Quoted_Price, QCur_Seq_Code, Factory_Price, FCur_Seq_Code,
           PG_Seq_Code, Projected_Qty, Total_Quantity, Quota_Seq_Code, CO_Seq_Code,
           Remarks, Pwn_CreatedDate, Factory_Del_Dt, Main_Fab_Seq_Code, Dept_Seq_Code,
           Employee_Seq_Code, Employee_Dept_Code, Criticality_Seq_code, Worksheet_seq_Code,
           Completed, SWN_Seq_Code, Main_Quality_Seq_Code, Main_FAB_Code, WS_Fabric_Details_Seq_Code,
           garmentwt_fk, garmentsize, Garment_Finishing_Seq, QC_filenote_recommendation,
           QA_Comments, BOM_Comments, qc_observation_Status, Size_Set_Status, PPM_Date,
           Production_Status, Latest_BOM_Del_Date, GG, gsm, fabricdesignname, articledescription,
           qc_seq_code, port_loading, updated_by, garment_unit_seq_code, agent_seq_code, order_type,
           productionhouse, sewing_planned_date, process_planned_date, Cost_Seq_code, markersize,
           repeatsize, markerdirection, markertype, markerfabtype, extendeddel, fabric_indate, DateModified,
           colremarks, statuspo, Lunas, SMV, very, valid, ValidBOM, WO_Ameya, From_Costing,
           productivity, MesinAvaible, productGroup_main, MaterialCost, kurs, currency2, location_,
           ShipmentDate, Seq_code_Convert, FG_DATE
    FROM INSERTED;
END;
GO


-- ----------------------------
-- Primary Key structure for table PWN_Main
-- ----------------------------
ALTER TABLE [dbo].[PWN_Main] ADD CONSTRAINT [PK_PWN_Main] PRIMARY KEY CLUSTERED ([Seq_code])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for PWN_PO_Details
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[PWN_PO_Details]', RESEED, 15)
GO


-- ----------------------------
-- Primary Key structure for table PWN_PO_Details
-- ----------------------------
ALTER TABLE [dbo].[PWN_PO_Details] ADD CONSTRAINT [PK_PWN_PO_Details] PRIMARY KEY CLUSTERED ([Seq_code])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sessions
-- ----------------------------
CREATE NONCLUSTERED INDEX [sessions_user_id_index]
ON [dbo].[sessions] (
  [user_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [sessions_last_activity_index]
ON [dbo].[sessions] (
  [last_activity] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sessions
-- ----------------------------
ALTER TABLE [dbo].[sessions] ADD CONSTRAINT [sessions_id_primary] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sysdiagrams
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sysdiagrams]', RESEED, 1)
GO


-- ----------------------------
-- Uniques structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED ([principal_id] ASC, [name] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [PK__sysdiagr__C2B05B61F44DAA30] PRIMARY KEY CLUSTERED ([diagram_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for users
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[users]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table users
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [users_email_unique]
ON [dbo].[users] (
  [email] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE [dbo].[users] ADD CONSTRAINT [PK__users__3213E83F2CA8F8E0] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

