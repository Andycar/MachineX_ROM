.class public Landroid/graphics/ImageFilter$CosineBlurFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CosineBlurFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 539
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    .line 540
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ImageFilter$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/graphics/ImageFilter$1;

    .prologue
    .line 536
    invoke-direct {p0}, Landroid/graphics/ImageFilter$CosineBlurFilter;-><init>()V

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
    .line 536
    invoke-super {p0}, Landroid/graphics/ImageFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public setRadius(F)V
    .registers 5
    .param p1, "radius"    # F

    .prologue
    .line 567
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    .line 568
    return-void
.end method

.method public setRadius(I)V
    .registers 5
    .param p1, "radius"    # I

    .prologue
    .line 552
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "This method is deprecated!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_8

    .line 553
    :catch_8
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 557
    return-void
.end method
