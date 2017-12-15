.class public Landroid/graphics/ImageFilter$MosaicFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MosaicFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 890
    const/16 v0, 0x33

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    .line 891
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ImageFilter$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/graphics/ImageFilter$1;

    .prologue
    .line 887
    invoke-direct {p0}, Landroid/graphics/ImageFilter$MosaicFilter;-><init>()V

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
    .line 887
    invoke-super {p0}, Landroid/graphics/ImageFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public setRadius(F)V
    .registers 4
    .param p1, "radius"    # F

    .prologue
    .line 902
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    .line 903
    return-void
.end method
