.class Landroid/graphics/Paint$Gradient;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Gradient"
.end annotation


# instance fields
.field alpha:F

.field color:I

.field position:F


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Paint$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/graphics/Paint$1;

    .prologue
    .line 1242
    invoke-direct {p0}, Landroid/graphics/Paint$Gradient;-><init>()V

    return-void
.end method
