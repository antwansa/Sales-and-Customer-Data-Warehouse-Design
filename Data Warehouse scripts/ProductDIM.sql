USE [ETLproject]
GO

/****** Object:  Table [dbo].[ProductDIM]    Script Date: 10/20/2024 12:23:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductDIM](
	[ProductName] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Brand] [nvarchar](255) NULL,
	[product_surrogate_key] [uniqueidentifier] NOT NULL,
	[ProductID] [nvarchar](255) NULL,
 CONSTRAINT [product_PK] PRIMARY KEY CLUSTERED 
(
	[product_surrogate_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductDIM] ADD  DEFAULT (newsequentialid()) FOR [product_surrogate_key]
GO

