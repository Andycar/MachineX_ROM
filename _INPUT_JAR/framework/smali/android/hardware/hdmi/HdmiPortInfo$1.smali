.class final Landroid/hardware/hdmi/HdmiPortInfo$1;
.super Ljava/lang/Object;
.source "HdmiPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiPortInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/hardware/hdmi/HdmiPortInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 11
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .local v1, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 135
    .local v2, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 136
    .local v3, "address":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v0, :cond_29

    move v4, v0

    .line 137
    .local v4, "cec":Z
    :goto_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v0, :cond_2b

    move v5, v0

    .line 138
    .local v5, "arc":Z
    :goto_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v0, :cond_2d

    move v6, v0

    .line 139
    .local v6, "mhl":Z
    :goto_23
    new-instance v0, Landroid/hardware/hdmi/HdmiPortInfo;

    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiPortInfo;-><init>(IIIZZZ)V

    return-object v0

    .end local v4    # "cec":Z
    .end local v5    # "arc":Z
    .end local v6    # "mhl":Z
    :cond_29
    move v4, v7

    .line 136
    goto :goto_15

    .restart local v4    # "cec":Z
    :cond_2b
    move v5, v7

    .line 137
    goto :goto_1c

    .restart local v5    # "arc":Z
    :cond_2d
    move v6, v7

    .line 138
    goto :goto_23
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiPortInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 144
    new-array v0, p1, [Landroid/hardware/hdmi/HdmiPortInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiPortInfo$1;->newArray(I)[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    return-object v0
.end method
