USE [master]
GO
/****** Object:  Database [MihalidisRentACar]    Script Date: 07.10.2018 17:28:29 ******/
CREATE DATABASE [MihalidisRentACar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MihalidisRentACar', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\MihalidisRentACar.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MihalidisRentACar_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\MihalidisRentACar_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MihalidisRentACar] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MihalidisRentACar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MihalidisRentACar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MihalidisRentACar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MihalidisRentACar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MihalidisRentACar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MihalidisRentACar] SET ARITHABORT OFF 
GO
ALTER DATABASE [MihalidisRentACar] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MihalidisRentACar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MihalidisRentACar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MihalidisRentACar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MihalidisRentACar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MihalidisRentACar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MihalidisRentACar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MihalidisRentACar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MihalidisRentACar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MihalidisRentACar] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MihalidisRentACar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MihalidisRentACar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MihalidisRentACar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MihalidisRentACar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MihalidisRentACar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MihalidisRentACar] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MihalidisRentACar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MihalidisRentACar] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MihalidisRentACar] SET  MULTI_USER 
GO
ALTER DATABASE [MihalidisRentACar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MihalidisRentACar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MihalidisRentACar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MihalidisRentACar] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MihalidisRentACar] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MihalidisRentACar] SET QUERY_STORE = OFF
GO
USE [MihalidisRentACar]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [MihalidisRentACar]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 07.10.2018 17:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bills]    Script Date: 07.10.2018 17:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bills](
	[Id] [uniqueidentifier] NOT NULL,
	[Date] [datetime2](7) NULL,
	[Cost] [int] NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedComputerName] [nvarchar](max) NULL,
	[CreatedIp] [nvarchar](max) NULL,
	[CreatedUsername] [nvarchar](max) NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedComputerName] [nvarchar](max) NULL,
	[ModifiedIp] [nvarchar](max) NULL,
	[ModifiedUsername] [nvarchar](max) NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_dbo.Bills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarBrands]    Script Date: 07.10.2018 17:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarBrands](
	[Id] [uniqueidentifier] NOT NULL,
	[BrandName] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedComputerName] [nvarchar](max) NULL,
	[CreatedIp] [nvarchar](max) NULL,
	[CreatedUsername] [nvarchar](max) NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedComputerName] [nvarchar](max) NULL,
	[ModifiedIp] [nvarchar](max) NULL,
	[ModifiedUsername] [nvarchar](max) NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_dbo.CarBrands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 07.10.2018 17:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[Id] [uniqueidentifier] NOT NULL,
	[CModel] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[CostPerDay] [int] NULL,
	[PersonCapacity] [nvarchar](max) NULL,
	[BaggageCapacity] [nvarchar](max) NULL,
	[MinRentAge] [nvarchar](max) NULL,
	[Gearbox] [nvarchar](max) NULL,
	[FuelType] [nvarchar](max) NULL,
	[CarBrandID] [uniqueidentifier] NOT NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedComputerName] [nvarchar](max) NULL,
	[CreatedIp] [nvarchar](max) NULL,
	[CreatedUsername] [nvarchar](max) NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedComputerName] [nvarchar](max) NULL,
	[ModifiedIp] [nvarchar](max) NULL,
	[ModifiedUsername] [nvarchar](max) NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_dbo.Cars] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 07.10.2018 17:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [uniqueidentifier] NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedComputerName] [nvarchar](max) NULL,
	[CreatedIp] [nvarchar](max) NULL,
	[CreatedUsername] [nvarchar](max) NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedComputerName] [nvarchar](max) NULL,
	[ModifiedIp] [nvarchar](max) NULL,
	[ModifiedUsername] [nvarchar](max) NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_dbo.Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rents]    Script Date: 07.10.2018 17:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rents](
	[Id] [uniqueidentifier] NOT NULL,
	[StartDate] [datetime2](7) NULL,
	[EndDate] [datetime2](7) NULL,
	[PickUpPlace] [nvarchar](max) NULL,
	[DropPlace] [nvarchar](max) NULL,
	[Paid] [bit] NULL,
	[Billed] [bit] NULL,
	[Returned] [bit] NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[CarID] [uniqueidentifier] NOT NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedComputerName] [nvarchar](max) NULL,
	[CreatedIp] [nvarchar](max) NULL,
	[CreatedUsername] [nvarchar](max) NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedComputerName] [nvarchar](max) NULL,
	[ModifiedIp] [nvarchar](max) NULL,
	[ModifiedUsername] [nvarchar](max) NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_dbo.Rents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 07.10.2018 17:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Role] [int] NULL,
	[BirthDate] [datetime2](7) NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedComputerName] [nvarchar](max) NULL,
	[CreatedIp] [nvarchar](max) NULL,
	[CreatedUsername] [nvarchar](max) NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedComputerName] [nvarchar](max) NULL,
	[ModifiedIp] [nvarchar](max) NULL,
	[ModifiedUsername] [nvarchar](max) NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_dbo.UserDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201810041128101_AutomaticMigration', N'NTier.Model.Migrations.Configuration', 0x1F8B0800000000000400ED5DDB4EE4C819BE8F9477B0FA2A89666960B44A829A5D41032394614034B3CA1D2AECA2A9AC5DEEB5CB0414E5C9729147CA2BA4CAC73AF950B6DB3D30256EE83A7C75FAEBFF7ED7E1AFFFFDE7BF8B9F5F02DF7986518C427C3C3BD8DB9F3910BBA187F0FA789690C71FFE32FBF9A7DFFF6E71EE052FCE2F45BA8F2C1DCD89E3E3D913219BA3F93C769F6000E2BD00B95118878F64CF0D8339F0C2F9E1FEFE5FE707077348216614CB7116B709262880E90FFA731962176E4802FCABD0837E9C87D398558AEA7C01018C37C085C7B32F7708467B69BA3D9A8FC01732734E7C04685556D07F9C3900E39000422B7AF435862B128578BDDAD000E0DFBD6E204DF708FC18E60D38AA92776DCBFE216BCBBCCA5840B9494CC2C010F0E063DE3973397BAF2E9E959D47BBEF9C76337965AD4EBBF078768A7C7FE6C8051D2DFD8825127B37CD8C60BCC7327D70B8A80FA5245081617F1F9C65E2932482C71826240234C54DF2E023F76FF0F52EFC15E2639CD082B9AAD1CAD138218006DD44E10646E4F5163EE615BEF466CE5CCC37973396D9B83C59733E2588FEFF85960D1E7C580E3CD7F2150923F80962180102BD1B40088C30838069D729854B459DD15C4561ECFF3B2AD56D7996614C8A3C97987C3C6CCB40A538BA3C6B69534B3D932809920282CD93BD15ED81246EAD6C0459C7F46A67967519069B84F62A0B2C2B4022AA6066CE1578F90CF19A3C1DCFE8BF33E702BD40AF08C91BF61523AA8F682612255DCBBCDC4C55121B1B3C61CB4E5F8D44874E57F488FA8D5F9177D2012C0A9D60048BA2261BC2A2C0B631FC029ED13A554F1A45700609403E9DB7B7D04FD3C44F68934F69A6A8EF8544175118DC867EAEF9F9B8FB5598442E6B745893E00E446B48C4DA2DE615A534124D05644C3755564B3ADAA22E50149396D9F8E37E278135A491CF6047053399D849C137208EFF1946DEE4059F07E9DC99B854A60A042B210B68CE748A22F2D48761AC5562AD126B95BC75AB84190E23D82385B9516B8F14064BD77ADD5236D5D78BC5DCF3164A552D294AA9951CAFAB5467238981199B472C93358CB44551F288481FA5728E7BE9A21BE4FEFA7573E30377FBD3F48CFE9CA6A41B80CA213B0DA9D403DC6E01F83E34CD740BA98C62E36C23AC862C815D4FB1968BB55CBE77CB85EA01AD7D40C3EF73EBA1B20CCA40C526A8624C4D14DE061966A7C8AB3975764C2F3B25ED27433385E6B1568A5EF3A4FDB1F5D971198035FC1A6DBF20B69F7143050D98A9529A250EF1126C809B76DA966B790AD66BDA2193957785309B8327EBEDEBC14F10440FE1CBD6CBB94860BA83BA7D8902D16904B0678D346BA45923CD1A69A932A8B3D4D2C87BFA8F6CAD55113A8B8D8B1D6F61A9C570948D34D5A4EC6B9EE53D646EA3A519ADA1A62D2AED9B71769D5A880AC66E8436D9999F6DAF235952B4A46849F1ED93622D037521440D1369E8B21F1B859800D77C5F23CF67B9485BD448C7019A0B9982EB6E9E42BCFD09B64A1EFE015DB2FD890CE3184CF0896F59DBB2B665EDB7C0DAF53C99041C4B16B3F732BEF0C1BABA93D0469A4BCA221967BEEE31C85C0D14ACC9A2FB9226ED0C0F46FE2BED3CBE7562975CC1E00146055FA4AAFC17E027F4C7BED27D42DA1397A0E72AF54173EA33E843C2B686F3E41F9B937FDD78804FFEA33A2659EF378C4876D2CD743CE4C3191464140B66BB8391FDE83A18275E8070DD50E8FBF6248E4317A53D262D526486A958DA39F69C462BB562BD6AADE38A7623DAD08EA35381354136F1AE7126440E933C76176709621778EA2CA70DF0BAD5A75C4612EA2357E54F4A09D4CA8411B3F3804FADDC988E3AC24435491176D106F84D5D2165EA68C9B24696F072CC19DC40CCACD0A6267729975FB557CB2F8B913ABFAD6F16734E965A452C5F7D6B184E7929AE7128B72755F2563277E2363D14B62D91129B3F8D38896DED284A3B932279D3BD6E106B77E04D87B21E52231DFC69802DCA6A2FF1AAA9FE04425633165D4A2E8E93ED44D69403B27592517F7BA7128DEC6E677769AB3F81FB36C4ADAEFE13C85BDD707C6302977D27A40B6B0897E61CAD125B1B292F4F2B262EAD616EE5C6F987912C420C7605897800BCFAEE110452913F31B3703C5C81E0E5AF0528DF7753203225DC92395B2D55F2A626417BD6D4ECA9C99F5BAB6D20D9E2A716A3584F9520B831572B932FFF7269B4EBC3B208B619E265B585662B92DC663F8B30EA1AD65C6C5BB776171BAFDA36EBECC216CBB0A5922D061D973BAFD7E0362AA701D59636DA2E9DAC97B67A77B2573810617A0FEE02F54289DA07CD9CDA8D55B906E4CAADA1176A79747037146B49A5062FE316F3CC33461EB098D7B8D0585C81CD06E135E752230F7156993F8DE50F2B733F1341863177638DBB89B2B66549248CC01A4AB14CE97930BDCB7A060878006CB965E9054A3289AF6A146951184F49EA9815BAB548CDFECF974F54BF221981A99C9E67BEA08D0A984D906EED4822A36673983713E08348B389B40CFD24C0F5A6497DEE6C6198CF9F857447C8DC51F00859487784C2A2E131EAAC9C8696E45B1C3C8A7E8FA3B135FC7E87D0283EC2184F5C43D7E08A098CF1D972B90695051B6355EBE11AC42AD218972D7B6B104F95BDCB262C714383871363CC11EB87489FC2BC047990F8707334FD30A9B1E6C8F240F1E12ADA622EE933E5BB44519BCAE79CA8833B69E8668636D3D3F5164F076DDD94793B3A9BF3DFC08370C1DDB12A8F0C3C54156AA6C555A42AB43B52E5338147AA42BB23E5A71E78983CA83B46B6AFC343E87C1A342170FE0D78182ED8B25C277CCB7296E5BE2F96AB5B7630E3B77409CB9CD9F4D9B6C369DCD57B49B515C1065A1F6B264E1968C043FCF57C818AF80803DD5D5DC1173EB8AA60138E440A3F22A31E2FEEDC8B94948519B06379095F60C83274EAAFC07CE74FD0C0FACDC08671B21C6B39D672ECF7C2B1353B196614CB767ACC19569B6B3B045BDC1A17E64D1ED61DA5BA142ED4A40C355B362C6E7DCB8B8745B8011D4A97C1056294E20C2852BEF32D70A51C69303DB8BBDDC2F4E0C2BBA395D7B779A832D06059A1BC9E2DAC2A94A146245C9EE49298B8F684573D9AA5634BC7968EBF273ACE0F068CC0C9D9E9895EC45C93753BECCC5D151638A60A36D097FC6D60E143938FB0FAB713BED5BF56FF7E67FAB7384A3658FDE607CF7A68DFBA9CDB51BE63EC12A9C26D2ACCF9C556E1CB250B3258452DAEAD0ABABA083410D8E25AAA20AD45A0A58E4EF8963A2C75BC47EA504E15CA49CAD2F390F27779AA303FD1D7FE5A9772C42F4B327368373D238F1DEF5BBDC604067B2CC1DEEA377FE9A3F4C07691E00A60F4086392DD8D9C1DEE1F1C4AEF7D7D3B6F6FCDE3D8F3352722B95BA6EAD9C029DC532418FD964094FA9AA05217CD9C567714A6BEF6B80BEAEC2E2E7BDEED908D227451F666DC9F79CCAE7E250B48C444C22CBBE8275AED01E5DAC325F6E0CBF1EC5F69FE23E7F2EFF719C407E73AA28278E4EC3BFF36EE97822D7B3743E3C0A1E8DF9E503A7F00F81944EE1388FE1080973FF6C4ADAEFC8F8126DFEA1F03B3BAB8DF632074AE18FA8E44936B86410D55DD2F8C0237EA60A86E145A47A3CFB353EF50C92A0F3F15E3A0B8E919F8AED358B8F2B34D63E1CAAF328D852B78591A0B947F53A987DE515E571A895E2D335966B2CC341933A987F1DE0727296FEE8CA49EA427794642D5BCD833486294577906A1F12FEF3CA01E4CC1BFC2D303407E91A707C4B7F1D5253CF0D3AB122982FDF2B3FC6AF9F56DF0AB7214EF7DD0ABF858CCA0DE971F841936AF94475F7A4C2CF964DF08F5AA79E66598D82A4FB90C82939E6B1984253FC9326C4C956757FA52670E63F9D3F2A7E5CF37C39F9A1373EF834495873C3A2CEDF57CB763D0F85A9567559E5579D3A93CDD31B5F7A1F14C37324C5F87180952780C6298EA141F7C182673E2A30E56A55B956E55FA37A9D287BA99DFB16BF9893DC94FE4EEFB1D398BDF917FF8CC652D57F4767DC24FE5A1FBDDB87EE79DB072A33491B3ECDDC849A38FB5DD89CBDB70DFFEAD084CE6919BAB41379FF16F40606A5CB5EE5460A463F6E557A7ECF5561E2DD5BB7AAD73F5EC383D35441F423AAE99F9A4F558DCE077BDC5EDBAAE882677C67241994E528AC88275E07A7FD9326CCAC60A6A1AAA03D5FA19D760E616A00E388FAA41D73B43AF73F4DEE4E75D5B40E91F5EC29FC60BBCD6F3BB660E49C693E42945D1543B71F3DE562D0DC3CA3ED5863764545FEEEA54961D9BEEA28923FB6A1FD6485E89563EBABB37D2C013BB7A378A524882D93241F6EB0CC6685D412C282686AE401E659A4BFC18161C26D5A848A22C5E11E051663989087AA42A8346BB308ED31711F317DCCE8307E85DE2EB846C12429B0C83075FB886C6B8B0A9FCD4DDBC58E7C575BA0D128FD1045A4DC45656AEF16982FCEA55BF0B75E5B30E82916CBE9CCAC692B065D5F56B89F445B9975B0794775F691BDCC160E353B0F81AAF00F79EA141DDA8C87E866BE0BEDEE457DCEA41DA0742ECF6C51902EB0804718E51E5A73FA90C7BC1CB4FFF07FDE93261F6A30000, N'6.2.0-61023')
