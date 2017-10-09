.class public Lcom/android/server/display/CmdInfo;
.super Ljava/lang/Object;
.source "CmdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/CmdInfo$CmdType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/server/display/CmdInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private cmdDetail:I

.field private cmdType:Lcom/android/server/display/CmdInfo$CmdType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, Lcom/android/server/display/CmdInfo$1;

    invoke-direct {v0}, Lcom/android/server/display/CmdInfo$1;-><init>()V

    sput-object v0, Lcom/android/server/display/CmdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "aCmdDetail"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "WfdBridgeServer"

    iput-object v0, p0, Lcom/android/server/display/CmdInfo;->TAG:Ljava/lang/String;

    .line 68
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    .line 69
    sget-object v0, Lcom/android/server/display/CmdInfo$CmdType;->START_PLAYER:Lcom/android/server/display/CmdInfo$CmdType;

    iput-object v0, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    .line 72
    :goto_e
    iput p2, p0, Lcom/android/server/display/CmdInfo;->cmdDetail:I

    .line 73
    return-void

    .line 71
    :cond_11
    sget-object v0, Lcom/android/server/display/CmdInfo$CmdType;->START_SOURCE:Lcom/android/server/display/CmdInfo$CmdType;

    iput-object v0, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    goto :goto_e
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "WfdBridgeServer"

    iput-object v0, p0, Lcom/android/server/display/CmdInfo;->TAG:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/display/CmdInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/server/display/CmdInfo$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/server/display/CmdInfo$1;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/android/server/display/CmdInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/CmdInfo$CmdType;)V
    .registers 3
    .param p1, "aCmdType"    # Lcom/android/server/display/CmdInfo$CmdType;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "WfdBridgeServer"

    iput-object v0, p0, Lcom/android/server/display/CmdInfo;->TAG:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/CmdInfo;->cmdDetail:I

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/CmdInfo$CmdType;I)V
    .registers 4
    .param p1, "aCmdType"    # Lcom/android/server/display/CmdInfo$CmdType;
    .param p2, "aCmdDetail"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "WfdBridgeServer"

    iput-object v0, p0, Lcom/android/server/display/CmdInfo;->TAG:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    .line 64
    iput p2, p0, Lcom/android/server/display/CmdInfo;->cmdDetail:I

    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public getCmdDetail()I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/display/CmdInfo;->cmdDetail:I

    return v0
.end method

.method public getCmdType()Lcom/android/server/display/CmdInfo$CmdType;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 42
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/CmdInfo$CmdType;->valueOf(Ljava/lang/String;)Lcom/android/server/display/CmdInfo$CmdType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_11

    .line 47
    :goto_a
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/display/CmdInfo;->cmdDetail:I
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_10} :catch_16

    .line 51
    :goto_10
    return-void

    .line 43
    :catch_11
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    goto :goto_a

    .line 48
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_16
    move-exception v0

    .line 49
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/CmdInfo;->cmdDetail:I

    goto :goto_10
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    if-nez v0, :cond_f

    const-string v0, ""

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget v0, p0, Lcom/android/server/display/CmdInfo;->cmdDetail:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    return-void

    .line 36
    :cond_f
    iget-object v0, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    invoke-virtual {v0}, Lcom/android/server/display/CmdInfo$CmdType;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
