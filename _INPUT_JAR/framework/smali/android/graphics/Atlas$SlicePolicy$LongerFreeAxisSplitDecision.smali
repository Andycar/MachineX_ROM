.class Landroid/graphics/Atlas$SlicePolicy$LongerFreeAxisSplitDecision;
.super Ljava/lang/Object;
.source "Atlas.java"

# interfaces
.implements Landroid/graphics/Atlas$SlicePolicy$SplitDecision;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Atlas$SlicePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongerFreeAxisSplitDecision"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Atlas$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/graphics/Atlas$1;

    .prologue
    .line 343
    invoke-direct {p0}, Landroid/graphics/Atlas$SlicePolicy$LongerFreeAxisSplitDecision;-><init>()V

    return-void
.end method


# virtual methods
.method public splitHorizontal(IIII)Z
    .registers 6
    .param p1, "freeWidth"    # I
    .param p2, "freeHeight"    # I
    .param p3, "rectWidth"    # I
    .param p4, "rectHeight"    # I

    .prologue
    .line 347
    if-le p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
