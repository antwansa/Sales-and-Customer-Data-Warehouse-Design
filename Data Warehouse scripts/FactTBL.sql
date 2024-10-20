USE [ETLproject]
GO

/****** Object:  Table [dbo].[FactTBL]    Script Date: 10/20/2024 12:22:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactTBL](
	[UnitPrice] [float] NULL,
	[Quantity] [float] NULL,
	[Discount] [float] NULL,
	[TotalAmount] [float] NULL,
	[SalesKey] [int] NULL,
	[customer_F_key] [uniqueidentifier] NULL,
	[product_F_key] [uniqueidentifier] NULL,
	[Total_sales_amount] [int] NULL,
	[ORDER_F_key] [uniqueidentifier] NULL,
	[date_F_key] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactTBL]  WITH CHECK ADD  CONSTRAINT [customer_F_key] FOREIGN KEY([customer_F_key])
REFERENCES [dbo].[CustomerDIM] ([customer_surrogate_key])
GO

ALTER TABLE [dbo].[FactTBL] CHECK CONSTRAINT [customer_F_key]
GO

ALTER TABLE [dbo].[FactTBL]  WITH CHECK ADD  CONSTRAINT [FK_FactTBL_DimDate] FOREIGN KEY([date_F_key])
REFERENCES [dbo].[DimDate] ([DateKey])
GO

ALTER TABLE [dbo].[FactTBL] CHECK CONSTRAINT [FK_FactTBL_DimDate]
GO

ALTER TABLE [dbo].[FactTBL]  WITH CHECK ADD  CONSTRAINT [ORDER_F_key] FOREIGN KEY([ORDER_F_key])
REFERENCES [dbo].[OrderDetailsDIM] ([order_surrogate_key])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[FactTBL] CHECK CONSTRAINT [ORDER_F_key]
GO

ALTER TABLE [dbo].[FactTBL]  WITH CHECK ADD  CONSTRAINT [product_F_key] FOREIGN KEY([product_F_key])
REFERENCES [dbo].[ProductDIM] ([product_surrogate_key])
GO

ALTER TABLE [dbo].[FactTBL] CHECK CONSTRAINT [product_F_key]
GO

