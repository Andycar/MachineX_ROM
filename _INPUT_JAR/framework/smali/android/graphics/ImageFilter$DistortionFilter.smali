.class public Landroid/graphics/ImageFilter$DistortionFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DistortionFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 842
    const/16 v0, 0x31

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    .line 843
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ImageFilter$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/graphics/ImageFilter$1;

    .prologue
    .line 839
    invoke-direct {p0}, Landroid/graphics/ImageFilter$DistortionFilter;-><init>()V

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
    .line 839
    invoke-super {p0}, Landroid/graphics/ImageFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public setDistortion(F)V
    .registers 3
    .param p1, "power"    # F

    .prologue
    .line 853
    const/4 v0, 0x0

    invoke-super {p0, v0, p1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    .line 854
    return-void
.end method
