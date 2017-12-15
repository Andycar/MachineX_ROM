.class public Landroid/graphics/ImageFilter$BlurFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlurFilter"
.end annotation


# static fields
.field public static final TYPE_COSINE:I = 0x1

.field public static final TYPE_GAUSSIAN:I = 0x0

.field public static final TYPE_SGI:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 460
    const/16 v0, 0x36

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    .line 461
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ImageFilter$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/graphics/ImageFilter$1;

    .prologue
    .line 424
    invoke-direct {p0}, Landroid/graphics/ImageFilter$BlurFilter;-><init>()V

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
    .line 424
    invoke-super {p0}, Landroid/graphics/ImageFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public setOptimization(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 485
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    .line 486
    return-void
.end method

.method public setRadius(F)V
    .registers 5
    .param p1, "radius"    # F

    .prologue
    .line 471
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    .line 472
    return-void
.end method
