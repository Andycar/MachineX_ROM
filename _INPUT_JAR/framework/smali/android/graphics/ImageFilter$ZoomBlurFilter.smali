.class public Landroid/graphics/ImageFilter$ZoomBlurFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoomBlurFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 645
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    .line 646
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ImageFilter$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/graphics/ImageFilter$1;

    .prologue
    .line 642
    invoke-direct {p0}, Landroid/graphics/ImageFilter$ZoomBlurFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 642
    invoke-super {p0}, Landroid/graphics/ImageFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public setPivot(FF)V
    .registers 4
    .param p1, "xRatio"    # F
    .param p2, "yRatio"    # F

    .prologue
    .line 668
    const/4 v0, 0x1

    invoke-super {p0, v0, p1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    .line 669
    const/4 v0, 0x2

    invoke-super {p0, v0, p2}, Landroid/graphics/ImageFilter;->setValue(IF)V

    .line 670
    return-void
.end method

.method public setZoomRatio(F)V
    .registers 3
    .param p1, "zoom"    # F

    .prologue
    .line 656
    const/4 v0, 0x0

    invoke-super {p0, v0, p1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    .line 657
    return-void
.end method
