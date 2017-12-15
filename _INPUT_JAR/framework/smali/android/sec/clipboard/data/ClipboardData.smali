.class public abstract Landroid/sec/clipboard/data/ClipboardData;
.super Ljava/lang/Object;
.source "ClipboardData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/sec/clipboard/data/ClipboardData;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final LOG_LEN:I

.field protected mCallerUid:J

.field protected mClipdata:Landroid/content/ClipData;

.field protected mFormatID:I

.field protected mIsProtected:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 188
    new-instance v0, Landroid/sec/clipboard/data/ClipboardData$1;

    invoke-direct {v0}, Landroid/sec/clipboard/data/ClipboardData$1;-><init>()V

    sput-object v0, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "format"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x14

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardData;->LOG_LEN:I

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mCallerUid:J

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    .line 65
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    .line 67
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mCallerUid:J

    .line 69
    return-void
.end method


# virtual methods
.method public GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 6
    .param p1, "format"    # I

    .prologue
    .line 96
    invoke-static {p1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 98
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_e

    .line 99
    invoke-virtual {p0, p1, v0}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 100
    const/4 v0, 0x0

    .line 108
    :cond_d
    :goto_d
    return-object v0

    .line 103
    :cond_e
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_d

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipBoardDataFactory.CreateClipBoardData(format) -> result == null, format == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public GetFomat()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    return v0
.end method

.method public GetProtectState()Z
    .registers 2

    .prologue
    .line 224
    iget-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    return v0
.end method

.method public IsAlternateformatAvailable(I)Z
    .registers 5
    .param p1, "format"    # I

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, "isformat":Z
    iget v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    if-ne v2, p1, :cond_7

    .line 121
    const/4 v2, 0x1

    .line 128
    :goto_6
    return v2

    .line 123
    :cond_7
    invoke-static {p1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 126
    .local v0, "altData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p0, p1, v0}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    move v2, v1

    .line 128
    goto :goto_6
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 4
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 139
    if-nez p2, :cond_4

    .line 140
    const/4 v0, 0x0

    .line 142
    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public SetProtectState(Z)V
    .registers 2
    .param p1, "isProtect"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    .line 217
    return-void
.end method

.method public abstract clearData()V
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, "Result":Z
    if-eqz p1, :cond_15

    .line 165
    instance-of v2, p1, Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v2, :cond_18

    move-object v1, p1

    .line 166
    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 167
    .local v1, "trgData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v2

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    if-ne v2, v3, :cond_16

    const/4 v0, 0x1

    .line 171
    .end local v1    # "trgData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_15
    :goto_15
    return v0

    .line 167
    .restart local v1    # "trgData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_16
    const/4 v0, 0x0

    goto :goto_15

    .line 169
    .end local v1    # "trgData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_18
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_15
.end method

.method public getCallerUid()J
    .registers 3

    .prologue
    .line 86
    iget-wide v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mCallerUid:J

    return-wide v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    return-object v0
.end method

.method protected abstract readFormSource(Landroid/os/Parcel;)V
.end method

.method public setClipdata(Landroid/content/ClipData;)V
    .registers 2
    .param p1, "data"    # Landroid/content/ClipData;

    .prologue
    .line 242
    iput-object p1, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 243
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 157
    iget v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    return-void
.end method
