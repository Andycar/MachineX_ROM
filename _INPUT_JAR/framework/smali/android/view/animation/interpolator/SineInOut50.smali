.class public Landroid/view/animation/interpolator/SineInOut50;
.super Ljava/lang/Object;
.source "SineInOut50.java"

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
    const/4 v0, 0x2

    new-array v0, v0, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/animation/interpolator/SineInOut50;->segments:[[F

    return-void

    nop

    :array_18
    .array-data 4
        0x0
        0x3d4ccccd    # 0.05f
        0x3f1c28f6    # 0.61f
    .end array-data

    :array_22
    .array-data 4
        0x3f1c28f6    # 0.61f
        0x3f7fbe77    # 0.999f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3
    .param p1, "input"    # F

    .prologue
    .line 78
    sget-object v0, Landroid/view/animation/interpolator/SineInOut50;->segments:[[F

    invoke-static {p1, v0}, Landroid/view/animation/interpolator/SineBase;->getInterpolation(F[[F)F

    move-result v0

    return v0
.end method
