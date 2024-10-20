USE [ETLproject]
GO

/****** Object:  Table [dbo].[OrderDetailsDIM]    Script Date: 10/20/2024 12:22:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderDetailsDIM](
	[Order_priority] [nvarchar](255) NULL,
	[Discount_category] [nvarchar](255) NULL,
	[order_surrogate_key] [uniqueidentifier] NOT NULL,
 CONSTRAINT [order_PK] PRIMARY KEY CLUSTERED 
(
	[order_surrogate_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[OrderDetailsDIM] ADD  DEFAULT (newsequentialid()) FOR [order_surrogate_key]
GO

