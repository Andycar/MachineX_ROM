.class public Landroid/text/style/AbsoluteSizeSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "AbsoluteSizeSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private mDip:Z

.field private final mSize:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "size"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 33
    iput p1, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    .line 34
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3
    .param p1, "size"    # I
    .param p2, "dip"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 42
    iput p1, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    .line 43
    iput-boolean p2, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    .line 49
    return-void

    .line 48
    :cond_13
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getDip()Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    return v0
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    return v0
.end method

.method public getSpanTypeId()I
    .registers 2

    .prologue
    .line 52
    const/16 v0, 0x10

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 4
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 74
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    if-eqz v0, :cond_e

    .line 75
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float v0, v0

    iget v1, p1, Landroid/text/TextPaint;->density:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 79
    :goto_d
    return-void

    .line 77
    :cond_e
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_d
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 4
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    if-eqz v0, :cond_e

    .line 84
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float v0, v0

    iget v1, p1, Landroid/text/TextPaint;->density:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 88
    :goto_d
    return-void

    .line 86
    :cond_e
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_d
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 60
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void

    .line 61
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method
