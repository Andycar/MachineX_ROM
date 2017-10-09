.class Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPlaceInfo"
.end annotation


# instance fields
.field private mBtDeviceName:Ljava/lang/String;

.field private mBtMacAddress:Ljava/lang/String;

.field private mByteMap:[B

.field private mGpsLatitude:I

.field private mGpsLocation:Ljava/lang/String;

.field private mGpsLongitude:I

.field private mProfileName:Ljava/lang/String;

.field private mTimestamp:Ljava/lang/String;

.field private mType:I

.field private mWifiApBSSID:Ljava/lang/String;

.field private mWifiApName:Ljava/lang/String;

.field private mWifiAutoConnect:I

.field private mWifiFrequency:I

.field final synthetic this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;Lcom/android/settings/myplace/MyPlaceProfileSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;
    .param p2, "x1"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$1;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    .param p1, "x1"    # [B

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    .prologue
    .line 134
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiFrequency:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiFrequency:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    .prologue
    .line 134
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiAutoConnect:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiAutoConnect:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    .prologue
    .line 134
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mTimestamp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    .prologue
    .line 134
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    .prologue
    .line 134
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I

    return p1
.end method