INSERT [dbo].[Bills] ([Id], [Date], [Cost], [UserID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'afd6f3b5-68c8-e811-9b8f-d43d7ee32235', CAST(N'2018-10-05T09:34:13.4446978' AS DateTime2), 950, N'93c561ae-d8c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-05T09:34:29.943' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [Date], [Cost], [UserID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'fbba54cd-69c8-e811-9b8f-d43d7ee32235', CAST(N'2018-10-05T09:42:12.8282277' AS DateTime2), 950, N'93c561ae-d8c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-05T09:42:18.673' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [Date], [Cost], [UserID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'e0fc270c-86c9-e811-9b91-d43d7ee32235', CAST(N'2018-10-06T19:37:01.3527359' AS DateTime2), 7600, N'dc2e8b4a-7bc9-e811-9b91-d43d7ee32235', 1, CAST(N'2018-10-06T19:37:01.357' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [Date], [Cost], [UserID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'49ae1ca3-36ca-e811-9b91-d43d7ee32235', CAST(N'2018-10-07T16:41:06.0100143' AS DateTime2), 7600, N'dc2e8b4a-7bc9-e811-9b91-d43d7ee32235', 1, CAST(N'2018-10-07T16:41:06.013' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [Date], [Cost], [UserID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'deca5252-37ca-e811-9b91-d43d7ee32235', CAST(N'2018-10-07T16:45:59.9389295' AS DateTime2), 7600, N'dc2e8b4a-7bc9-e811-9b91-d43d7ee32235', 1, CAST(N'2018-10-07T16:45:59.940' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CarBrands] ([Id], [BrandName], [Description], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'1184fd40-d5c7-e811-9b8f-d43d7ee32235', N'Koenigsegg', N'Koenigsegg was founded in 1994 in Ängelholm, Sweden by Christian von Koenigsegg to produce high-performance cars. Today, it is still a company that continues to produce high performance automobiles', 1, CAST(N'2018-10-04T15:58:57.367' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CarBrands] ([Id], [BrandName], [Description], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'474daa55-d5c7-e811-9b8f-d43d7ee32235', N'Aston Martin', N'Aston Martin, British car manufacturer firm. It was founded in 1913 by Lionel Martin and Robert Bamford in a small workshop in London. They launched their first car in 1914. Aston Martin cars are completely handmade and the name of the worker who assembles the last piece is written.', 1, CAST(N'2018-10-04T15:59:32.387' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CarBrands] ([Id], [BrandName], [Description], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'9bfce763-d5c7-e811-9b8f-d43d7ee32235', N'Audi', N'Audi is a German-based automobile company and is a trademark of the Volkswagen Group. The company''''s headquarters are located in Ingolstadt, Bavaria. The company''''s history dates back to 1899 and August Horch.', 1, CAST(N'2018-10-04T15:59:56.287' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CarBrands] ([Id], [BrandName], [Description], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'e8f67f7a-d5c7-e811-9b8f-d43d7ee32235', N'Bentley', N'Bentley is a British luxury car manufacturer. Bentley was founded by Walter Owen Bentley in the UK on January 18, 1919. Initially only the company engaged in the production of engines and chassis', 1, CAST(N'2018-10-04T16:00:34.183' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CarBrands] ([Id], [BrandName], [Description], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'978cdb8a-d5c7-e811-9b8f-d43d7ee32235', N'Bugatti', N'Bugatti was founded in 1909 in Mulhouse, France by Ettore Bugatti to produce high-performance cars. II. It produced some of the world''''s most prestigious and fast cars until the start of World War II.', 1, CAST(N'2018-10-04T16:01:01.637' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CarBrands] ([Id], [BrandName], [Description], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'de34e7a9-d5c7-e811-9b8f-d43d7ee32235', N'Chevrolet', N'Chevrolet is an American car brand founded in 1911. It is named after its founder, Louis Chevrolet. In 1918, General Motors acquired 54.6%. Chevy''''s name is Chevy. As of the end of 2015, it decided to withdraw from Western and Eastern Europe.In 1914, the company used the bow tie-shaped logo.', 1, CAST(N'2018-10-04T16:01:53.720' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CarBrands] ([Id], [BrandName], [Description], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'13619ab6-d5c7-e811-9b8f-d43d7ee32235', N'Pagani', N'Pagani is a manufacturer of Italian sports cars and carbon fiber. Founded in 1992 by Horacio Pagani. It is located in San Cesario sul Panaro near Modena.', 1, CAST(N'2018-10-04T16:02:15.027' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CarBrands] ([Id], [BrandName], [Description], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'a4bc7ec1-d5c7-e811-9b8f-d43d7ee32235', N'Lamborghini', N'Lamborghini is an Italian car brand. Founded by Feruccio Lamborghini. The small town of Santa Agata, a small village between Bologna and Modena, has its headquarters and factory.', 1, CAST(N'2018-10-04T16:02:33.297' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CarBrands] ([Id], [BrandName], [Description], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'9c43d3f2-d5c7-e811-9b8f-d43d7ee32235', N'Porsche', N'
Dr. Ing. h.c. Porsche AG is a sports car company founded in Stuttgart by Porsche AG or Porsche alone, in 1947 by Ferdinand Porsche. The first models were Porsche 356 in 1948.', 1, CAST(N'2018-10-04T16:03:56.057' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CarBrands] ([Id], [BrandName], [Description], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'48d23507-d6c7-e811-9b8f-d43d7ee32235', N'Ferrari', N'
Ferrari S.p.A. is an Italian luxury sports car manufacturer based in Maranello, near the city of Modena in Italy. Established in 1929 as a racing team of Alfa Romeo, in 1947 it started the production of legally appropriate cars off the track.', 1, CAST(N'2018-10-04T16:04:30.263' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([Id], [CModel], [ImageUrl], [CostPerDay], [PersonCapacity], [BaggageCapacity], [MinRentAge], [Gearbox], [FuelType], [CarBrandID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'3d26599c-d6c7-e811-9b8f-d43d7ee32235', N'Agera RS', N'/Uploads/e3c70a53-997c-4a21-82ed-177995db1f69.jpg', 900, N'2', N'150', N'22', N'Automatic', N'Gasoline', N'1184fd40-d5c7-e811-9b8f-d43d7ee32235', 3, CAST(N'2018-10-04T16:08:40.433' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, CAST(N'2018-10-04T16:10:25.530' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1)
INSERT [dbo].[Cars] ([Id], [CModel], [ImageUrl], [CostPerDay], [PersonCapacity], [BaggageCapacity], [MinRentAge], [Gearbox], [FuelType], [CarBrandID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'5d19c1d3-d6c7-e811-9b8f-d43d7ee32235', N'Regera', N'/Uploads/af7fef99-9094-494f-bf60-a1cddb14921c.jpg', 900, N'2', N'80', N'25', N'Full Automatic', N'gasoline', N'1184fd40-d5c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-04T16:10:13.430' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([Id], [CModel], [ImageUrl], [CostPerDay], [PersonCapacity], [BaggageCapacity], [MinRentAge], [Gearbox], [FuelType], [CarBrandID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'452dc6ed-d6c7-e811-9b8f-d43d7ee32235', N'Agera RS', N'/Uploads/d883d1bb-4493-4afe-a1c7-555d74bce3a4.jpg', 900, N'2', N'80', N'25', N'Automatic', N'gasoline', N'1184fd40-d5c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-04T16:10:57.090' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([Id], [CModel], [ImageUrl], [CostPerDay], [PersonCapacity], [BaggageCapacity], [MinRentAge], [Gearbox], [FuelType], [CarBrandID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'34aef512-d7c7-e811-9b8f-d43d7ee32235', N'Vulcan', N'/Uploads/9872bc54-26a2-46ed-b583-7c1d572953d1.jpg', 950, N'2', N'90', N'21', N'Automatic', N'gasoline', N'474daa55-d5c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-04T16:11:59.470' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([Id], [CModel], [ImageUrl], [CostPerDay], [PersonCapacity], [BaggageCapacity], [MinRentAge], [Gearbox], [FuelType], [CarBrandID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'ce4f9c3a-d7c7-e811-9b8f-d43d7ee32235', N'Vantage S', N'/Uploads/b15030ee-ed97-4932-bdc9-053dfd7eafa1.jpg', 950, N'2', N'90', N'22', N'Automatic', N'gasoline', N'474daa55-d5c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-04T16:13:05.993' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([Id], [CModel], [ImageUrl], [CostPerDay], [PersonCapacity], [BaggageCapacity], [MinRentAge], [Gearbox], [FuelType], [CarBrandID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'57dbf26b-d7c7-e811-9b8f-d43d7ee32235', N'R8', N'/Uploads/c03a592c-6fde-4558-8016-e7c5b2b70a8f.png', 500, N'4', N'250', N'21', N'Semi-Automatic', N'Diesel', N'9bfce763-d5c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-04T16:14:28.770' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([Id], [CModel], [ImageUrl], [CostPerDay], [PersonCapacity], [BaggageCapacity], [MinRentAge], [Gearbox], [FuelType], [CarBrandID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'aa0320a2-d7c7-e811-9b8f-d43d7ee32235', N'Flyingspur', N'/Uploads/fa9ae4b2-8e47-4a07-99e6-7d86efacfe10.jpg', 1200, N'4', N'250', N'25', N'Semi-Automatic', N'gasoline', N'e8f67f7a-d5c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-04T16:15:59.663' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([Id], [CModel], [ImageUrl], [CostPerDay], [PersonCapacity], [BaggageCapacity], [MinRentAge], [Gearbox], [FuelType], [CarBrandID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'f9ae7dd0-d7c7-e811-9b8f-d43d7ee32235', N'GT-Speed', N'/Uploads/394fd3a5-2c25-4def-a3ff-e3d8efbbfcc4.jpg', 1000, N'4', N'200', N'21', N'Semi-Automatic', N'gasoline', N'e8f67f7a-d5c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-04T16:17:17.453' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([Id], [CModel], [ImageUrl], [CostPerDay], [PersonCapacity], [BaggageCapacity], [MinRentAge], [Gearbox], [FuelType], [CarBrandID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'2325f1f0-d7c7-e811-9b8f-d43d7ee32235', N'Chiron', N'/Uploads/f77ff99f-71e4-45af-a2a1-d18c1377272c.jpeg', 750, N'2', N'85', N'21', N'Automatic', N'gasoline', N'978cdb8a-d5c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-04T16:18:11.893' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([Id], [CModel], [ImageUrl], [CostPerDay], [PersonCapacity], [BaggageCapacity], [MinRentAge], [Gearbox], [FuelType], [CarBrandID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'42328615-d8c7-e811-9b8f-d43d7ee32235', N'Camaro', N'/Uploads/2f964f53-6c55-48bd-b519-891f289a089b.jpg', 600, N'4', N'150', N'21', N'Automatic', N'gasoline', N'de34e7a9-d5c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-04T16:19:13.267' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([Id], [CModel], [ImageUrl], [CostPerDay], [PersonCapacity], [BaggageCapacity], [MinRentAge], [Gearbox], [FuelType], [CarBrandID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'7e855831-d8c7-e811-9b8f-d43d7ee32235', N'California Turbo', N'/Uploads/5ba0e078-1138-495d-ae5e-c1e5fe23c821.jpg', 750, N'2', N'85', N'21', N'Automatic', N'gasoline', N'48d23507-d6c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-04T16:19:59.947' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([Id], [CModel], [ImageUrl], [CostPerDay], [PersonCapacity], [BaggageCapacity], [MinRentAge], [Gearbox], [FuelType], [CarBrandID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'dc85ac4a-d8c7-e811-9b8f-d43d7ee32235', N'Aventador', N'/Uploads/e0e44837-5409-4cd3-a32a-873580178c6f.jpg', 1250, N'2', N'80', N'25', N'Automatic', N'gasoline', N'a4bc7ec1-d5c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-04T16:20:42.437' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([Id], [CModel], [ImageUrl], [CostPerDay], [PersonCapacity], [BaggageCapacity], [MinRentAge], [Gearbox], [FuelType], [CarBrandID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'00cd705e-d8c7-e811-9b8f-d43d7ee32235', N'Huayra', N'/Uploads/f25d4581-9425-4eba-bb53-6aef11685f32.jpg', 2500, N'2', N'85', N'21', N'Automatic', N'gasoline', N'13619ab6-d5c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-04T16:21:15.603' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([Id], [CModel], [ImageUrl], [CostPerDay], [PersonCapacity], [BaggageCapacity], [MinRentAge], [Gearbox], [FuelType], [CarBrandID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'e0fb8482-d8c7-e811-9b8f-d43d7ee32235', N'Carrera', N'/Uploads/c7023276-cd13-46c5-8c2a-6dd19a19c202.png', 560, N'2', N'85', N'21', N'Semi-Automatic', N'gasoline', N'9c43d3f2-d5c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-04T16:22:16.127' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Contacts] ([Id], [Email], [Name], [Phone], [Subject], [Message], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'74a0f723-6fc8-e811-9b8f-d43d7ee32235', N'ozge@ozge.com', N'Özge Er', N'05556669988', N'rental', N'rent rent rent rent rent rent', 1, CAST(N'2018-10-05T10:20:31.340' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Rents] ([Id], [StartDate], [EndDate], [PickUpPlace], [DropPlace], [Paid], [Billed], [Returned], [UserID], [CarID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'3cd1be16-e1c7-e811-9b8f-d43d7ee32235', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'1', N'2', 1, 1, 0, N'93c561ae-d8c7-e811-9b8f-d43d7ee32235', N'ce4f9c3a-d7c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-04T17:23:40.603' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Rents] ([Id], [StartDate], [EndDate], [PickUpPlace], [DropPlace], [Paid], [Billed], [Returned], [UserID], [CarID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'be33ba88-68c8-e811-9b8f-d43d7ee32235', CAST(N'2018-10-09T00:00:00.0000000' AS DateTime2), CAST(N'2018-10-11T00:00:00.0000000' AS DateTime2), N'3', N'3', 1, 1, 0, N'93c561ae-d8c7-e811-9b8f-d43d7ee32235', N'dc85ac4a-d8c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-05T09:33:13.903' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Rents] ([Id], [StartDate], [EndDate], [PickUpPlace], [DropPlace], [Paid], [Billed], [Returned], [UserID], [CarID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'f85036b0-69c8-e811-9b8f-d43d7ee32235', CAST(N'2018-11-23T00:00:00.0000000' AS DateTime2), CAST(N'2018-11-28T00:00:00.0000000' AS DateTime2), N'Toronto', N'Montreal', 1, 1, 0, N'93c561ae-d8c7-e811-9b8f-d43d7ee32235', N'aa0320a2-d7c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-05T09:41:29.733' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Rents] ([Id], [StartDate], [EndDate], [PickUpPlace], [DropPlace], [Paid], [Billed], [Returned], [UserID], [CarID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'aa01d87a-7bc9-e811-9b91-d43d7ee32235', CAST(N'2018-10-10T00:00:00.0000000' AS DateTime2), CAST(N'2018-10-17T00:00:00.0000000' AS DateTime2), N'Toronto', N'Montreal', 1, 1, 0, N'dc2e8b4a-7bc9-e811-9b91-d43d7ee32235', N'34aef512-d7c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-06T18:21:22.337' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Rents] ([Id], [StartDate], [EndDate], [PickUpPlace], [DropPlace], [Paid], [Billed], [Returned], [UserID], [CarID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'dffc270c-86c9-e811-9b91-d43d7ee32235', CAST(N'2018-10-10T00:00:00.0000000' AS DateTime2), CAST(N'2018-10-17T00:00:00.0000000' AS DateTime2), N'Ottawa', N'Ottowa', 1, 1, 0, N'dc2e8b4a-7bc9-e811-9b91-d43d7ee32235', N'ce4f9c3a-d7c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-06T19:37:01.003' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Rents] ([Id], [StartDate], [EndDate], [PickUpPlace], [DropPlace], [Paid], [Billed], [Returned], [UserID], [CarID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'48ae1ca3-36ca-e811-9b91-d43d7ee32235', CAST(N'2018-10-08T00:00:00.0000000' AS DateTime2), CAST(N'2018-10-11T00:00:00.0000000' AS DateTime2), N'Montreal', N'Vancouver', 1, 1, 0, N'dc2e8b4a-7bc9-e811-9b91-d43d7ee32235', N'42328615-d8c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-07T16:41:05.677' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Rents] ([Id], [StartDate], [EndDate], [PickUpPlace], [DropPlace], [Paid], [Billed], [Returned], [UserID], [CarID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'ddca5252-37ca-e811-9b91-d43d7ee32235', CAST(N'2018-10-10T00:00:00.0000000' AS DateTime2), CAST(N'2018-10-14T00:00:00.0000000' AS DateTime2), N'Ottawa', N'Ottowa', 1, 1, 0, N'dc2e8b4a-7bc9-e811-9b91-d43d7ee32235', N'ce4f9c3a-d7c7-e811-9b8f-d43d7ee32235', 1, CAST(N'2018-10-07T16:45:59.660' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [FirstName], [LastName], [UserName], [Password], [Email], [Role], [BirthDate], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'37e392a0-d8c7-e811-9b8f-d43d7ee32235', N'admin', N'admin', N'admin', N'admin', N'admin@admin.com', 3, NULL, 1, CAST(N'2018-10-04T16:23:06.543' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [FirstName], [LastName], [UserName], [Password], [Email], [Role], [BirthDate], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'93c561ae-d8c7-e811-9b8f-d43d7ee32235', N'deniz', N'donmez', N'deniz', N'deniz', N'deniz@deniz.com', 1, NULL, 1, CAST(N'2018-10-04T16:23:29.723' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [FirstName], [LastName], [UserName], [Password], [Email], [Role], [BirthDate], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'a98a7bf2-6ec8-e811-9b8f-d43d7ee32235', N'barış', N'alkaya', N'baris', N'baris', N'baris@baris.com', 1, NULL, 1, CAST(N'2018-10-05T10:19:08.337' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [FirstName], [LastName], [UserName], [Password], [Email], [Role], [BirthDate], [Status], [CreatedDate], [CreatedComputerName], [CreatedIp], [CreatedUsername], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIp], [ModifiedUsername], [ModifiedBy]) VALUES (N'dc2e8b4a-7bc9-e811-9b91-d43d7ee32235', N'Aslı', N'İçke', N'asli', N'asli', N'asli@asli.com', 1, NULL, 1, CAST(N'2018-10-06T18:20:00.743' AS DateTime), N'MIHALIDIS', N'123', N'MIHALIDIS\pinar', 1, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Index [IX_UserID]    Script Date: 07.10.2018 17:28:30 ******/
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[Bills]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarBrandID]    Script Date: 07.10.2018 17:28:30 ******/
CREATE NONCLUSTERED INDEX [IX_CarBrandID] ON [dbo].[Cars]
(
	[CarBrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarID]    Script Date: 07.10.2018 17:28:30 ******/
CREATE NONCLUSTERED INDEX [IX_CarID] ON [dbo].[Rents]
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserID]    Script Date: 07.10.2018 17:28:30 ******/
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[Rents]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bills] ADD  DEFAULT (newsequentialid()) FOR [Id]
GO
ALTER TABLE [dbo].[CarBrands] ADD  DEFAULT (newsequentialid()) FOR [Id]
GO
ALTER TABLE [dbo].[Cars] ADD  DEFAULT (newsequentialid()) FOR [Id]
GO
ALTER TABLE [dbo].[Contacts] ADD  DEFAULT (newsequentialid()) FOR [Id]
GO
ALTER TABLE [dbo].[Rents] ADD  DEFAULT (newsequentialid()) FOR [Id]
GO
ALTER TABLE [dbo].[UserDetails] ADD  DEFAULT (newsequentialid()) FOR [Id]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Bills_dbo.UserDetails_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserDetails] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_dbo.Bills_dbo.UserDetails_UserID]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cars_dbo.CarBrands_CarBrandID] FOREIGN KEY([CarBrandID])
REFERENCES [dbo].[CarBrands] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_dbo.Cars_dbo.CarBrands_CarBrandID]
GO
ALTER TABLE [dbo].[Rents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Rents_dbo.Cars_CarID] FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rents] CHECK CONSTRAINT [FK_dbo.Rents_dbo.Cars_CarID]
GO
ALTER TABLE [dbo].[Rents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Rents_dbo.UserDetails_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserDetails] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rents] CHECK CONSTRAINT [FK_dbo.Rents_dbo.UserDetails_UserID]
GO
USE [master]
GO
ALTER DATABASE [MihalidisRentACar] SET  READ_WRITE 
GO
