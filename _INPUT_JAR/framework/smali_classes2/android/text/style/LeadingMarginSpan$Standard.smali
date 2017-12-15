.class public Landroid/text/style/LeadingMarginSpan$Standard;
.super Ljava/lang/Object;
.source "LeadingMarginSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/LeadingMarginSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Standard"
.end annotation


# instance fields
.field private final mFirst:I

.field private final mRest:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "every"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1, p1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    .line 120
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "first"    # I
    .param p2, "rest"    # I

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mFirst:I

    .line 111
    iput p2, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mRest:I

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mFirst:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mRest:I

    .line 125
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .registers 13
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "layout"    # Landroid/text/Layout;

    .prologue
    .line 150
    return-void
.end method

.method public getLeadingMargin(Z)I
    .registers 3
    .param p1, "first"    # Z

    .prologue
    .line 141
    if-eqz p1, :cond_5

    iget v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mFirst:I

    :goto_4
    return v0

    :cond_5
    iget v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mRest:I

    goto :goto_4
.end method

.method public getSpanTypeId()I
    .registers 2

    .prologue
    .line 128
    const/16 v0, 0xa

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 136
    iget v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mFirst:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mRest:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return-void
.end method
