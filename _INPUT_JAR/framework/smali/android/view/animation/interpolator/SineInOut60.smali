.class public Landroid/view/animation/interpolator/SineInOut60;
.super Ljava/lang/Object;
.source "SineInOut60.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final segments:[[F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x3

    .line 56
    new-array v0, v3, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [F

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/animation/interpolator/SineInOut60;->segments:[[F

    return-void

    :array_1e
    .array-data 4
        0x0
        0x3c23d70a    # 0.01f
        0x3ebd70a4    # 0.37f
    .end array-data

    :array_28
    .array-data 4
        0x3ebd70a4    # 0.37f
        0x3f3851ec    # 0.72f
        0x3f6353f8    # 0.888f
    .end array-data

    :array_32
    .array-data 4
        0x3f6353f8    # 0.888f
        0x3f7ff972    # 0.9999f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3
    .param p1, "input"    # F

    .prologue
    .line 80
    sget-object v0, Landroid/view/animation/interpolator/SineInOut60;->segments:[[F

    invoke-static {p1, v0}, Landroid/view/animation/interpolator/SineBase;->getInterpolation(F[[F)F

    move-result v0

    return v0
.end method
