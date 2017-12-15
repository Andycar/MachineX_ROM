.class Landroid/media/MutableBackgroundColorSpan;
.super Landroid/text/style/CharacterStyle;
.source "ClosedCaptionRenderer.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "color"    # I

    .prologue
    .line 1049
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 1050
    iput p1, p0, Landroid/media/MutableBackgroundColorSpan;->mColor:I

    .line 1051
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 1052
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 1053
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MutableBackgroundColorSpan;->mColor:I

    .line 1054
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 1067
    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundColor()I
    .registers 2

    .prologue
    .line 1059
    iget v0, p0, Landroid/media/MutableBackgroundColorSpan;->mColor:I

    return v0
.end method

.method public getSpanTypeId()I
    .registers 2

    .prologue
    .line 1063
    const/16 v0, 0xc

    return v0
.end method

.method public setBackgroundColor(I)V
    .registers 2
    .param p1, "color"    # I

    .prologue
    .line 1056
    iput p1, p0, Landroid/media/MutableBackgroundColorSpan;->mColor:I

    .line 1057
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 1075
    iget v0, p0, Landroid/media/MutableBackgroundColorSpan;->mColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 1076
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1071
    iget v0, p0, Landroid/media/MutableBackgroundColorSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1072
    return-void
.end method
