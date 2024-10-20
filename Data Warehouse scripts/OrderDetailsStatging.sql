USE [ETLproject]
GO

/****** Object:  Table [dbo].[OrderDetailsStatging]    Script Date: 10/20/2024 12:23:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderDetailsStatging](
	[Order_priority] [nvarchar](255) NULL,
	[Discount_category] [nvarchar](255) NULL,
	[Quantity] [int] NULL,
	[Discount] [int] NULL,
	[Saleskey] [int] NULL
) ON [PRIMARY]
GO

