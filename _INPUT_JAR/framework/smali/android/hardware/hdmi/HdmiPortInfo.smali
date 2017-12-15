.class public final Landroid/hardware/hdmi/HdmiPortInfo;
.super Ljava/lang/Object;
.source "HdmiPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORT_INPUT:I = 0x0

.field public static final PORT_OUTPUT:I = 0x1


# instance fields
.field private final mAddress:I

.field private final mArcSupported:Z

.field private final mCecSupported:Z

.field private final mId:I

.field private final mMhlSupported:Z

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 129
    new-instance v0, Landroid/hardware/hdmi/HdmiPortInfo$1;

    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiPortInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/hdmi/HdmiPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIZZZ)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "address"    # I
    .param p4, "cec"    # Z
    .param p5, "mhl"    # Z
    .param p6, "arc"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    .line 55
    iput p2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    .line 56
    iput p3, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    .line 57
    iput-boolean p4, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    .line 58
    iput-boolean p6, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    .line 59
    iput-boolean p5, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    return v0
.end method

.method public isArcSupported()Z
    .registers 2

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    return v0
.end method

.method public isCecSupported()Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    return v0
.end method

.method public isMhlSupported()Z
    .registers 2

    .prologue
    .line 104
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 168
    .local v0, "s":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "port_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const-string v1, "address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x%04x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const-string v1, "cec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    const-string v1, "arc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string/jumbo v1, "mhl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    if-eqz v0, :cond_29

    move v0, v1

    :goto_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    if-eqz v0, :cond_2b

    move v0, v1

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    if-eqz v0, :cond_2d

    :goto_25
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    return-void

    :cond_29
    move v0, v2

    .line 160
    goto :goto_16

    :cond_2b
    move v0, v2

    .line 161
    goto :goto_1e

    :cond_2d
    move v1, v2

    .line 162
    goto :goto_25
.end method
