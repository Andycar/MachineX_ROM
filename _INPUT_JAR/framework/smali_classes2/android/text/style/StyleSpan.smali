.class public Landroid/text/style/StyleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "StyleSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mStyle:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "style"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 45
    iput p1, p0, Landroid/text/style/StyleSpan;->mStyle:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    .line 50
    return-void
.end method

.method private static apply(Landroid/graphics/Paint;I)V
    .registers 10
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "style"    # I

    .prologue
    const/high16 v7, -0x41800000    # -0.25f

    const/4 v6, 0x1

    .line 84
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 85
    .local v1, "old":Landroid/graphics/Typeface;
    if-nez v1, :cond_41

    .line 86
    const/4 v2, 0x0

    .line 91
    .local v2, "oldStyle":I
    :goto_a
    or-int v4, v2, p1

    .line 95
    .local v4, "want":I
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v5

    cmpl-float v5, v5, v7

    if-nez v5, :cond_21

    if-ne p1, v6, :cond_21

    const/4 v5, 0x2

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    if-ne v1, v5, :cond_21

    .line 97
    invoke-static {v6}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 102
    :cond_21
    if-nez v1, :cond_46

    .line 103
    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 108
    .local v3, "tf":Landroid/graphics/Typeface;
    :goto_27
    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v5

    xor-int/lit8 v5, v5, -0x1

    and-int v0, v4, v5

    .line 110
    .local v0, "fake":I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_36

    .line 111
    invoke-virtual {p0, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 114
    :cond_36
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_3d

    .line 115
    invoke-virtual {p0, v7}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 118
    :cond_3d
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 119
    return-void

    .line 88
    .end local v0    # "fake":I
    .end local v2    # "oldStyle":I
    .end local v3    # "tf":Landroid/graphics/Typeface;
    .end local v4    # "want":I
    :cond_41
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    .restart local v2    # "oldStyle":I
    goto :goto_a

    .line 105
    .restart local v4    # "want":I
    :cond_46
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    .restart local v3    # "tf":Landroid/graphics/Typeface;
    goto :goto_27
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x7

    return v0
.end method

.method public getStyle()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 73
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-static {p1, v0}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;I)V

    .line 74
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 78
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-static {p1, v0}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;I)V

    .line 79
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void
.end method
