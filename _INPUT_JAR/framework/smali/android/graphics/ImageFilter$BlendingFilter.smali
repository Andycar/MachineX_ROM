.class public Landroid/graphics/ImageFilter$BlendingFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlendingFilter"
.end annotation


# static fields
.field public static final BLENDING_MODE_MULTIPLY:I = 0x1

.field public static final BLENDING_MODE_NORMAL:I = 0x0

.field public static final BLENDING_MODE_SCREEN:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1050
    const/16 v0, 0x35

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    .line 1056
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ImageFilter$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/graphics/ImageFilter$1;

    .prologue
    .line 1026
    invoke-direct {p0}, Landroid/graphics/ImageFilter$BlendingFilter;-><init>()V

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
    .line 1026
    invoke-super {p0}, Landroid/graphics/ImageFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1066
    invoke-super {p0, p1}, Landroid/graphics/ImageFilter;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1067
    return-void
.end method

.method public setOperation(I)V
    .registers 4
    .param p1, "operation"    # I

    .prologue
    .line 1080
    const/4 v0, 0x0

    int-to-float v1, p1

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    .line 1081
    return-void
.end method
