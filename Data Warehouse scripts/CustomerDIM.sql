USE [ETLproject]
GO

/****** Object:  Table [dbo].[CustomerDIM]    Script Date: 10/20/2024 12:21:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CustomerDIM](
	[CustomerID] [nvarchar](255) NULL,
	[CustomerName] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[IsActive?] [nvarchar](255) NULL,
	[customer_surrogate_key] [uniqueidentifier] NOT NULL,
	[Customer_loyalty_tier] [nvarchar](255) NULL,
 CONSTRAINT [customer_pk] PRIMARY KEY CLUSTERED 
(
	[customer_surrogate_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CustomerDIM] ADD  DEFAULT (newsequentialid()) FOR [customer_surrogate_key]
GO

