.class public Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;
.super Ljava/lang/Object;
.source "SecLockPatternMorphEffectPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$1;,
        Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private lastX:F

.field private lastX1:F

.field private lastY:F

.field private lastY1:F

.field private final offsetX:F

.field private final offsetY:F

.field private path:[Landroid/graphics/Path;

.field private final pathTotal:I

.field private scale:F


# direct methods
.method public constructor <init>(F)V
    .locals 3
    .param p1, "scale"    # F

    .prologue
    const/16 v1, 0x3c

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "SecLockPatternViewMorphEffectPath"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->TAG:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->pathTotal:I

    .line 13
    new-array v0, v1, [Landroid/graphics/Path;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    .line 17
    const v0, -0x3c3a8000    # -395.0f

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->offsetX:F

    .line 18
    const v0, -0x3b900ccd    # -959.8f

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->offsetY:F

    .line 25
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->TAG:Ljava/lang/String;

    const-string v1, "SecLockPatternMorphEffectPath : Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecLockPatternMorphEffectPath : scale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput p1, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->scale:F

    .line 28
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->setPath()V

    .line 29
    return-void
.end method

.method private setPath()V
    .locals 10

    .prologue
    .line 33
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 34
    .local v9, "mtrx":Landroid/graphics/Matrix;
    const v0, -0x3c3a8000    # -395.0f

    const v2, -0x3b900ccd    # -959.8f

    invoke-virtual {v9, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 35
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->scale:F

    iget v2, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->scale:F

    invoke-virtual {v9, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 36
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 39
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 40
    .local v1, "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43d8d7ae

    const/high16 v3, 0x44700000    # 960.0f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 41
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3f7028f6    # -4.495f

    const v5, -0x40633333    # -1.225f

    const v6, -0x3ef4c49c    # -8.702f

    const v7, -0x3fa98937    # -3.351f

    const v8, -0x3ebaf9db    # -12.314f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 42
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x413e76c9    # -0.378f

    const v4, -0x4074fdf4    # -1.086f

    const v5, -0x40b6872b    # -0.787f

    const v6, -0x3ff5d2f2    # -2.159f

    const v7, -0x405ed917    # -1.259f

    const v8, -0x3fb353f8    # -3.198f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 43
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40b9db23    # -0.774f

    const v4, -0x402624dd    # -1.702f

    const v5, -0x4029fbe7    # -1.672f

    const v6, -0x3faa7efa    # -3.336f

    const v7, -0x3fd45a1d    # -2.682f

    const v8, -0x3f637cee    # -4.891f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 44
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40528f5c    # -1.355f

    const v4, -0x3ffa8f5c    # -2.085f

    const v5, -0x3fc5b22d    # -2.911f

    const v6, -0x3f7f22d1    # -4.027f

    const v7, -0x3f6b74bc    # -4.642f

    const v8, -0x3f466e98    # -5.799f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 45
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f26147b    # -6.81f

    const v4, -0x3f20ed91    # -6.971f

    const v5, -0x3e7d7efa    # -16.313f

    const v6, -0x3ecb374c    # -11.299f

    const v7, -0x3e296042    # -26.828f

    const v8, -0x3ecb374c    # -11.299f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 46
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 47
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 48
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4123a5e3    # 10.228f

    const/4 v4, 0x0

    const v5, 0x419bfdf4    # 19.499f

    const v6, -0x3f7cfdf4    # -4.094f

    const v7, 0x41d21cac    # 26.264f

    const v8, -0x3ed449ba    # -10.732f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 49
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fe1a9fc    # 1.763f

    const v4, -0x40228f5c    # -1.73f

    const v5, 0x4056b852    # 3.355f

    const v6, -0x3f977cee    # -3.633f

    const/high16 v7, 0x40980000    # 4.75f

    const v8, -0x3f4a3d71    # -5.68f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 50
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f8db22d    # 1.107f

    const v4, -0x402fbe77    # -1.627f

    const v5, 0x4005d2f2    # 2.091f

    const v6, -0x3fa9fbe7    # -3.344f

    const v7, 0x403be76d    # 2.936f

    const v8, -0x3f5b8d50    # -5.139f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 51
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f0ccccd    # 0.55f

    const v4, -0x406a5e35    # -1.169f

    const v5, 0x3f826e98    # 1.019f

    const v6, -0x3fe78d50    # -2.382f

    const v7, 0x3fb95810    # 1.448f

    const v8, -0x3f98c49c    # -3.613f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 52
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43d83a5e

    const v4, 0x44722e04

    const v5, 0x43d8d7ae

    const v6, 0x44712042

    const v7, 0x43d8d7ae

    const/high16 v8, 0x44700000    # 960.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 53
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 54
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 58
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 59
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43daed91

    const/high16 v3, 0x44700000    # 960.0f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 60
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3f15374c    # -7.337f

    const v5, -0x3fada1cb    # -3.287f

    const v6, -0x3ea18937    # -13.904f

    const v7, -0x3ef89375    # -8.464f

    const v8, -0x3e6d72b0    # -18.319f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 61
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40466666    # -1.45f

    const v4, -0x40428f5c    # -1.48f

    const v5, -0x3fa8d4fe    # -3.362f

    const v6, -0x3fa6e979    # -3.392f

    const v7, -0x3f5428f6    # -5.37f

    const v8, -0x3f558937    # -5.327f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 62
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40c7ae14    # -0.72f

    const v4, -0x409d70a4    # -0.885f

    const v5, -0x404353f8    # -1.474f

    const v6, -0x402147ae    # -1.74f

    const v7, -0x3feeb852    # -2.27f

    const v8, -0x3fdc7ae1    # -2.555f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 63
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f26147b    # -6.81f

    const v4, -0x3f20ed91    # -6.971f

    const v5, -0x3e7d7efa    # -16.313f

    const v6, -0x3ecb374c    # -11.299f

    const v7, -0x3e296042    # -26.828f

    const v8, -0x3ecb374c    # -11.299f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 64
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 65
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 66
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4123a5e3    # 10.228f

    const/4 v4, 0x0

    const v5, 0x419bfdf4    # 19.499f

    const v6, -0x3f7cfdf4    # -4.094f

    const v7, 0x41d21cac    # 26.264f

    const v8, -0x3ed449ba    # -10.732f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 67
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f916873    # 1.136f

    const v4, -0x407147ae    # -1.115f

    const v5, 0x400c5a1d    # 2.193f

    const v6, -0x3fec28f6    # -2.31f

    const v7, 0x404b9581    # 3.181f

    const v8, -0x3f9c1893    # -3.561f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 68
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fd7ae14    # 1.685f

    const v4, -0x402fdf3b    # -1.626f

    const v5, 0x40520c4a    # 3.282f

    const v6, -0x3fb27efa    # -3.211f

    const v7, 0x40928f5c    # 4.58f

    const v8, -0x3f6f7cee    # -4.516f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 69
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43d930e5

    const v4, 0x447391ba

    const v5, 0x43daed91

    const v6, 0x4471e2f2

    const v7, 0x43daed91

    const/high16 v8, 0x44700000    # 960.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 70
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 71
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 72
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 75
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 76
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43d7e958

    const v3, 0x446aef5c    # 939.74f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 77
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fad2f1b    # -3.294f

    const v4, -0x3fdc0831    # -2.562f

    const v5, -0x3ec70625    # -11.561f

    const v6, -0x3ef5a5e3    # -8.647f

    const v7, -0x3e7b9fbe    # -16.547f

    const v8, -0x3ecc5604    # -11.229f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 78
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f44624e    # -5.863f

    const v4, -0x3f8cfdf4    # -3.797f

    const v5, -0x3eb276c9    # -12.846f

    const v6, -0x3f3fa5e3    # -6.011f

    const v7, -0x3e5d3127    # -20.351f

    const v8, -0x3f3fa5e3    # -6.011f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 79
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 80
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 81
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40f3126f    # 7.596f

    const/4 v4, 0x0

    const v5, 0x416a978d    # 14.662f

    const v6, -0x3fef3b64    # -2.262f

    const v7, 0x41a48b44    # 20.568f

    const v8, -0x3f3b645a    # -6.144f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 82
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40aaf9db    # 5.343f

    const v4, -0x3fcfced9    # -2.753f

    const v5, 0x415fef9e    # 13.996f

    const v6, -0x3eecac08    # -9.208f

    const v7, 0x4185f9db    # 16.747f

    const v8, -0x3eca2d0e    # -11.364f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 83
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40d15810    # 6.542f

    const v4, -0x3f781893    # -4.247f

    const v5, 0x412df3b6    # 10.872f

    const v6, -0x3ec6353f    # -11.612f

    const v7, 0x412df3b6    # 10.872f

    const v8, -0x3e601062    # -19.992f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 84
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43dd8e35

    const v4, 0x446ddc4a

    const v5, 0x43db4c6a

    const v6, 0x446bfc39

    const v7, 0x43d7e958

    const v8, 0x446aef5c    # 939.74f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 85
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 86
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 87
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 90
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 91
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43e02ed9

    const/high16 v3, 0x44700000    # 960.0f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 92
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3ed22d0e    # -10.864f

    const v5, -0x3f14cccd    # -7.35f

    const v6, -0x3e5ff1aa    # -20.007f

    const v7, -0x3e753b64    # -17.346f

    const v8, -0x3e4a0e56    # -22.743f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 93
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3faf5c29    # -3.26f

    const v4, -0x40374bc7    # -1.568f

    const v5, -0x3ee18937    # -9.904f

    const v6, -0x3f3deb85    # -6.065f

    const v7, -0x3e821062    # -15.871f

    const v8, -0x3ef2bc6a    # -8.829f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 94
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f45374c    # -5.837f

    const v4, -0x3f903127    # -3.747f

    const v5, -0x3eb39db2    # -12.774f

    const v6, -0x3f424dd3    # -5.928f

    const v7, -0x3e5e3333    # -20.225f

    const v8, -0x3f424dd3    # -5.928f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 95
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 96
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 97
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40ec8312    # 7.391f

    const/4 v4, 0x0

    const v5, 0x41646a7f    # 14.276f

    const v6, -0x3ff6a7f0    # -2.146f

    const v7, 0x41a0a9fc    # 20.083f

    const v8, -0x3f45374c    # -5.837f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 98
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40d8bc6a    # 6.773f

    const v4, -0x3fc1a9fc    # -2.974f

    const v5, 0x41571aa0    # 13.444f

    const v6, -0x3efa0419    # -8.374f

    const v7, 0x417dae14    # 15.855f

    const v8, -0x3ef21cac    # -8.868f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 99
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3e73b646    # 0.238f

    const v4, -0x42b74bc7    # -0.049f

    const v5, 0x3ef43958    # 0.477f

    const v6, -0x42083127    # -0.121f

    const v7, 0x3f36872b    # 0.713f

    const v8, -0x41a8f5c3    # -0.21f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 100
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43dca4dd

    const v4, 0x4474eac1

    const v5, 0x43e02ed9

    const v6, 0x4472aa5e

    const v7, 0x43e02ed9

    const/high16 v8, 0x44700000    # 960.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 101
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 102
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 106
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 107
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43e2c4fe

    const/high16 v3, 0x44700000    # 960.0f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 108
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3ece1062    # -11.121f

    const v5, -0x3f070a3d    # -7.78f

    const v6, -0x3e5ca7f0    # -20.418f

    const v7, -0x3e6e76c9    # -18.192f

    const v8, -0x3e49e560    # -22.763f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 109
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x415cac08    # -0.319f

    const v4, -0x422b020c    # -0.104f

    const v5, -0x40da1cac    # -0.648f

    const v6, -0x41b020c5    # -0.203f

    const v7, -0x40808312    # -0.998f

    const v8, -0x416f9db2    # -0.282f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 110
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc2e148    # -2.955f

    const v4, -0x40d53f7d    # -0.667f

    const v5, -0x3ed5f7cf    # -10.627f

    const v6, -0x3f66a7f0    # -4.792f

    const v7, -0x3e66872b    # -19.184f

    const v8, -0x3ef7ba5e    # -8.517f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 111
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f451eb8    # -5.84f

    const v4, -0x3f8fced9    # -3.753f

    const v5, -0x3eb378d5    # -12.783f

    const v6, -0x3f41fbe7    # -5.938f

    const v7, -0x3e5e126f    # -20.241f

    const v8, -0x3f41fbe7    # -5.938f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 112
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 113
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 114
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e9cac1    # 7.306f

    const/4 v4, 0x0

    const v5, 0x4161e354    # 14.118f

    const v6, -0x3ff9ba5e    # -2.098f

    const v7, 0x419f1062    # 19.883f

    const v8, -0x3f493f7d    # -5.711f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 115
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4108b439    # 8.544f

    const v4, -0x3fa624dd    # -3.404f

    const v5, 0x41817efa    # 16.187f

    const v6, -0x3f225604    # -6.927f

    const v7, 0x4198a5e3    # 19.081f

    const v8, -0x3efd9168    # -8.152f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 116
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x401f2b02    # 2.487f

    const v4, -0x40791687    # -1.054f

    const v5, 0x4039db23    # 2.904f

    const v6, -0x4063d70a    # -1.22f

    const v7, 0x40672b02    # 3.612f

    const v8, -0x4043d70a    # -1.47f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 117
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3cac0831    # 0.021f

    const v4, -0x441a9fbe    # -0.007f

    const v5, 0x3f928f5c    # 1.145f

    const v6, -0x41418937    # -0.372f

    const v7, 0x3f9872b0    # 1.191f

    const v8, -0x41245a1d    # -0.429f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 118
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43dfb0c5

    const v4, 0x447495e3

    const v5, 0x43e2c4fe

    const v6, 0x44727917

    const v7, 0x43e2c4fe

    const/high16 v8, 0x44700000    # 960.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 119
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 120
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 124
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 125
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43e55042

    const/high16 v3, 0x44700000    # 960.0f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 126
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3eb96873    # -12.412f

    const v5, -0x3ee35810    # -9.791f

    const v6, -0x3e4bbe77    # -22.532f

    const v7, -0x3e4f70a4    # -22.07f

    const v8, -0x3e4774bc    # -23.068f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 127
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f8676c9    # -3.899f

    const v4, -0x40758106    # -1.082f

    const v5, -0x3ec40831    # -11.748f

    const v6, -0x3f73ef9e    # -4.377f

    const v7, -0x3e556c8b    # -21.322f

    const v8, -0x3ef8d4fe    # -8.448f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 128
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f44ac08    # -5.854f

    const v4, -0x3f8e0419    # -3.781f

    const v5, -0x3eb2d4fe    # -12.823f

    const v6, -0x3f408312    # -5.984f

    const v7, -0x3e5d851f    # -20.31f

    const v8, -0x3f408312    # -5.984f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 129
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 130
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 131
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x40e80000    # 7.25f

    const/4 v4, 0x0

    const v5, 0x41603958    # 14.014f

    const v6, -0x3ffbd70a    # -2.065f

    const v7, 0x419e020c    # 19.751f

    const v8, -0x3f4be76d    # -5.628f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 132
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x412574bc    # 10.341f

    const v4, -0x3f7f74bc    # -4.017f

    const v5, 0x41940419    # 18.502f

    const v6, -0x3f0cac08    # -7.604f

    const v7, 0x41b1e76d    # 22.238f

    const v8, -0x3ef9be77    # -8.391f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 133
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f90a3d7    # 1.13f

    const v4, -0x418d4fdf    # -0.237f

    const v5, 0x4006978d    # 2.103f

    const v6, -0x40f89375    # -0.529f

    const v7, 0x403a2d0e    # 2.909f

    const v8, -0x40b53f7d    # -0.792f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 134
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43e14375

    const v4, 0x44752b64

    const v5, 0x43e55042

    const v6, 0x4472d25e

    const v7, 0x43e55042

    const/high16 v8, 0x44700000    # 960.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 135
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 136
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 137
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 140
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 141
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43e7fba6

    const v3, 0x446ffff0    # 959.999f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 142
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3eb61cac    # -12.618f

    const v5, -0x3edc51ec    # -10.23f

    const v6, -0x3e49353f    # -22.849f

    const v7, -0x3e493333    # -22.85f

    const v8, -0x3e49353f    # -22.849f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 143
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x4122d0e5    # -0.432f

    const/4 v4, 0x0

    const v5, -0x40a39581    # -0.861f

    const v6, 0x3c75c28f    # 0.015f

    const v7, -0x405b22d1    # -1.288f

    const v8, 0x3d1fbe77    # 0.039f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 144
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f74f5c3    # -4.345f

    const v4, -0x4079374c    # -1.053f

    const v5, -0x3eb0624e    # -12.976f

    const v6, -0x3f8bf7cf    # -3.813f

    const v7, -0x3e3bed91    # -24.509f

    const v8, -0x3ef59db2    # -8.649f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 145
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f441893    # -5.872f

    const v4, -0x3f8bd70a    # -3.815f

    const v5, -0x3eb20c4a    # -12.872f

    const v6, -0x3f3eb852    # -6.04f

    const v7, -0x3e5cd4fe    # -20.396f

    const v8, -0x3f3eb852    # -6.04f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 146
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 147
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 148
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e64dd3    # 7.197f

    const/4 v4, 0x0

    const v5, 0x415ea7f0    # 13.916f

    const v6, -0x3ffde354    # -2.033f

    const/high16 v7, 0x419d0000    # 19.625f

    const v8, -0x3f4e76c9    # -5.548f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 149
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4142a7f0    # 12.166f

    const v4, -0x3f6a7efa    # -4.672f

    const v5, 0x41a7f7cf    # 20.996f

    const v6, -0x3f09db23    # -7.692f

    const v7, 0x41cb20c5    # 25.391f

    const v8, -0x3ef60419    # -8.624f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 150
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f61cac1    # 0.882f

    const v4, -0x41c08312    # -0.187f

    const v5, 0x3fd374bc    # 1.652f

    const v6, -0x4149374c    # -0.357f

    const v7, 0x40156042    # 2.334f

    const v8, -0x40fdb22d    # -0.509f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 151
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43e32d71

    const v4, 0x44758de3

    const v5, 0x43e7fba6

    const v6, 0x44730ea8

    const v7, 0x43e7fba6

    const v8, 0x446ffff0    # 959.999f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 152
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 153
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 157
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 158
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43dfe9ba

    const v3, 0x446a5958

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 159
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x4062d0e5    # -1.228f

    const/4 v4, 0x0

    const v5, -0x3fe46a7f    # -2.431f

    const v6, 0x3dd0e560    # 0.102f

    const v7, -0x3f9947ae    # -3.605f

    const v8, 0x3e94fdf4    # 0.291f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 160
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x4165e354    # -0.301f

    const v4, -0x427ef9db    # -0.063f

    const v5, -0x40e5e354    # -0.602f

    const v6, -0x41fdf3b6    # -0.127f

    const v7, -0x4090e560    # -0.934f

    const v8, -0x41af1aa0    # -0.204f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 161
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f66f1aa    # -4.783f

    const v4, -0x40722d0e    # -1.108f

    const v5, -0x3e9cc49c    # -14.202f

    const v6, -0x3fb322d1    # -3.201f

    const v7, -0x3e21126f    # -27.866f

    const v8, -0x3ef1f7cf    # -8.877f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 162
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f436c8b    # -5.893f

    const v4, -0x3f895810    # -3.854f

    const v5, -0x3eb122d1    # -12.929f

    const v6, -0x3f3ca3d7    # -6.105f

    const v7, -0x3e5c0831    # -20.496f

    const v8, -0x3f3ca3d7    # -6.105f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 163
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 164
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 165
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e49ba6    # 7.144f

    const/4 v4, 0x0

    const v5, 0x415d126f    # 13.817f

    const v6, -0x3fffdf3b    # -2.002f

    const/high16 v7, 0x419c0000    # 19.5f

    const v8, -0x3f50fdf4    # -5.469f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 166
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x416024dd    # 14.009f

    const v4, -0x3f549ba6    # -5.356f

    const v5, 0x41bbe76d    # 23.488f

    const v6, -0x3f0722d1    # -7.777f

    const v7, 0x41e45604    # 28.542f

    const v8, -0x3ef25604    # -8.854f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 167
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fbd2f1b    # 1.478f

    const v4, -0x415f3b64    # -0.314f

    const v5, 0x40298937    # 2.649f

    const v6, -0x40fd2f1b    # -0.511f

    const v7, 0x40658106    # 3.586f

    const v8, -0x40dd2f1b    # -0.636f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 168
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ed91687    # 0.424f

    const v4, 0x3cc49ba6    # 0.024f

    const v5, 0x3f581062    # 0.844f

    const v6, 0x3d810625    # 0.063f

    const v7, 0x3fa2f1aa    # 1.273f

    const v8, 0x3d810625    # 0.063f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 169
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4147ba5e    # 12.483f

    const/4 v4, 0x0

    const v5, 0x41b4d4fe    # 22.604f

    const v6, -0x3ede1062    # -10.121f

    const v7, 0x41b4d4fe    # 22.604f

    const v8, -0x3e4b2b02    # -22.604f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 170
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->S:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43e6278d

    const v4, 0x446a5958

    const v5, 0x43dfe9ba

    const v6, 0x446a5958

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 171
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 172
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 176
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 177
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43e3199a    # 454.2f

    const v3, 0x446a6906

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 178
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40160419    # -1.828f

    const/4 v4, 0x0

    const v5, -0x3f99eb85    # -3.595f

    const v6, 0x3e79db23    # 0.244f

    const v7, -0x3f568f5c    # -5.295f

    const v8, 0x3f283127    # 0.657f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 179
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40710625    # -1.117f

    const v4, -0x41f1a9fc    # -0.139f

    const v5, -0x3fe6872b    # -2.398f

    const v6, -0x4156872b    # -0.331f

    const v7, -0x3f86e979    # -3.892f

    const v8, -0x40e3126f    # -0.613f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 180
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f399168    # -6.201f

    const v4, -0x406a1cac    # -1.171f

    const v5, -0x3e8174bc    # -15.909f

    const v6, -0x3fa6d917    # -3.393f

    const v7, -0x3e134189    # -29.593f

    const v8, -0x3eeebc6a    # -9.079f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 181
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f436c8b    # -5.893f

    const v4, -0x3f8947ae    # -3.855f

    const v5, -0x3eb122d1    # -12.929f

    const v6, -0x3f3ca3d7    # -6.105f

    const v7, -0x3e5c0831    # -20.496f

    const v8, -0x3f3ca3d7    # -6.105f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 182
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 183
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 184
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e49375    # 7.143f

    const/4 v4, 0x0

    const v5, 0x415d126f    # 13.817f

    const v6, -0x3fffdf3b    # -2.002f

    const v7, 0x419bfdf4    # 19.499f

    const v8, -0x3f50fdf4    # -5.469f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 185
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x416051ec    # 14.02f

    const v4, -0x3f548b44    # -5.358f

    const v5, 0x41be47ae    # 23.785f

    const v6, -0x3f04fdf4    # -7.844f

    const v7, 0x41f2020c    # 30.251f

    const v8, -0x3ef03958    # -8.986f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 186
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x403e45a2    # 2.973f

    const v4, -0x40f9db23    # -0.524f

    const v5, 0x40a7020c    # 5.219f

    const v6, -0x40bc6a7f    # -0.764f

    const v7, 0x40da0419    # 6.813f

    const v8, -0x40a20c4a    # -0.867f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 187
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f641893    # 0.891f

    const v4, 0x3ddb22d1    # 0.107f

    const v5, 0x3fe56042    # 1.792f

    const v6, 0x3e3a5e35    # 0.182f

    const v7, 0x402d9168    # 2.712f

    const v8, 0x3e3a5e35    # 0.182f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 188
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41459581    # 12.349f

    const/4 v4, 0x0

    const v5, 0x41b2df3b    # 22.359f

    const v6, -0x3edfced9    # -10.012f

    const v7, 0x41b2df3b    # 22.359f

    const v8, -0x3e4d20c5    # -22.359f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 189
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43ee47ae    # 476.56f

    const v4, 0x446ce9aa    # 947.651f

    const v5, 0x43e94646

    const v6, 0x446a6906

    const v7, 0x43e3199a    # 454.2f

    const v8, 0x446a6906

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 190
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 191
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 195
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 196
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43e62ed9

    const v3, 0x446a78b4

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 197
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ff6872b    # -2.148f

    const/4 v4, 0x0

    const v5, -0x3f3a147b    # -6.185f

    const v6, 0x3f639581    # 0.889f

    const v7, -0x3f3a147b    # -6.185f

    const v8, 0x3f639581    # 0.889f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 198
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f727efa    # -4.422f

    const v4, -0x41343958    # -0.398f

    const v5, -0x3f11e354    # -7.441f

    const v6, -0x409ced91    # -0.887f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 199
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f0c4189    # -7.617f

    const v4, -0x4061eb85    # -1.235f

    const v5, -0x3e73126f    # -17.616f

    const v6, -0x3f9a7efa    # -3.586f

    const v7, -0x3e0570a4    # -31.32f

    const v8, -0x3eeb7cee    # -9.282f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 200
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f4374bc    # -5.892f

    const v4, -0x3f8947ae    # -3.855f

    const v5, -0x3eb122d1    # -12.929f

    const v6, -0x3f3ca3d7    # -6.105f

    const v7, -0x3e5c0831    # -20.496f

    const v8, -0x3f3ca3d7    # -6.105f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 201
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 202
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 203
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e49375    # 7.143f

    const/4 v4, 0x0

    const v5, 0x415d0e56    # 13.816f

    const v6, -0x3fffdf3b    # -2.002f

    const v7, 0x419bfdf4    # 19.499f

    const v8, -0x3f510625    # -5.468f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 204
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41607efa    # 14.031f

    const v4, -0x3f546a7f    # -5.362f

    const v5, 0x41c0a5e3    # 24.081f

    const v6, -0x3f02c8b4    # -7.913f

    const v7, 0x41ffb22d    # 31.962f

    const v8, -0x3eee1cac    # -9.118f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 205
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40a2b852    # 5.085f

    const v4, -0x40b89375    # -0.779f

    const v5, 0x412d851f    # 10.845f

    const v6, -0x4079fbe7    # -1.047f

    const v7, 0x412d851f    # 10.845f

    const v8, -0x4079fbe7    # -1.047f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 206
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40046a7f    # 2.069f

    const v4, 0x3e7ced91    # 0.247f

    const v5, 0x4048c49c    # 3.137f

    const v6, 0x3e7ced91    # 0.247f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 207
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41436c8b    # 12.214f

    const/4 v4, 0x0

    const v5, 0x41b0e979    # 22.114f

    const v6, -0x3ee19581    # -9.901f

    const v7, 0x41b0e979    # 22.114f

    const v8, -0x3e4f1687    # -22.114f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 208
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43f13d71

    const v4, 0x446cf24e

    const v5, 0x43ec4a3d

    const v6, 0x446a78b4

    const v7, 0x43e62ed9

    const v8, 0x446a78b4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 209
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 210
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 214
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 215
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43e8445a

    const v3, 0x446a8852    # 938.13f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 216
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ff0f5c3    # -2.235f

    const/4 v4, 0x0

    const v5, -0x3f737cee    # -4.391f

    const v6, 0x3eac8b44    # 0.337f

    const v7, -0x3f327efa    # -6.422f

    const v8, 0x3f75c28f    # 0.96f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 217
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fdee979    # -2.517f

    const v4, -0x41e56042    # -0.151f

    const v5, -0x3f473333    # -5.775f

    const v6, -0x411d2f1b    # -0.443f

    const v7, -0x3ee5ae14    # -9.645f

    const/high16 v8, -0x40800000    # -1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 218
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3eef74bc    # -9.034f

    const v4, -0x4059ba5e    # -1.299f

    const v5, -0x3e656a7f    # -19.323f

    const v6, -0x3f8e24dd    # -3.779f

    const v7, -0x3dfbd0e5

    const v8, -0x3ee84189    # -9.484f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 219
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f436c8b    # -5.893f

    const v4, -0x3f8947ae    # -3.855f

    const v5, -0x3eb11eb8    # -12.93f

    const v6, -0x3f3c9ba6    # -6.106f

    const v7, -0x3e5c0625    # -20.497f

    const v8, -0x3f3c9ba6    # -6.106f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 220
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 221
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 222
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e49375    # 7.143f

    const/4 v4, 0x0

    const v5, 0x415d0e56    # 13.816f

    const v6, -0x3fffdf3b    # -2.002f

    const v7, 0x419bfbe7    # 19.498f

    const v8, -0x3f510625    # -5.468f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 223
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4160ac08    # 14.042f

    const v4, -0x3f545a1d    # -5.364f

    const v5, 0x41c30625    # 24.378f

    const v6, -0x3f00ac08    # -7.979f

    const v7, 0x4206b021    # 33.672f

    const/high16 v8, -0x3eec0000    # -9.25f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 224
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40c170a4    # 6.045f

    const v4, -0x40ac8b44    # -0.826f

    const v5, 0x412a8b44    # 10.659f

    const v6, -0x40756042    # -1.083f

    const v7, 0x41553b64    # 13.327f

    const v8, -0x406ba5e3    # -1.159f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 225
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f828f5c    # 1.02f

    const v4, 0x3e158106    # 0.146f

    const v5, 0x400374bc    # 2.054f

    const v6, 0x3e7be76d    # 0.246f

    const v7, 0x40473b64    # 3.113f

    const v8, 0x3e7be76d    # 0.246f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 226
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41413b64    # 12.077f

    const/4 v4, 0x0

    const v5, 0x41aef3b6    # 21.869f

    const v6, -0x3ee353f8    # -9.792f

    const v7, 0x41aef3b6    # 21.869f

    const v8, -0x3e510c4a    # -21.869f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 227
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43f33396

    const v4, 0x446cfaf2

    const v5, 0x43ee4e35

    const v6, 0x446a8852    # 938.13f

    const v7, 0x43e8445a

    const v8, 0x446a8852    # 938.13f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 228
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 229
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 230
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 233
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 234
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43ea8439

    const v3, 0x446a9800    # 938.375f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 235
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fec5a1d    # -2.307f

    const/4 v4, 0x0

    const v5, -0x3f6f3333    # -4.525f

    const v6, 0x3ebef9db    # 0.373f

    const v7, -0x3f2c7ae1    # -6.61f

    const v8, 0x3f856042    # 1.042f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 236
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fb70a3d    # -3.14f

    const v4, -0x41db22d1    # -0.161f

    const v5, -0x3f15cac1    # -7.319f

    const v6, -0x41083127    # -0.484f

    const v7, -0x3ebc5a1d    # -12.228f

    const v8, -0x407020c5    # -1.124f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 237
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ed8c49c    # -10.452f

    const v4, -0x40518937    # -1.363f

    const v5, -0x3e57c28f    # -21.03f

    const v6, -0x3f81cac1    # -3.972f

    const v7, -0x3df4e873

    const v8, -0x3ee4fdf4    # -9.688f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 238
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f436c8b    # -5.893f

    const v4, -0x3f8947ae    # -3.855f

    const v5, -0x3eb11eb8    # -12.93f

    const v6, -0x3f3c9ba6    # -6.106f

    const v7, -0x3e5c0419    # -20.498f

    const v8, -0x3f3c9ba6    # -6.106f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 239
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 240
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 241
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e49375    # 7.143f

    const/4 v4, 0x0

    const v5, 0x415d0a3d    # 13.815f

    const v6, -0x3fffdf3b    # -2.002f

    const v7, 0x419bf9db    # 19.497f

    const v8, -0x3f510e56    # -5.467f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 242
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4160d917    # 14.053f

    const v4, -0x3f543958    # -5.368f

    const v5, 0x41c5645a    # 24.674f

    const v6, -0x3eff3b64    # -8.048f

    const v7, 0x420d8625    # 35.381f

    const v8, -0x3ee9df3b    # -9.383f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 243
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e69fbe    # 7.207f

    const v4, -0x409a5e35    # -0.897f

    const v5, 0x414e45a2    # 12.892f

    const v6, -0x40681062    # -1.187f

    const v7, 0x4180b646    # 16.089f

    const v8, -0x405c6a7f    # -1.278f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 244
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f839581    # 1.028f

    const v4, 0x3e189375    # 0.149f

    const v5, 0x40049ba6    # 2.072f

    const v6, 0x3e810625    # 0.252f

    const v7, 0x40491687    # 3.142f

    const v8, 0x3e810625    # 0.252f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 245
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x413f1687    # 11.943f

    const/4 v4, 0x0

    const/high16 v5, 0x41ad0000    # 21.625f

    const v6, -0x3ee51687    # -9.682f

    const/high16 v7, 0x41ad0000    # 21.625f

    const v8, -0x3e53020c    # -21.624f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 246
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43f55439

    const v4, 0x446d03a6

    const v5, 0x43f07d0e

    const v6, 0x446a9800    # 938.375f

    const v7, 0x43ea8439

    const v8, 0x446a9800    # 938.375f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 247
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 248
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 249
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 252
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 253
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43ec99ba

    const v3, 0x446aa7ae    # 938.62f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 254
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fe90625    # -2.359f

    const/4 v4, 0x0

    const v5, -0x3f6c1893    # -4.622f

    const v6, 0x3ecccccd    # 0.4f

    const v7, -0x3f283127    # -6.744f

    const v8, 0x3f8d70a4    # 1.105f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 255
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f915810    # -3.729f

    const v4, -0x41c8b439    # -0.179f

    const v5, -0x3ef4353f    # -8.737f

    const v6, -0x40f78d50    # -0.533f

    const v7, -0x3e9774bc    # -14.534f

    const v8, -0x4062b021    # -1.229f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 256
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ec21893    # -11.869f

    const v4, -0x40495810    # -1.427f

    const v5, -0x3e4a1aa0    # -22.737f

    const v6, -0x3f7ab852    # -4.165f

    const v7, -0x3dedfefa    # -36.501f

    const v8, -0x3ee1c28f    # -9.89f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 257
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f436c8b    # -5.893f

    const v4, -0x3f8947ae    # -3.855f

    const v5, -0x3eb11eb8    # -12.93f

    const v6, -0x3f3c9ba6    # -6.106f

    const v7, -0x3e5c0419    # -20.498f

    const v8, -0x3f3c9ba6    # -6.106f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 258
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 259
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 260
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e48b44    # 7.142f

    const/4 v4, 0x0

    const v5, 0x415d0a3d    # 13.815f

    const v6, -0x3fffef9e    # -2.001f

    const v7, 0x419bf9db    # 19.497f

    const v8, -0x3f510e56    # -5.467f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 261
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41610625    # 14.064f

    const v4, -0x3f5428f6    # -5.37f

    const v5, 0x41c7c28f    # 24.97f

    const v6, -0x3efe2d0e    # -8.114f

    const v7, 0x42145d2f    # 37.091f

    const v8, -0x3ee7c6a8    # -9.514f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 262
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41025604    # 8.146f

    const v4, -0x408f5c29    # -0.94f

    const v5, 0x416c9375    # 14.786f

    const v6, -0x405d0e56    # -1.273f

    const v7, 0x41948106    # 18.563f

    const v8, -0x404db22d    # -1.393f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 263
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f82f1aa    # 1.023f

    const v4, 0x3e19999a    # 0.15f

    const v5, 0x4003f7cf    # 2.062f

    const v6, 0x3e818937    # 0.253f

    const v7, 0x404820c5    # 3.127f

    const v8, 0x3e818937    # 0.253f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 264
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x413ced91    # 11.808f

    const/4 v4, 0x0

    const v5, 0x41ab0a3d    # 21.38f

    const v6, -0x3ee6d917    # -9.572f

    const v7, 0x41ab0a3d    # 21.38f

    const v8, -0x3e54f5c3    # -21.38f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 265
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->S:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43f28127

    const v4, 0x446aa7ae    # 938.62f

    const v5, 0x43ec99ba

    const v6, 0x446aa7ae    # 938.62f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 266
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 267
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 268
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 271
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 272
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43ef24bc

    const v3, 0x446ab74c

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 273
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fe33333    # -2.45f

    const/4 v4, 0x0

    const v5, -0x3f66a7f0    # -4.792f

    const v6, 0x3ee04189    # 0.438f

    const v7, -0x3f20a3d7    # -6.98f

    const v8, 0x3f9a3d71    # 1.205f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 274
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f73ced9    # -4.381f

    const v4, -0x41bf7cee    # -0.188f

    const v5, -0x3ed73b64    # -10.548f

    const v6, -0x40ed4fdf    # -0.573f

    const v7, -0x3e72be77    # -17.657f

    const v8, -0x4050a3d7    # -1.37f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 275
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3eab6873    # -13.287f

    const v4, -0x404126e9    # -1.491f

    const v5, -0x3e3c70a4    # -24.445f

    const v6, -0x3f748b44    # -4.358f

    const v7, -0x3de71687    # -38.228f

    const v8, -0x3ede872b    # -10.092f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 276
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f436c8b    # -5.893f

    const v4, -0x3f89374c    # -3.856f

    const v5, -0x3eb11aa0    # -12.931f

    const v6, -0x3f3c9375    # -6.107f

    const v7, -0x3e5c020c    # -20.499f

    const v8, -0x3f3c9375    # -6.107f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 277
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 278
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 279
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e48b44    # 7.142f

    const/4 v4, 0x0

    const v5, 0x415d0625    # 13.814f

    const v6, -0x3fffef9e    # -2.001f

    const v7, 0x419bf7cf    # 19.496f

    const v8, -0x3f510e56    # -5.467f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 280
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41613333    # 14.075f

    const v4, -0x3f541062    # -5.373f

    const v5, 0x41ca20c5    # 25.266f

    const v6, -0x3efd1687    # -8.182f

    const v7, 0x421b3439

    const v8, -0x3ee5a9fc    # -9.646f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 281
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x411a3127    # 9.637f

    const v4, -0x407a9fbe    # -1.042f

    const v5, 0x418cbe77    # 17.593f

    const v6, -0x404c8b44    # -1.402f

    const v7, 0x41ae51ec    # 21.79f

    const v8, -0x403c49ba    # -1.529f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 282
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f88f5c3    # 1.07f

    const v4, 0x3e2b020c    # 0.167f

    const v5, 0x400a2d0e    # 2.159f

    const v6, 0x3e8dd2f2    # 0.277f

    const v7, 0x4051a9fc    # 3.276f

    const v8, 0x3e8dd2f2    # 0.277f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 283
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x413ac49c    # 11.673f

    const/4 v4, 0x0

    const v5, 0x41a9147b    # 21.135f

    const v6, -0x3ee89375    # -9.464f

    const v7, 0x41a9147b    # 21.135f

    const v8, -0x3e56e979    # -21.136f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 284
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43f9b604

    const v4, 0x446d14dd

    const v5, 0x43f4fae1    # 489.96f

    const v6, 0x446ab74c

    const v7, 0x43ef24bc

    const v8, 0x446ab74c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 285
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 286
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 287
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 290
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 291
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43f20439

    const v3, 0x446ac6fa

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 292
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fdc1893    # -2.561f

    const/4 v4, 0x0

    const v5, -0x3f5fe76d    # -5.003f

    const v6, 0x3ef645a2    # 0.481f

    const v7, -0x3f175c29    # -7.27f

    const v8, 0x3fa978d5    # 1.324f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 293
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f601893    # -4.997f

    const v4, -0x41bf7cee    # -0.188f

    const v5, -0x3eb6353f    # -12.612f

    const v6, -0x40e56042    # -0.604f

    const v7, -0x3e54eb85    # -21.385f

    const v8, -0x403c0831    # -1.531f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 294
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e94bc6a    # -14.704f

    const v4, -0x40391687    # -1.554f

    const v5, -0x3e2ec8b4    # -26.152f

    const v6, -0x3f6e5e35    # -4.551f

    const v7, -0x3de02e14

    const v8, -0x3edb47ae    # -10.295f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 295
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f436c8b    # -5.893f

    const v4, -0x3f89374c    # -3.856f

    const v5, -0x3eb11aa0    # -12.931f

    const v6, -0x3f3c9375    # -6.107f

    const v7, -0x3e5c020c    # -20.499f

    const v8, -0x3f3c9375    # -6.107f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 296
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 297
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 298
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e48b44    # 7.142f

    const/4 v4, 0x0

    const v5, 0x415d0625    # 13.814f

    const v6, -0x3fffef9e    # -2.001f

    const v7, 0x419bf5c3    # 19.495f

    const v8, -0x3f511687    # -5.466f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 299
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41616042    # 14.086f

    const v4, -0x3f53f7cf    # -5.376f

    const v5, 0x41cc7efa    # 25.562f

    const/high16 v6, -0x3efc0000    # -8.25f

    const v7, 0x42220a3d    # 40.51f

    const v8, -0x3ee39168    # -9.777f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 300
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x412ec083    # 10.922f

    const v4, -0x407126e9    # -1.116f

    const v5, 0x41a0d0e5    # 20.102f

    const v6, -0x403db22d    # -1.518f

    const v7, 0x41c60a3d    # 24.755f

    const v8, -0x402ba5e3    # -1.659f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 301
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3e960419    # 0.293f

    const v4, -0x43ec8b44    # -0.009f

    const v5, 0x3f1020c5    # 0.563f

    const v6, -0x4374bc6a    # -0.017f

    const v7, 0x3f51a9fc    # 0.819f

    const v8, -0x43439581    # -0.023f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 302
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f93126f    # 1.149f

    const v4, 0x3e48b439

    const v5, 0x4014bc6a    # 2.324f

    const v6, 0x3ea1cac1    # 0.316f

    const v7, 0x4061db23    # 3.529f

    const v8, 0x3ea1cac1    # 0.316f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 303
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4138978d    # 11.537f

    const/4 v4, 0x0

    const v5, 0x41a720c5    # 20.891f

    const v6, -0x3eea5604    # -9.354f

    const v7, 0x41a720c5    # 20.891f

    const v8, -0x3e58df3b    # -20.891f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 304
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43fc7625

    const v4, 0x446d1d91

    const v5, 0x43f7c8f6    # 495.57f

    const v6, 0x446ac6fa

    const v7, 0x43f20439

    const v8, 0x446ac6fa

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 305
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 306
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 307
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 310
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 311
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43f45979

    const v3, 0x446ad6a8

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 312
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fd29fbe    # -2.709f

    const/4 v4, 0x0

    const v5, -0x3f56a7f0    # -5.292f

    const v6, 0x3f07ef9e    # 0.531f

    const v7, -0x3f0ac8b4    # -7.663f

    const v8, 0x3fbd70a4    # 1.48f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 313
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f5d5810    # -5.083f

    const v4, -0x426a7efa    # -0.073f

    const v5, -0x3ebf0a3d    # -12.06f

    const v6, -0x411d2f1b    # -0.443f

    const v7, -0x3e49a9fc    # -22.792f

    const v8, -0x4044dd2f    # -1.462f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 314
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e8374bc    # -15.784f

    const v4, -0x403d2f1b    # -1.522f

    const v5, -0x3e1824dd    # -28.982f

    const v6, -0x3f5f4bc7    # -5.022f

    const v7, -0x3dd4b021    # -42.828f

    const v8, -0x3ed3ae14    # -10.77f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 315
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f4374bc    # -5.892f

    const v4, -0x3f896873    # -3.853f

    const v5, -0x3eb12b02    # -12.927f

    const v6, -0x3f3cb439    # -6.103f

    const v7, -0x3e5c1062    # -20.492f

    const v8, -0x3f3cb439    # -6.103f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 316
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 317
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 318
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e47ae1    # 7.14f

    const/4 v4, 0x0

    const v5, 0x415cf9db    # 13.811f

    const/high16 v6, -0x40000000    # -2.0f

    const v7, 0x419bef9e    # 19.492f

    const v8, -0x3f5126e9    # -5.464f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 319
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41611687    # 14.068f

    const v4, -0x3f548b44    # -5.358f

    const v5, 0x41dad4fe    # 27.354f

    const v6, -0x3ef56042    # -8.664f

    const v7, 0x422d7cee

    const v8, -0x3edd374c    # -10.174f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 320
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41412b02    # 12.073f

    const v4, -0x407126e9    # -1.116f

    const v5, 0x419b1cac    # 19.389f

    const v6, -0x40451eb8    # -1.46f

    const v7, 0x41c59fbe    # 24.703f

    const v8, -0x40383127    # -1.561f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 321
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f641893    # 0.891f

    const v4, -0x436c8b44    # -0.018f

    const v5, 0x3fcdf3b6    # 1.609f

    const v6, -0x42ec8b44    # -0.036f

    const v7, 0x400c3958    # 2.191f

    const v8, -0x42bf7cee    # -0.047f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 322
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fa645a2    # 1.299f

    const v4, 0x3e83126f    # 0.256f

    const v5, 0x40291687    # 2.642f

    const v6, 0x3ec83127    # 0.391f

    const v7, 0x40808b44    # 4.017f

    const v8, 0x3ec83127    # 0.391f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 323
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41366e98    # 11.402f

    const/4 v4, 0x0

    const v5, 0x41a52b02    # 20.646f

    const v6, -0x3eec1893    # -9.244f

    const v7, 0x41a52b02    # 20.646f

    const v8, -0x3e5ad4fe    # -20.646f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 324
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->S:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43fa0d0e

    const v4, 0x446ad6a8

    const v5, 0x43f45979

    const v6, 0x446ad6a8

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 325
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 326
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 327
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 330
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 331
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43f5c831

    const v3, 0x446ae656    # 939.599f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 332
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fcd6042    # -2.791f

    const/4 v4, 0x0

    const v5, -0x3f51999a    # -5.45f

    const v6, 0x3f10624e    # 0.564f

    const v7, -0x3f041062    # -7.873f

    const v8, 0x3fca1cac    # 1.579f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 333
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f5fb646    # -5.009f

    const v4, -0x42ec8b44    # -0.036f

    const v5, -0x3ec5be77    # -11.641f

    const v6, -0x413645a2    # -0.394f

    const v7, -0x3e4b5810    # -22.582f

    const v8, -0x40551eb8    # -1.335f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 334
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e79147b    # -16.865f

    const v4, -0x404126e9    # -1.491f

    const v5, -0x3e017efa    # -31.813f

    const v6, -0x3f5028f6    # -5.495f

    const v7, -0x3dc9322d    # -45.701f

    const v8, -0x3ecc1893    # -11.244f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 335
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f43851f    # -5.89f

    const v4, -0x3f89999a    # -3.85f

    const v5, -0x3eb13b64    # -12.923f

    const v6, -0x3f3cdd2f    # -6.098f

    const v7, -0x3e5c1eb8    # -20.485f

    const v8, -0x3f3cdd2f    # -6.098f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 336
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 337
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 338
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e41062    # 7.127f

    const/4 v4, 0x0

    const v5, 0x415c978d    # 13.787f

    const v6, -0x40010625    # -1.992f

    const v7, 0x419bae14    # 19.46f

    const v8, -0x3f51cac1    # -5.444f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 339
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4160e979    # 14.057f

    const v4, -0x3f54d4fe    # -5.349f

    const v5, 0x41e947ae    # 29.16f

    const v6, -0x3eee76c9    # -9.096f

    const v7, 0x42390b44

    const v8, -0x3ed69ba6    # -10.587f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 340
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4153999a    # 13.225f

    const v4, -0x40710625    # -1.117f

    const v5, 0x419d6a7f    # 19.677f

    const v6, -0x404c8b44    # -1.402f

    const v7, 0x41cd3958    # 25.653f

    const v8, -0x4044bc6a    # -1.463f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 341
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3edba5e3    # 0.429f

    const v4, -0x445c28f6    # -0.005f

    const v5, 0x3f52f1aa    # 0.824f

    const v6, -0x43bb645a    # -0.012f

    const v7, 0x3f981062    # 1.188f

    const v8, -0x43645a1d    # -0.019f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 342
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fa8b439    # 1.318f

    const v4, 0x3e89374c    # 0.268f

    const v5, 0x402b9581    # 2.681f

    const v6, 0x3ed374bc    # 0.413f

    const v7, 0x40827efa    # 4.078f

    const v8, 0x3ed374bc    # 0.413f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 343
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x413449ba    # 11.268f

    const/4 v4, 0x0

    const v5, 0x41a3353f    # 20.401f

    const v6, -0x3eedd70a    # -9.135f

    const v7, 0x41a3353f    # 20.401f

    const v8, -0x3e5ccac1    # -20.401f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 344
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->S:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43fb6a7f    # 502.832f

    const v4, 0x446ae656    # 939.599f

    const v5, 0x43f5c831

    const v6, 0x446ae656    # 939.599f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 345
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 346
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 347
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 350
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 351
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43f719ba

    const v3, 0x446af604

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 352
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc8a3d7    # -2.865f

    const/4 v4, 0x0

    const v5, -0x3f4d5810    # -5.583f

    const v6, 0x3f1c28f6    # 0.61f

    const v7, -0x3eff2f1b    # -8.051f

    const v8, 0x3fd81062    # 1.688f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 353
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f543958    # -5.368f

    const v4, 0x3d9ba5e3    # 0.076f

    const v5, -0x3ee4a3d7    # -9.71f

    const v6, -0x41872b02    # -0.243f

    const v7, -0x3e4e9ba6    # -22.174f

    const v8, -0x4063d70a    # -1.22f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 354
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e7070a4    # -17.945f

    const v4, -0x40453f7d    # -1.459f

    const v5, -0x3df56b85    # -34.645f

    const v6, -0x3f410e56    # -5.967f

    const v7, -0x3dbdb53f

    const v8, -0x3ec48312    # -11.718f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 355
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f438d50    # -5.889f

    const v4, -0x3f89ba5e    # -3.848f

    const v5, -0x3eb14bc7    # -12.919f

    const v6, -0x3f3cfdf4    # -6.094f

    const v7, -0x3e5c2b02    # -20.479f

    const v8, -0x3f3cfdf4    # -6.094f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 356
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 357
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 358
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e4624e    # 7.137f

    const/4 v4, 0x0

    const v5, 0x415ce560    # 13.806f

    const v6, -0x40004189    # -1.998f

    const v7, 0x419bdf3b    # 19.484f

    const v8, -0x3f514fdf    # -5.459f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 359
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x416072b0    # 14.028f

    const v4, -0x3f55999a    # -5.325f

    const v5, 0x41f77efa    # 30.937f

    const v6, -0x3ee8147b    # -9.495f

    const v7, 0x42446148

    const v8, -0x3ed0872b    # -10.967f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 360
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41660419    # 14.376f

    const v4, -0x407126e9    # -1.116f

    const v5, 0x418fb646    # 17.964f

    const v6, -0x4053d70a    # -1.345f

    const v7, 0x41c4d0e5    # 24.602f

    const v8, -0x40516873    # -1.364f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 361
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f3126e9    # 0.692f

    const v4, -0x44fced91    # -0.002f

    const v5, 0x3fa3b646    # 1.279f

    const v6, -0x43ab020c    # -0.013f

    const v7, 0x3fe89375    # 1.817f

    const v8, -0x43439581    # -0.023f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 362
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fb0a3d7    # 1.38f

    const v4, 0x3e991687    # 0.299f

    const v5, 0x4033c6a8    # 2.809f

    const v6, 0x3ef0a3d7    # 0.47f

    const v7, 0x4088ed91    # 4.279f

    const v8, 0x3ef0a3d7    # 0.47f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 363
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41321cac    # 11.132f

    const/4 v4, 0x0

    const v5, 0x41a13d71    # 20.155f

    const v6, -0x3eef9db2    # -9.024f

    const v7, 0x41a13d71    # 20.155f

    const v8, -0x3e5ec083    # -20.156f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 364
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x440096c9

    const v4, 0x446d377d

    const v5, 0x43fcaaa0

    const v6, 0x446af604

    const v7, 0x43f719ba

    const v8, 0x446af604

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 365
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 366
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 367
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 370
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 371
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43f90439

    const v3, 0x446b05b2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 372
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc5f3b6    # -2.907f

    const/4 v4, 0x0

    const v5, -0x3f4ae979    # -5.659f

    const v6, 0x3f23d70a    # 0.64f

    const v7, -0x3efd9db2    # -8.149f

    const v8, 0x3fe147ae    # 1.76f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 373
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f3849ba    # -6.241f

    const v4, 0x3e624dd3    # 0.221f

    const v5, -0x3ef34396    # -8.796f

    const v6, -0x42d3f7cf    # -0.042f

    const v7, -0x3e47a9fc    # -23.042f

    const v8, -0x40776c8b    # -1.067f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 374
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e67cccd    # -19.025f

    const v4, -0x4049374c    # -1.428f

    const v5, -0x3dea1687    # -37.478f

    const v6, -0x3f31eb85    # -6.44f

    const v7, -0x3db23852    # -51.445f

    const v8, -0x3ebced91    # -12.192f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 375
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f439581    # -5.888f

    const v4, -0x3f89eb85    # -3.845f

    const v5, -0x3eb15810    # -12.916f

    const v6, -0x3f3d1eb8    # -6.09f

    const v7, -0x3e5c3958    # -20.472f

    const v8, -0x3f3d1eb8    # -6.09f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 376
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 377
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 378
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e45a1d    # 7.136f

    const/4 v4, 0x0

    const v5, 0x415cd917    # 13.803f

    const v6, -0x40004189    # -1.998f

    const v7, 0x419bd917    # 19.481f

    const v8, -0x3f516042    # -5.457f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 379
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41601cac    # 14.007f

    const v4, -0x3f561cac    # -5.309f

    const v5, 0x4202e873

    const v6, -0x3ee170a4    # -9.91f

    const v7, 0x424fd3f8    # 51.957f

    const v8, -0x3eca353f    # -11.362f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 380
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41786a7f    # 15.526f

    const v4, -0x40710625    # -1.117f

    const v5, 0x418a020c    # 17.251f

    const v6, -0x405b22d1    # -1.288f

    const v7, 0x41c46666    # 24.55f

    const v8, -0x405dd2f2    # -1.267f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 381
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f856042    # 1.042f

    const v4, 0x3b449ba6    # 0.003f

    const v5, 0x3ff4fdf4    # 1.914f

    const v6, -0x43645a1d    # -0.019f

    const v7, 0x4028d4fe    # 2.638f

    const v8, -0x430a3d71    # -0.03f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 382
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fb8b439    # 1.443f

    const v4, 0x3ea9fbe7    # 0.332f

    const v5, 0x403c1893    # 2.939f

    const v6, 0x3f06e979    # 0.527f

    const v7, 0x408f74bc    # 4.483f

    const v8, 0x3f06e979    # 0.527f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 383
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x412fef9e    # 10.996f

    const/4 v4, 0x0

    const v5, 0x419f49ba    # 19.911f

    const v6, -0x3ef15c29    # -8.915f

    const v7, 0x419f49ba    # 19.911f

    const v8, -0x3e60b646    # -19.911f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 384
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x44017c6a

    const v4, 0x446d4031

    const v5, 0x43fe83b6

    const v6, 0x446b05b2

    const v7, 0x43f90439

    const v8, 0x446b05b2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 385
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 386
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 387
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 390
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 391
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43fad560

    const v3, 0x446b1550

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 392
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc47ae1    # -2.93f

    const/4 v4, 0x0

    const v5, -0x3f49a1cb    # -5.699f

    const v6, 0x3f28f5c3    # 0.66f

    const v7, -0x3efcd917    # -8.197f

    const v8, 0x3fe76c8b    # 1.808f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 393
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f12e979    # -7.409f

    const v4, 0x3ebe76c9    # 0.372f

    const v5, -0x3f044189    # -7.867f

    const v6, 0x3e27ef9e    # 0.164f

    const v7, -0x3e41e76d    # -23.762f

    const v8, -0x409c28f6    # -0.89f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 394
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5f24dd    # -20.107f

    const v4, -0x404d4fdf    # -1.396f

    const v5, -0x3ddebf7d    # -40.313f

    const v6, -0x3f22c083    # -6.914f

    const v7, -0x3da6ba5e    # -54.318f

    const v8, -0x3eb55810    # -12.666f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 395
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f43a5e3    # -5.886f

    const v4, -0x3f8a0c4a    # -3.843f

    const v5, -0x3eb16873    # -12.912f

    const v6, -0x3f3d47ae    # -6.085f

    const v7, -0x3e5c45a2    # -20.466f

    const v8, -0x3f3d47ae    # -6.085f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 396
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 397
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 398
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e449ba    # 7.134f

    const/4 v4, 0x0

    const v5, 0x415ccccd    # 13.8f

    const v6, -0x4000624e    # -1.997f

    const v7, 0x419bd2f2    # 19.478f

    const v8, -0x3f5170a4    # -5.455f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 399
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415fbe77    # 13.984f

    const v4, -0x3f56b852    # -5.29f

    const v5, 0x420a126f

    const v6, -0x3edacccd    # -10.325f

    const v7, 0x425b46a8    # 54.819f

    const v8, -0x3ec3df3b    # -11.758f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 400
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41856c8b    # 16.678f

    const v4, -0x40710625    # -1.117f

    const v5, 0x41844dd3    # 16.538f

    const v6, -0x40626e98    # -1.231f

    const v7, 0x41c3fbe7    # 24.498f

    const v8, -0x406a5e35    # -1.169f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 401
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fabe76d    # 1.343f

    const v4, 0x3c343958    # 0.011f

    const v5, 0x401ae148    # 2.42f

    const v6, -0x43439581    # -0.023f

    const v7, 0x40521cac    # 3.283f

    const v8, -0x42fced91    # -0.032f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 402
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fbfbe77    # 1.498f

    const v4, 0x3ebae148    # 0.365f

    const v5, 0x4043851f    # 3.055f

    const v6, 0x3f147ae1    # 0.58f

    const v7, 0x40954fdf    # 4.666f

    const v8, 0x3f147ae1    # 0.58f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 403
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x412dc6a8    # 10.861f

    const/4 v4, 0x0

    const v5, 0x419d53f8    # 19.666f

    const v6, -0x3ef31aa0    # -8.806f

    const v7, 0x419d53f8    # 19.666f

    const v8, -0x3e62ac08    # -19.666f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 404
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x44025550

    const v4, 0x446d48d5    # 949.138f

    const v5, 0x440021cb

    const v6, 0x446b1550

    const v7, 0x43fad560

    const v8, 0x446b1550

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 405
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 406
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 407
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 410
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 411
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43fcaefa

    const v3, 0x446b24fe

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 412
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc47ae1    # -2.93f

    const/4 v4, 0x0

    const v5, -0x3f49b22d    # -5.697f

    const v6, 0x3f2b020c    # 0.668f

    const v7, -0x3efcfdf4    # -8.188f

    const v8, 0x3fea3d71    # 1.83f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 413
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x41e76c8b    # -0.149f

    const v4, 0x3c1374bc    # 0.009f

    const v5, -0x416b851f    # -0.29f

    const v6, 0x3c9ba5e3    # 0.019f

    const v7, -0x411b22d1    # -0.447f

    const v8, 0x3ce56042    # 0.028f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 414
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ef7ced9    # -8.512f

    const v4, 0x3f01cac1    # 0.507f

    const v5, -0x3f241893    # -6.872f

    const v6, 0x3eb0a3d7    # 0.345f

    const v7, -0x3e3ebe77    # -24.157f

    const v8, -0x40c9374c    # -0.714f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 415
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e567cee    # -21.189f

    const v4, -0x40516873    # -1.364f

    const v5, -0x3dd3676d

    const v6, -0x3f139db2    # -7.387f

    const v7, -0x3d9b3d71    # -57.19f

    const v8, -0x3eadbe77    # -13.141f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 416
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f43ae14    # -5.885f

    const v4, -0x3f8a3d71    # -3.84f

    const v5, -0x3eb178d5    # -12.908f

    const v6, -0x3f3d6873    # -6.081f

    const v7, -0x3e5c53f8    # -20.459f

    const v8, -0x3f3d6873    # -6.081f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 417
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 418
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 419
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e44189    # 7.133f

    const/4 v4, 0x0

    const v5, 0x415cc083    # 13.797f

    const v6, -0x40008312    # -1.996f

    const v7, 0x419bcac1    # 19.474f

    const v8, -0x3f518106    # -5.453f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 420
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415f6042    # 13.961f

    const v4, -0x3f574bc7    # -5.272f

    const v5, 0x42113c6a

    const v6, -0x3ed42d0e    # -10.739f

    const v7, 0x4266b852    # 57.68f

    const v8, -0x3ebd8937    # -12.154f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 421
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418ea1cb    # 17.829f

    const v4, -0x40710625    # -1.117f

    const v5, 0x417d374c    # 15.826f

    const v6, -0x4069db23    # -1.173f

    const v7, 0x41c39581    # 24.448f

    const v8, -0x40770a3d    # -1.07f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 422
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fda7efa    # 1.707f

    const v4, 0x3cac0831    # 0.021f

    const v5, 0x4040a3d7    # 3.01f

    const v6, -0x42f4bc6a    # -0.034f

    const v7, 0x40805a1d    # 4.011f

    const v8, -0x43126e98    # -0.029f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 423
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fc5e354    # 1.546f

    const v4, 0x3ecac083    # 0.396f

    const v5, 0x404a2d0e    # 3.159f

    const v6, 0x3f20c49c    # 0.628f

    const v7, 0x409a8f5c    # 4.83f

    const v8, 0x3f20c49c    # 0.628f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 424
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x412b9db2    # 10.726f

    const/4 v4, 0x0

    const v5, 0x419b5e35    # 19.421f

    const v6, -0x3ef4dd2f    # -8.696f

    const v7, 0x419b5e35    # 19.421f

    const v8, -0x3e64a1cb    # -19.421f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 425
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4403326f

    const v4, 0x446d5179

    const v5, 0x440105f4

    const v6, 0x446b24fe

    const v7, 0x43fcaefa

    const v8, 0x446b24fe

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 426
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 427
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 428
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 431
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 432
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43fe6ed9

    const v3, 0x446b349c

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 433
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc47ae1    # -2.93f

    const/4 v4, 0x0

    const v5, -0x3f49c28f    # -5.695f

    const v6, 0x3f2d0e56    # 0.676f

    const v7, -0x3efd26e9    # -8.178f

    const v8, 0x3feced91    # 1.851f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 434
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x4148b439    # -0.358f

    const v4, 0x3cd4fdf4    # 0.026f

    const v5, -0x40c41893    # -0.734f

    const v6, 0x3d591687    # 0.053f

    const v7, -0x406db22d    # -1.143f

    const v8, 0x3da5e354    # 0.081f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 435
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3eed374c    # -9.174f

    const v4, 0x3f1c6a7f    # 0.611f

    const v5, -0x3f4820c5    # -5.746f

    const v6, 0x3ef74bc7    # 0.483f

    const v7, -0x3e3f2b02    # -24.104f

    const v8, -0x40efdf3b    # -0.563f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 436
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e4e1687    # -22.239f

    const v4, -0x4055a1cb    # -1.331f

    const v5, -0x3dc83852    # -45.945f

    const v6, -0x3f04fdf4    # -7.844f

    const v7, -0x3d8fe354    # -60.028f

    const v8, -0x3ea68b44    # -13.591f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 437
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f437cee    # -5.891f

    const v4, -0x3f8978d5    # -3.852f

    const v5, -0x3eb1374c    # -12.924f

    const v6, -0x3f3ccccd    # -6.1f

    const v7, -0x3e5c1893    # -20.488f

    const v8, -0x3f3ccccd    # -6.1f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 438
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 439
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 440
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e48312    # 7.141f

    const/4 v4, 0x0

    const v5, 0x415cfdf4    # 13.812f

    const v6, -0x3fffef9e    # -2.001f

    const v7, 0x419bf1aa    # 19.493f

    const v8, -0x3f511eb8    # -5.465f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 441
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415f1aa0    # 13.944f

    const v4, -0x3f57f7cf    # -5.251f

    const v5, 0x4218645a    # 38.098f

    const v6, -0x3ecdb646    # -11.143f

    const v7, 0x4272147b    # 60.52f

    const v8, -0x3eb76c8b    # -12.536f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 442
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4197d70a    # 18.98f

    const v4, -0x40710625    # -1.117f

    const v5, 0x4171ced9    # 15.113f

    const v6, -0x407126e9    # -1.116f

    const v7, 0x41c32b02    # 24.396f

    const v8, -0x4086e979    # -0.973f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 443
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ffccccd    # 1.975f

    const v4, 0x3cf5c28f    # 0.03f

    const v5, 0x405cac08    # 3.448f

    const v6, -0x42cfdf3b    # -0.043f

    const v7, 0x4091b22d    # 4.553f

    const v8, -0x4353f7cf    # -0.021f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 444
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fcb851f    # 1.59f

    const v4, 0x3eda9fbe    # 0.427f

    const v5, 0x405051ec    # 3.255f

    const v6, 0x3f2c0831    # 0.672f

    const v7, 0x409f5c29    # 4.98f

    const v8, 0x3f2c0831    # 0.672f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 445
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x412978d5    # 10.592f

    const/4 v4, 0x0

    const v5, 0x41996c8b    # 19.178f

    const v6, -0x3ef69ba6    # -8.587f

    const v7, 0x41996c8b    # 19.178f

    const v8, -0x3e669375    # -19.178f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 446
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->S:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4401dd50

    const v4, 0x446b349c

    const v5, 0x43fe6ed9

    const v6, 0x446b349c

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 447
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 448
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 449
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 452
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 453
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44002cdd

    const v3, 0x446b444a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 454
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc71aa0    # -2.889f

    const/4 v4, 0x0

    const v5, -0x3f4c49ba    # -5.616f

    const v6, 0x3f2a7efa    # 0.666f

    const v7, -0x3efef1aa    # -8.066f

    const v8, 0x3fe95810    # 1.823f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 455
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40d6872b    # -0.662f

    const v4, 0x3d6d9168    # 0.058f

    const v5, -0x404ba5e3    # -1.409f

    const v6, 0x3def9db2    # 0.117f

    const v7, -0x3fee45a2    # -2.277f

    const v8, 0x3e3851ec    # 0.18f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 456
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee2a3d7    # -9.835f

    const v4, 0x3f370a3d    # 0.715f

    const v5, -0x3f6c28f6    # -4.62f

    const v6, 0x3f1f3b64    # 0.622f

    const v7, -0x3e3f9375    # -24.053f

    const v8, -0x412e147b    # -0.41f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 457
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e4578d5    # -23.316f

    const v4, -0x4059ba5e    # -1.299f

    const v5, -0x3dbce666

    const v6, -0x3efaed91    # -8.317f

    const v7, -0x3d846873

    const v8, -0x3e9ef9db    # -14.064f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 458
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f43851f    # -5.89f

    const v4, -0x3f89999a    # -3.85f

    const v5, -0x3eb13f7d    # -12.922f

    const v6, -0x3f3ce560    # -6.097f

    const v7, -0x3e5c22d1    # -20.483f

    const v8, -0x3f3ce560    # -6.097f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 459
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 460
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 461
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e47ae1    # 7.14f

    const/4 v4, 0x0

    const v5, 0x415cf9db    # 13.811f

    const/high16 v6, -0x40000000    # -2.0f

    const v7, 0x419bed91    # 19.491f

    const v8, -0x3f512f1b    # -5.463f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 462
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415ec49c    # 13.923f

    const v4, -0x3f588312    # -5.234f

    const v5, 0x421f8f5c    # 39.89f

    const v6, -0x3ec70e56    # -11.559f

    const v7, 0x427d8419

    const v8, -0x3eb1126f    # -12.933f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 463
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41a10c4a    # 20.131f

    const v4, -0x40710625    # -1.117f

    const v5, 0x41666666    # 14.4f

    const v6, -0x407872b0    # -1.059f

    const v7, 0x41c2c28f    # 24.345f

    const v8, -0x40a04189    # -0.874f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 464
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4023f7cf    # 2.562f

    const v4, 0x3d449ba6    # 0.048f

    const v5, 0x408a45a2    # 4.321f

    const v6, -0x425e353f    # -0.079f

    const v7, 0x40b20c4a    # 5.564f

    const v8, 0x3c9ba5e3    # 0.019f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 465
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fcc0831    # 1.594f

    const v4, 0x3edf3b64    # 0.436f

    const v5, 0x4050f5c3    # 3.265f

    const v6, 0x3f2f1aa0    # 0.684f

    const v7, 0x409fe76d    # 4.997f

    const v8, 0x3f2f1aa0    # 0.684f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 466
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41274bc7    # 10.456f

    const/4 v4, 0x0

    const v5, 0x419774bc    # 18.932f

    const v6, -0x3ef85a1d    # -8.478f

    const v7, 0x419774bc    # 18.932f

    const v8, -0x3e688937    # -18.933f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 467
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4404e883

    const v4, 0x446d62c1

    const v5, 0x4402c9fc

    const v6, 0x446b444a

    const v7, 0x44002cdd

    const v8, 0x446b444a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 468
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 469
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 470
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 473
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 474
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x440196b8

    const v3, 0x446b5408

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 475
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc91687    # -2.858f

    const/4 v4, 0x0

    const v5, -0x3f4e353f    # -5.556f

    const v6, 0x3f28f5c3    # 0.66f

    const v7, -0x3f00b439    # -7.978f

    const v8, 0x3fe74bc7    # 1.807f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 476
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x4090a3d7    # -0.935f

    const v4, 0x3dc6a7f0    # 0.097f

    const v5, -0x3ffb53f8    # -2.073f

    const v6, 0x3e4dd2f2    # 0.201f

    const v7, -0x3f9ec8b4    # -3.519f

    const v8, 0x3ea0c49c    # 0.314f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 477
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ed68b44    # -10.591f

    const v4, 0x3f553f7d    # 0.833f

    const v5, -0x3f4c28f6    # -5.62f

    const v6, 0x3f476c8b    # 0.779f

    const v7, -0x3e2dc6a8    # -26.278f

    const v8, -0x418f5c29    # -0.235f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 478
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e3bac08    # -24.541f

    const v4, -0x405e76c9    # -1.262f

    const v5, -0x3db3ba5e    # -51.068f

    const v6, -0x3ef25a1d    # -8.853f

    const v7, -0x3d7da873

    const v8, -0x3e966666    # -14.6f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 479
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f43851f    # -5.89f

    const v4, -0x3f898937    # -3.851f

    const v5, -0x3eb13b64    # -12.923f

    const v6, -0x3f3cd4fe    # -6.099f

    const v7, -0x3e5c1eb8    # -20.485f

    const v8, -0x3f3cd4fe    # -6.099f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 480
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 481
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 482
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e47ae1    # 7.14f

    const/4 v4, 0x0

    const v5, 0x415cf9db    # 13.811f

    const/high16 v6, -0x40000000    # -2.0f

    const v7, 0x419bed91    # 19.491f

    const v8, -0x3f5126e9    # -5.464f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 483
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415dd70a    # 13.865f

    const v4, -0x3f592f1b    # -5.213f

    const v5, 0x4223c083    # 40.938f

    const v6, -0x3ebf8d50    # -12.028f

    const v7, 0x42834ac1

    const v8, -0x3ea9e354    # -13.382f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 484
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41ab9168    # 21.446f

    const v4, -0x40710625    # -1.117f

    const v5, 0x417df3b6    # 15.872f

    const v6, -0x4081cac1    # -0.993f

    const v7, 0x41d49168    # 26.571f

    const v8, -0x40bced91    # -0.762f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 485
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x403fbe77    # 2.996f

    const v4, 0x3d851eb8    # 0.065f

    const v5, 0x409ef9db    # 4.968f

    const v6, -0x42189375    # -0.113f

    const v7, 0x40ca6e98    # 6.326f

    const v8, 0x3d810625    # 0.063f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 486
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3df7ced9    # 0.121f

    const v4, 0x3c83126f    # 0.016f

    const v5, 0x3e916873    # 0.284f

    const v6, 0x3d0f5c29    # 0.035f

    const v7, 0x3ee66666    # 0.45f

    const v8, 0x3d6147ae    # 0.055f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 487
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fc9db23    # 1.577f

    const v4, 0x3edd2f1b    # 0.432f

    const v5, 0x404ed917    # 3.232f

    const v6, 0x3f2d9168    # 0.678f

    const v7, 0x409e45a2    # 4.946f

    const v8, 0x3f2d9168    # 0.678f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 488
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41251eb8    # 10.32f

    const/4 v4, 0x0

    const v5, 0x41958106    # 18.688f

    const v6, -0x3efa1cac    # -8.368f

    const v7, 0x41958106    # 18.688f

    const v8, -0x3e6a7efa    # -18.688f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 489
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x440642c1

    const v4, 0x446d6b64

    const v5, 0x44042b44

    const v6, 0x446b5408

    const v7, 0x440196b8

    const v8, 0x446b5408

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 490
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 491
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 492
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 495
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 496
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4402b76d

    const v3, 0x446b63a6

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 497
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc3a5e3    # -2.943f

    const/4 v4, 0x0

    const v5, -0x3f490e56    # -5.717f

    const v6, 0x3f347ae1    # 0.705f

    const v7, -0x3efd0625    # -8.186f

    const v8, 0x3ff72b02    # 1.931f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 498
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x409645a2    # -0.913f

    const v4, 0x3dc49ba6    # 0.096f

    const v5, -0x4000a3d7    # -1.995f

    const v6, 0x3e4ac083    # 0.198f

    const v7, -0x3fab851f    # -3.32f

    const v8, 0x3e9eb852    # 0.31f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 499
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3eca6e98    # -11.348f

    const v4, 0x3f73b646    # 0.952f

    const v5, -0x3f2c3127    # -6.619f

    const v6, 0x3f6f9db2    # 0.936f

    const v7, -0x3e1bf7cf    # -28.504f

    const v8, -0x42820c4a    # -0.062f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 500
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e31df3b    # -25.766f

    const v4, -0x40633333    # -1.225f

    const v5, -0x3daa8f5c    # -53.36f

    const v6, -0x3ee9cac1    # -9.388f

    const v7, -0x3d791c29    # -67.445f

    const v8, -0x3e8dd70a    # -15.135f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 501
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f437cee    # -5.891f

    const v4, -0x3f898937    # -3.851f

    const v5, -0x3eb1374c    # -12.924f

    const v6, -0x3f3ccccd    # -6.1f

    const v7, -0x3e5c1aa0    # -20.487f

    const v8, -0x3f3ccccd    # -6.1f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 502
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 503
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 504
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e47ae1    # 7.14f

    const/4 v4, 0x0

    const v5, 0x415cf9db    # 13.811f

    const/high16 v6, -0x40000000    # -2.0f

    const v7, 0x419bef9e    # 19.492f

    const v8, -0x3f5126e9    # -5.464f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 505
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415cf1aa    # 13.809f

    const v4, -0x3f59d2f2    # -5.193f

    const v5, 0x4227f1aa    # 41.986f

    const v6, -0x3eb7fbe7    # -12.501f

    const v7, 0x4287d2f2

    const v8, -0x3ea2b021    # -13.832f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 506
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41b61893    # 22.762f

    const v4, -0x40710625    # -1.117f

    const v5, 0x418abe77    # 17.343f

    const v6, -0x40922d0e    # -0.929f

    const v7, 0x41e6645a    # 28.799f

    const v8, -0x40d9db23    # -0.649f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 507
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4032f1aa    # 2.796f

    const v4, 0x3d8b4396    # 0.068f

    const v5, 0x40980831    # 4.751f

    const v6, -0x426872b0    # -0.074f

    const v7, 0x40c5999a    # 6.175f

    const v8, 0x3cac0831    # 0.021f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 508
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fe0e560    # 1.757f

    const v4, 0x3f0e5604    # 0.556f

    const v5, 0x4067ef9e    # 3.624f

    const v6, 0x3f5db22d    # 0.866f

    const v7, 0x40b20c4a    # 5.564f

    const v8, 0x3f5db22d    # 0.866f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 509
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4122f9db    # 10.186f

    const/4 v4, 0x0

    const v5, 0x41938937    # 18.442f

    const v6, -0x3efbdf3b    # -8.258f

    const v7, 0x41938937    # 18.442f

    const v8, -0x3e6c74bc    # -18.443f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 510
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->S:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x44054354

    const v4, 0x446b63a6

    const v5, 0x4402b76d

    const v6, 0x446b63a6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 511
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 512
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 513
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 516
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 517
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44040429

    const v3, 0x446b7354

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 518
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc353f8    # -2.948f

    const/4 v4, 0x0

    const v5, -0x3f48c49c    # -5.726f

    const v6, 0x3f36872b    # 0.713f

    const v7, -0x3efcf9db    # -8.189f

    const v8, 0x3ffa9fbe    # 1.958f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 519
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40781062    # -1.062f

    const v4, 0x3df9db23    # 0.122f

    const v5, -0x3fe8f5c3    # -2.36f

    const v6, 0x3e818937    # 0.253f

    const v7, -0x3f7f851f    # -4.015f

    const v8, 0x3ecccccd    # 0.4f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 520
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ebe5604    # -12.104f

    const v4, 0x3f891687    # 1.071f

    const v5, -0x3f0c3958    # -7.618f

    const v6, 0x3f8c28f6    # 1.095f

    const v7, -0x3e0a2b02    # -30.729f

    const v8, 0x3de76c8b    # 0.113f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 521
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e28147b    # -26.99f

    const v4, -0x4067ef9e    # -1.188f

    const v5, -0x3da16560    # -55.651f

    const v6, -0x3ee1374c    # -9.924f

    const v7, -0x3d748fdf

    const v8, -0x3e854396    # -15.671f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 522
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f437cee    # -5.891f

    const v4, -0x3f8978d5    # -3.852f

    const v5, -0x3eb13333    # -12.925f

    const v6, -0x3f3cc49c    # -6.101f

    const v7, -0x3e5c1687    # -20.489f

    const v8, -0x3f3cc49c    # -6.101f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 523
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 524
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 525
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e47ae1    # 7.14f

    const/4 v4, 0x0

    const v5, 0x415cfdf4    # 13.812f

    const/high16 v6, -0x40000000    # -2.0f

    const v7, 0x419bef9e    # 19.492f

    const v8, -0x3f5126e9    # -5.464f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 526
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415c0419    # 13.751f

    const v4, -0x3f5a76c9    # -5.173f

    const v5, 0x422c23d7    # 43.035f

    const v6, -0x3eb06a7f    # -12.974f

    const v7, 0x428c5b23

    const v8, -0x3e9b7cee    # -14.282f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 527
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c09db2    # 24.077f

    const v4, -0x40710625    # -1.117f

    const v5, 0x41968312    # 18.814f

    const v6, -0x40a3126f    # -0.863f

    const v7, 0x41f83333    # 31.025f

    const v8, -0x40f6872b    # -0.537f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 528
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x404570a4    # 3.085f

    const v4, 0x3da7ef9e    # 0.082f

    const v5, 0x40a6353f    # 5.194f

    const v6, -0x4251eb85    # -0.085f

    const v7, 0x40d753f8    # 6.729f

    const v8, 0x3d3c6a7f    # 0.046f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 529
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fe66666    # 1.8f

    const v4, 0x3f189375    # 0.596f

    const v5, 0x406dd2f2    # 3.716f

    const v6, 0x3f6f5c29    # 0.935f

    const v7, 0x40b6e979    # 5.716f

    const v8, 0x3f6f5c29    # 0.935f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 530
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4120cccd    # 10.05f

    const/4 v4, 0x0

    const v5, 0x41919375    # 18.197f

    const v6, -0x3efda1cb    # -8.148f

    const v7, 0x41919375    # 18.197f

    const v8, -0x3e6e6a7f    # -18.198f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 531
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->S:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4406875c

    const v4, 0x446b7354

    const v5, 0x44040429

    const v6, 0x446b7354

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 532
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 533
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 534
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 537
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 538
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4405421d

    const v3, 0x446b8302

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 539
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc16873    # -2.978f

    const/4 v4, 0x0

    const v5, -0x3f46f1aa    # -5.783f

    const v6, 0x3f3b22d1    # 0.731f

    const v7, -0x3efbeb85    # -8.255f

    const v8, 0x4000f5c3    # 2.015f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 540
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x406c6a7f    # -1.153f

    const v4, 0x3e0e5604    # 0.139f

    const v5, -0x3fdb53f8    # -2.573f

    const v6, 0x3e947ae1    # 0.29f

    const v7, -0x3f72b021    # -4.416f

    const v8, 0x3eeb851f    # 0.46f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 541
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3eb24189    # -12.859f

    const v4, 0x3f983127    # 1.189f

    const v5, -0x3ef620c5    # -8.617f

    const v6, 0x3fa04189    # 1.252f

    const v7, -0x3dfc2e14

    const v8, 0x3e92f1aa    # 0.287f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 542
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e1e49ba    # -28.214f

    const v4, -0x406c8b44    # -1.152f

    const v5, -0x3d983c6a

    const v6, -0x3ed8ac08    # -10.458f

    const v7, -0x3d700419

    const v8, -0x3e7e5604    # -16.208f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 543
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f4374bc    # -5.892f

    const v4, -0x3f896873    # -3.853f

    const v5, -0x3eb12f1b    # -12.926f

    const v6, -0x3f3cbc6a    # -6.102f

    const v7, -0x3e5c126f    # -20.491f

    const v8, -0x3f3cbc6a    # -6.102f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 544
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 545
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 546
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e48312    # 7.141f

    const/4 v4, 0x0

    const v5, 0x415cfdf4    # 13.812f

    const/high16 v6, -0x40000000    # -2.0f

    const v7, 0x419bf1aa    # 19.493f

    const v8, -0x3f5126e9    # -5.464f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 547
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415b22d1    # 13.696f

    const v4, -0x3f5b126f    # -5.154f

    const v5, 0x423054fe    # 44.083f

    const v6, -0x3ea8dd2f    # -13.446f

    const v7, 0x4290e2d1    # 72.443f

    const v8, -0x3e9449ba    # -14.732f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 548
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41cb26e9    # 25.394f

    const v4, -0x40710625    # -1.117f

    const v5, 0x41a249ba    # 20.286f

    const v6, -0x40b374bc    # -0.799f

    const v7, 0x42050419

    const v8, -0x41266666    # -0.425f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 549
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4049ba5e    # 3.152f

    const v4, 0x3db851ec    # 0.09f

    const v5, 0x40aaf1aa    # 5.342f

    const v6, -0x42604189    # -0.078f

    const v7, 0x40dea7f0    # 6.958f

    const v8, 0x3d1fbe77    # 0.039f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 550
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fef1aa0    # 1.868f

    const v4, 0x3f2872b0    # 0.658f

    const v5, 0x40779db2    # 3.869f

    const v6, 0x3f847ae1    # 1.035f

    const v7, 0x40bec083    # 5.961f

    const v8, 0x3f847ae1    # 1.035f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 551
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x411ea7f0    # 9.916f

    const/4 v4, 0x0

    const v5, 0x418f9fbe    # 17.953f

    const v6, -0x3eff645a    # -8.038f

    const v7, 0x418f9fbe    # 17.953f

    const v8, -0x3e706042    # -17.953f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 552
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4409bf1b

    const v4, 0x446d8560

    const v5, 0x4407bcac

    const v6, 0x446b8302

    const v7, 0x4405421d

    const v8, 0x446b8302

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 553
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 554
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 555
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 558
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 559
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4406977d

    const v3, 0x446b92b0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 560
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc2e148    # -2.955f

    const/4 v4, 0x0

    const v5, -0x3f48624e    # -5.738f

    const v6, 0x3f3a5e35    # 0.728f

    const v7, -0x3efcfdf4    # -8.188f

    const v8, 0x400072b0    # 2.007f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 561
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x4057ef9e    # -1.313f

    const v4, 0x3e322d0e    # 0.174f

    const v5, -0x3fbf0a3d    # -3.015f

    const v6, 0x3eba5e35    # 0.364f

    const v7, -0x3f55e354    # -5.316f

    const v8, 0x3f15c28f    # 0.585f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 562
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ea628f6    # -13.615f

    const v4, 0x3fa76c8b    # 1.308f

    const v5, -0x3ee620c5    # -9.617f

    const v6, 0x3fb47ae1    # 1.41f

    const v7, -0x3df347ae    # -35.18f

    const v8, 0x3eec0831    # 0.461f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 563
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e147efa    # -29.438f

    const v4, -0x407147ae    # -1.115f

    const v5, -0x3d8f1375

    const v6, -0x3ed01cac    # -10.993f

    const v7, -0x3d6b774c

    const v8, -0x3e7a0e56    # -16.743f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 564
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f4374bc    # -5.892f

    const v4, -0x3f896873    # -3.853f

    const v5, -0x3eb12b02    # -12.927f

    const v6, -0x3f3cb439    # -6.103f

    const v7, -0x3e5c0e56    # -20.493f

    const v8, -0x3f3cb439    # -6.103f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 565
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 566
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 567
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e48312    # 7.141f

    const/4 v4, 0x0

    const v5, 0x415cfdf4    # 13.812f

    const/high16 v6, -0x40000000    # -2.0f

    const v7, 0x419bf1aa    # 19.493f

    const v8, -0x3f511eb8    # -5.465f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 568
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415a4189    # 13.641f

    const v4, -0x3f5bb646    # -5.134f

    const v5, 0x42348831    # 45.133f

    const v6, -0x3ea153f8    # -13.917f

    const v7, 0x42956b85    # 74.71f

    const v8, -0x3e8d1687    # -15.182f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 569
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41d5ac08    # 26.709f

    const v4, -0x4070e560    # -1.118f

    const v5, 0x41ae1062    # 21.758f

    const v6, -0x40c45a1d    # -0.733f

    const v7, 0x420deb85    # 35.48f

    const v8, -0x415fbe77    # -0.313f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 570
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4064ac08    # 3.573f

    const v4, 0x3ddf3b64    # 0.109f

    const v5, 0x40bed0e5    # 5.963f

    const v6, -0x422d0e56    # -0.103f

    const v7, 0x40f6a7f0    # 7.708f

    const v8, 0x3db22d0e    # 0.087f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 571
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ff1eb85    # 1.89f

    const v4, 0x3f3020c5    # 0.688f

    const v5, 0x407b126f    # 3.923f

    const v6, 0x3f8a5e35    # 1.081f

    const v7, 0x40c1a1cb    # 6.051f

    const v8, 0x3f8a5e35    # 1.081f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 572
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x411c76c9    # 9.779f

    const/4 v4, 0x0

    const v5, 0x418da9fc    # 17.708f

    const v6, -0x3f0245a2    # -7.929f

    const v7, 0x418da9fc    # 17.708f

    const v8, -0x3e725604    # -17.708f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 573
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x440b04cd

    const v4, 0x446d8e04

    const v5, 0x44090958

    const v6, 0x446b92b0

    const v7, 0x4406977d

    const v8, 0x446b92b0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 574
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 575
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 576
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 579
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 580
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44080862

    const v3, 0x446ba24e

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 581
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fca5e35    # -2.838f

    const/4 v4, 0x0

    const v5, -0x3f4fa5e3    # -5.511f

    const v6, 0x3f3020c5    # 0.688f

    const v7, -0x3f03d70a    # -7.88f

    const v8, 0x3ff1cac1    # 1.889f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 582
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x403e353f    # -1.514f

    const v4, 0x3e73b646    # 0.238f

    const/high16 v5, -0x3f980000    # -3.625f

    const v6, 0x3efef9db    # 0.498f

    const v7, -0x3f23a5e3    # -6.886f

    const v8, 0x3f526e98    # 0.822f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 583
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e9a1062    # -14.371f

    const v4, 0x3fb6a7f0    # 1.427f

    const v5, -0x3ed624dd    # -10.616f

    const v6, 0x3fc8b439    # 1.568f

    const v7, -0x3dea6148

    const v8, 0x3f228f5c    # 0.635f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 584
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e0ab646    # -30.661f

    const v4, -0x4075e354    # -1.079f

    const v5, -0x3d85eb85    # -62.52f

    const v6, -0x3ec79581    # -11.526f

    const v7, -0x3d66eb85    # -76.54f

    const v8, -0x3e75c6a8    # -17.278f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 585
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f4374bc    # -5.892f

    const v4, -0x3f895810    # -3.854f

    const v5, -0x3eb126e9    # -12.928f

    const v6, -0x3f3cac08    # -6.104f

    const v7, -0x3e5c0a3d    # -20.495f

    const v8, -0x3f3cac08    # -6.104f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 586
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 587
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 588
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e48312    # 7.141f

    const/4 v4, 0x0

    const v5, 0x415cfdf4    # 13.812f

    const v6, -0x3fffef9e    # -2.001f

    const v7, 0x419bf1aa    # 19.493f

    const v8, -0x3f511eb8    # -5.465f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 589
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41595c29    # 13.585f

    const v4, -0x3f5c51ec    # -5.115f

    const v5, 0x4238ba5e    # 46.182f

    const v6, -0x3e99c28f    # -14.39f

    const v7, 0x4299f3b6

    const v8, -0x3e85e354    # -15.632f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 590
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41e03127    # 28.024f

    const v4, -0x4070e560    # -1.118f

    const v5, 0x41b9d4fe    # 23.229f

    const v6, -0x40d4bc6a    # -0.669f

    const v7, 0x4216d3f8    # 37.707f

    const v8, -0x41b22d0e    # -0.201f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 591
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40815810    # 4.042f

    const v4, 0x3e0624dd    # 0.131f

    const v5, 0x40d4c49c    # 6.649f

    const v6, -0x41e978d5    # -0.147f

    const v7, 0x41086e98    # 8.527f

    const v8, 0x3e147ae1    # 0.145f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 592
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3e29fbe7    # 0.166f

    const v4, 0x3cd4fdf4    # 0.026f

    const v5, 0x3eced917    # 0.404f

    const v6, 0x3d6d9168    # 0.058f

    const v7, 0x3f2624dd    # 0.649f

    const v8, 0x3db851ec    # 0.09f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 593
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fea9fbe    # 1.833f

    const v4, 0x3f272b02    # 0.653f

    const v5, 0x4073020c    # 3.797f

    const v6, 0x3f8353f8    # 1.026f

    const v7, 0x40bb53f8    # 5.854f

    const v8, 0x3f8353f8    # 1.026f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 594
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x411a51ec    # 9.645f

    const/4 v4, 0x0

    const v5, 0x418bb439    # 17.463f

    const v6, -0x3f05cac1    # -7.819f

    const v7, 0x418bb439    # 17.463f

    const v8, -0x3e744bc7    # -17.463f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 595
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x440c6604

    const v4, 0x446d96a8

    const v5, 0x440a719a

    const v6, 0x446ba24e

    const v7, 0x44080862

    const v8, 0x446ba24e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 596
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 597
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 598
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 601
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 602
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44093906

    const v3, 0x446bb1fc

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 603
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc6a7f0    # -2.896f

    const/4 v4, 0x0

    const/high16 v5, -0x3f4c0000    # -5.625f

    const v6, 0x3f378d50    # 0.717f

    const v7, -0x3effa9fc    # -8.021f

    const v8, 0x3ffd70a4    # 1.98f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 604
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x4036c8b4    # -1.572f

    const v4, 0x3e7ae148    # 0.245f

    const v5, -0x3f90b439    # -3.739f

    const v6, 0x3f03d70a    # 0.515f

    const v7, -0x3f1fd70a    # -7.005f

    const v8, 0x3f595810    # 0.849f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 605
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e8df3b6    # -15.128f

    const v4, 0x3fc5c28f    # 1.545f

    const v5, -0x3ec628f6    # -11.615f

    const v6, 0x3fdced91    # 1.726f

    const v7, -0x3de179db    # -39.631f

    const v8, 0x3f4f5c29    # 0.81f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 606
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e00ef9e    # -31.883f

    const v4, -0x407a9fbe    # -1.042f

    const v5, -0x3d7e62d1    # -64.807f

    const v6, -0x3ebf0e56    # -12.059f

    const v7, -0x3d625fbe

    const v8, -0x3e717cee    # -17.814f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 607
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f436c8b    # -5.893f

    const v4, -0x3f8947ae    # -3.855f

    const v5, -0x3eb11eb8    # -12.93f

    const v6, -0x3f3c9ba6    # -6.106f

    const v7, -0x3e5c0625    # -20.497f

    const v8, -0x3f3c9ba6    # -6.106f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 608
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 609
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 610
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e48312    # 7.141f

    const/4 v4, 0x0

    const v5, 0x415d020c    # 13.813f

    const v6, -0x3fffef9e    # -2.001f

    const v7, 0x419bf3b6    # 19.494f

    const v8, -0x3f511eb8    # -5.465f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 611
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41587efa    # 13.531f

    const v4, -0x3f5ce560    # -5.097f

    const v5, 0x423ced91

    const v6, -0x3e92353f    # -14.862f

    const v7, 0x429e7be7

    const v8, -0x3e7f5810    # -16.082f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 612
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41eab852    # 29.34f

    const v4, -0x4070e560    # -1.118f

    const v5, 0x41c5978d    # 24.699f

    const v6, -0x40e56042    # -0.604f

    const v7, 0x421fbd71

    const v8, -0x4249ba5e    # -0.089f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 613
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40880831    # 4.251f

    const v4, 0x3e1374bc    # 0.144f

    const v5, 0x40df851f    # 6.985f

    const v6, -0x41e24dd3    # -0.154f

    const v7, 0x410f78d5    # 8.967f

    const v8, 0x3e24dd2f    # 0.161f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 614
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3cb43958    # 0.022f

    const v4, 0x3b83126f    # 0.004f

    const v5, 0x3d50e560    # 0.051f

    const v6, 0x3c03126f    # 0.008f

    const v7, 0x3d99999a    # 0.075f

    const v8, 0x3c449ba6    # 0.012f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 615
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ff83127    # 1.939f

    const v4, 0x3f41cac1    # 0.757f

    const v5, 0x408178d5    # 4.046f

    const v6, 0x3f974bc7    # 1.182f

    const v7, 0x40c820c5    # 6.254f

    const v8, 0x3f974bc7    # 1.182f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 616
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x411828f6    # 9.51f

    const/4 v4, 0x0

    const v5, 0x4189c083    # 17.219f

    const v6, -0x3f093f7d    # -7.711f

    const v7, 0x4189c083    # 17.219f

    const v8, -0x3e763f7d    # -17.219f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 617
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x440d86fa

    const v4, 0x446d9f4c

    const v5, 0x440b999a    # 558.4f

    const v6, 0x446bb1fc

    const v7, 0x44093906

    const v8, 0x446bb1fc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 618
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 619
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 620
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 623
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 624
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x440a8ccd    # 554.2f

    const v3, 0x446bc1aa    # 943.026f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 625
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fce978d    # -2.772f

    const/4 v4, 0x0

    const v5, -0x3f53b646    # -5.384f

    const v6, 0x3f2c8b44    # 0.674f

    const v7, -0x3f09c28f    # -7.695f

    const v8, 0x3fed0e56    # 1.852f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 626
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ff020c5    # -2.248f

    const v4, 0x3ebef9db    # 0.373f

    const v5, -0x3f45374c    # -5.837f

    const v6, 0x3f4978d5    # 0.787f

    const v7, -0x3ecf78d5    # -11.033f

    const v8, 0x3fa18937    # 1.262f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 627
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e7b8312    # -16.561f

    const v4, 0x3fad0e56    # 1.352f

    const v5, -0x3eab0625    # -13.311f

    const v6, 0x3fbeb852    # 1.49f

    const v7, -0x3ddb9581    # -41.104f

    const v8, 0x3f010625    # 0.504f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 628
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e015e35    # -31.829f

    const v4, -0x406ccccd    # -1.15f

    const v5, -0x3d7e5168

    const v6, -0x3ebda9fc    # -12.146f

    const v7, -0x3d6232b0    # -78.901f

    const v8, -0x3e6fef9e    # -18.008f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 629
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f4322d1    # -5.902f

    const v4, -0x3f881062    # -3.874f

    const v5, -0x3eb0b439    # -12.956f

    const v6, -0x3f3ba5e3    # -6.136f

    const v7, -0x3e5ba7f0    # -20.543f

    const v8, -0x3f3ba5e3    # -6.136f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 630
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 631
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 632
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e4ed91    # 7.154f

    const/4 v4, 0x0

    const v5, 0x415d6042    # 13.836f

    const v6, -0x3fff7cee    # -2.008f

    const v7, 0x419c2f1b    # 19.523f

    const v8, -0x3f508312    # -5.484f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 633
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415a353f    # 13.638f

    const v4, -0x3f57ced9    # -5.256f

    const v5, 0x423d6c8b

    const v6, -0x3e8eb852    # -15.08f

    const v7, 0x429ecb44

    const v8, -0x3e7c0a3d    # -16.495f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 634
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41e75604    # 28.917f

    const v4, -0x40618937    # -1.238f

    const v5, 0x41c5e148    # 24.735f

    const v6, -0x40b91687    # -0.777f

    const v7, 0x42256c8b

    const v8, -0x41591687    # -0.326f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 635
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40a3126f    # 5.096f

    const v4, 0x3e7ced91    # 0.247f

    const v5, 0x4113be77    # 9.234f

    const v6, 0x3dae147b    # 0.085f

    const v7, 0x4139e354    # 11.618f

    const v8, 0x3ee8f5c3    # 0.455f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 636
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ec39581    # 0.382f

    const v4, 0x3d71a9fc    # 0.059f

    const v5, 0x3f72f1aa    # 0.949f

    const v6, 0x3e158106    # 0.146f

    const v7, 0x3fb22d0e    # 1.392f

    const v8, 0x3e6353f8    # 0.222f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 637
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fee978d    # 1.864f

    const v4, 0x3f343958    # 0.704f

    const v5, 0x40784189    # 3.879f

    const v6, 0x3f8d2f1b    # 1.103f

    const v7, 0x40bfa5e3    # 5.989f

    const v8, 0x3f8d2f1b    # 1.103f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 638
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4115fbe7    # 9.374f

    const/4 v4, 0x0

    const v5, 0x4187c8b4    # 16.973f

    const v6, -0x3f0ccccd    # -7.6f

    const v7, 0x4187c8b4    # 16.973f

    const v8, -0x3e78374c    # -16.973f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 639
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x440ecb12

    const v4, 0x446da800    # 950.625f

    const v5, 0x440ce4ac

    const v6, 0x446bc1aa    # 943.026f

    const v7, 0x440a8ccd    # 554.2f

    const v8, 0x446bc1aa    # 943.026f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 640
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 641
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 642
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 645
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 646
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x440b9b33

    const v3, 0x446bd158

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 647
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc79db2    # -2.881f

    const/4 v4, 0x0

    const v5, -0x3f4d2f1b    # -5.588f

    const v6, 0x3f3ba5e3    # 0.733f

    const v7, -0x3f0170a4    # -7.955f

    const v8, 0x40010625    # 2.016f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 648
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc91687    # -2.858f

    const v4, 0x3ed60419    # 0.418f

    const v5, -0x3f0cb439    # -7.603f

    const v6, 0x3f66a7f0    # 0.901f

    const v7, -0x3ea9ba5e    # -13.392f

    const v8, 0x3fb10625    # 1.383f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 649
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e700e56    # -17.993f

    const v4, 0x3f945a1d    # 1.159f

    const v5, -0x3e8fe76d    # -15.006f

    const v6, 0x3fa08312    # 1.254f

    const v7, -0x3dd5b22d    # -42.576f

    const v8, 0x3e4bc6a8    # 0.199f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 650
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e01d2f2    # -31.772f

    const v4, -0x405f1aa0    # -1.257f

    const v5, -0x3d7e420c

    const v6, -0x3ebc49ba    # -12.232f

    const v7, -0x3d6206a8    # -78.987f

    const v8, -0x3e6e645a    # -18.201f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 651
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f42d0e5    # -5.912f

    const v4, -0x3f86d917    # -3.893f

    const v5, -0x3eb045a2    # -12.983f

    const v6, -0x3f3aa7f0    # -6.167f

    const v7, -0x3e5b45a2    # -20.591f

    const v8, -0x3f3aa7f0    # -6.167f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 652
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 653
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 654
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e54fdf    # 7.166f

    const/4 v4, 0x0

    const v5, 0x415db646    # 13.857f

    const v6, -0x3fff0a3d    # -2.015f

    const v7, 0x419c6873    # 19.551f

    const v8, -0x3f4ff7cf    # -5.501f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 655
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415be354    # 13.743f

    const v4, -0x3f52b852    # -5.415f

    const v5, 0x423deb85    # 47.48f

    const v6, -0x3e8b3333    # -15.3f

    const v7, 0x429f1ba6    # 79.554f

    const v8, -0x3e78ba5e    # -16.909f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 656
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41e3f1aa    # 28.493f

    const v4, -0x40520c4a    # -1.359f

    const v5, 0x41c62b02    # 24.771f

    const v6, -0x408c8b44    # -0.951f

    const v7, 0x422b1db2    # 42.779f

    const v8, -0x40ef5c29    # -0.565f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 657
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40be147b    # 5.94f

    const v4, 0x3eb43958    # 0.352f

    const v5, 0x4137b646    # 11.482f

    const v6, 0x3ea66666    # 0.325f

    const v7, 0x41644dd3    # 14.269f

    const/high16 v8, 0x3f400000    # 0.75f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 658
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3e8624dd    # 0.262f

    const v4, 0x3d23d70a    # 0.04f

    const v5, 0x3f11a9fc    # 0.569f

    const v6, 0x3dba5e35    # 0.091f

    const v7, 0x3f5f7cee    # 0.873f

    const v8, 0x3e158106    # 0.146f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 659
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fff1aa0    # 1.993f

    const v4, 0x3f56872b    # 0.838f

    const v5, 0x4085b22d    # 4.178f

    const v6, 0x3fa78d50    # 1.309f

    const v7, 0x40cf3333    # 6.475f

    const v8, 0x3fa78d50    # 1.309f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 660
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4113d2f2    # 9.239f

    const/4 v4, 0x0

    const v5, 0x4185d4fe    # 16.729f

    const v6, -0x3f1049ba    # -7.491f

    const v7, 0x4185d4fe    # 16.729f

    const v8, -0x3e7a2b02    # -16.729f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 661
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x440fc9db

    const v4, 0x446db093

    const v5, 0x440dea7f

    const v6, 0x446bd158

    const v7, 0x440b9b33

    const v8, 0x446bd158

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 662
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 663
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 664
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 667
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 668
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x440cd6fa

    const v3, 0x446be106

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 669
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc820c5    # -2.873f

    const/4 v4, 0x0

    const v5, -0x3f4dcac1    # -5.569f

    const v6, 0x3f3df3b6    # 0.742f

    const v7, -0x3f02872b    # -7.921f

    const v8, 0x40022d0e    # 2.034f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 670
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fafdf3b    # -3.252f

    const v4, 0x3efc6a7f    # 0.493f

    const v5, -0x3ee4f1aa    # -9.691f

    const v6, 0x3f8df3b6    # 1.109f

    const v7, -0x3e79f7cf    # -16.754f

    const v8, 0x3fd3126f    # 1.649f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 671
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e649581    # -19.427f

    const v4, 0x3f774bc7    # 0.966f

    const v5, -0x3e7a645a    # -16.701f

    const v6, 0x3f826e98    # 1.019f

    const v7, -0x3dcfcdd3    # -44.049f

    const v8, -0x4224dd2f    # -0.107f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 672
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e0249ba    # -31.714f

    const v4, -0x405147ae    # -1.365f

    const v5, -0x3d7e34bc

    const v6, -0x3ebaf1aa    # -12.316f

    const v7, -0x3d61dc29    # -79.07f

    const v8, -0x3e6cdd2f    # -18.392f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 673
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f427efa    # -5.922f

    const v4, -0x3f859168    # -3.913f

    const v5, -0x3eafcac1    # -13.013f

    const v6, -0x3f39999a    # -6.2f

    const v7, -0x3e5add2f    # -20.642f

    const v8, -0x3f39999a    # -6.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 674
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 675
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 676
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e5c28f    # 7.18f

    const/4 v4, 0x0

    const v5, 0x415e24dd    # 13.884f

    const v6, -0x3ffe872b    # -2.023f

    const v7, 0x419cac08    # 19.584f

    const v8, -0x3f4f4bc7    # -5.522f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 677
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415da1cb    # 13.852f

    const v4, -0x3f4da9fc    # -5.573f

    const v5, 0x423e6a7f    # 47.604f

    const v6, -0x3e87b22d    # -15.519f

    const v7, 0x429f68f6

    const v8, -0x3e7570a4    # -17.32f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 678
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41e08f5c    # 28.07f

    const v4, -0x4042b021    # -1.479f

    const v5, 0x41c676c9    # 24.808f

    const v6, -0x407020c5    # -1.124f

    const v7, 0x4230cdd3    # 44.201f

    const v8, -0x40b26e98    # -0.803f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 679
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40d91eb8    # 6.785f

    const v4, 0x3ee978d5    # 0.456f

    const v5, 0x415bb22d    # 13.731f

    const v6, 0x3f10624e    # 0.564f

    const v7, 0x41875c29    # 16.92f

    const v8, 0x3f858106    # 1.043f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 680
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f0d4fdf    # 0.552f

    const v4, 0x3da9fbe7    # 0.083f

    const v5, 0x3f9851ec    # 1.19f

    const v6, 0x3e591687    # 0.212f

    const v7, 0x3fd9fbe7    # 1.703f

    const v8, 0x3ea5e354    # 0.324f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 681
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ff9374c    # 1.947f

    const v4, 0x3f4f9db2    # 0.811f

    const v5, 0x4082978d    # 4.081f

    const v6, 0x3fa1a9fc    # 1.263f

    const v7, 0x40ca45a2    # 6.321f

    const v8, 0x3fa1a9fc    # 1.263f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 682
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4111a9fc    # 9.104f

    const/4 v4, 0x0

    const v5, 0x4183dd2f    # 16.483f

    const v6, -0x3f13c6a8    # -7.382f

    const v7, 0x4183dd2f    # 16.483f

    const v8, -0x3e7c20c5    # -16.484f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 683
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4410f5f4

    const v4, 0x446db948

    const v5, 0x440f1da2

    const v6, 0x446be106

    const v7, 0x440cd6fa

    const v8, 0x446be106

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 684
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 685
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 686
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 689
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 690
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x440df77d

    const v3, 0x446bf0a4    # 943.76f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 691
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc47ae1    # -2.93f

    const/4 v4, 0x0

    const v5, -0x3f4a8f5c    # -5.67f

    const v6, 0x3f4a3d71    # 0.79f

    const v7, -0x3eff4fdf    # -8.043f

    const v8, 0x40096873    # 2.147f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 692
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f9353f8    # -3.698f

    const v4, 0x3f0b020c    # 0.543f

    const v5, -0x3ec5e354    # -11.632f

    const v6, 0x3fa16873    # 1.261f

    const v7, -0x3e63bc6a    # -19.533f

    const v8, 0x3fe9374c    # 1.822f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 693
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5920c5    # -20.859f

    const v4, 0x3f45e354    # 0.773f

    const v5, -0x3e6cd4fe    # -18.396f

    const v6, 0x3f4872b0    # 0.783f

    const v7, -0x3dc9ea7f    # -45.521f

    const v8, -0x412c8b44    # -0.413f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 694
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e02c49c    # -31.654f

    const v4, -0x4043b646    # -1.471f

    const v5, -0x3d7e28f6    # -64.92f

    const v6, -0x3eb9999a    # -12.4f

    const v7, -0x3d61b333    # -79.15f

    const v8, -0x3e6b5a1d    # -18.581f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 695
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f4224dd    # -5.933f

    const v4, -0x3f8428f6    # -3.935f

    const v5, -0x3eaf4fdf    # -13.043f

    const v6, -0x3f387ae1    # -6.235f

    const v7, -0x3e5a70a4    # -20.695f

    const v8, -0x3f387ae1    # -6.235f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 696
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 697
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 698
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e63d71    # 7.195f

    const/4 v4, 0x0

    const v5, 0x415e978d    # 13.912f

    const v6, -0x3ffdf3b6    # -2.032f

    const v7, 0x419cf5c3    # 19.62f

    const v8, -0x3f4e8f5c    # -5.545f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 699
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415f6042    # 13.961f

    const v4, -0x3f489375    # -5.732f

    const v5, 0x423ee666

    const v6, -0x3e844189    # -15.734f

    const v7, 0x429fb53f

    const v8, -0x3e7228f6    # -17.73f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 700
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41dd2d0e    # 27.647f

    const v4, -0x40333333    # -1.6f

    const v5, 0x41c6c083    # 24.844f

    const v6, -0x4059db23    # -1.298f

    const v7, 0x42367efa    # 45.624f

    const v8, -0x407ae148    # -1.04f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 701
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40f420c5    # 7.629f

    const v4, 0x3f0f5c29    # 0.56f

    const v5, 0x417fae14    # 15.98f

    const v6, 0x3f4dd2f2    # 0.804f

    const v7, 0x419c8f5c    # 19.57f

    const v8, 0x3fab22d1    # 1.337f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 702
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f1df3b6    # 0.617f

    const v4, 0x3dbc6a7f    # 0.092f

    const v5, 0x3fa28f5c    # 1.27f

    const v6, 0x3e70a3d7    # 0.235f

    const v7, 0x3fe78d50    # 1.809f

    const v8, 0x3eba5e35    # 0.364f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 703
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ffdd2f2    # 1.983f

    const v4, 0x3f5ced91    # 0.863f

    const v5, 0x408547ae    # 4.165f

    const v6, 0x3fad4fdf    # 1.354f

    const v7, 0x40cee979    # 6.466f

    const v8, 0x3fad4fdf    # 1.354f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 704
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x410f8106    # 8.969f

    const/4 v4, 0x0

    const v5, 0x4181e979    # 16.239f

    const v6, -0x3f1753f8    # -7.271f

    const v7, 0x4181e979    # 16.239f

    const v8, -0x3e7e147b    # -16.24f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 705
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x441206c9

    const v4, 0x446dc1db

    const v5, 0x44103581

    const v6, 0x446bf0a4    # 943.76f

    const v7, 0x440df77d

    const v8, 0x446bf0a4    # 943.76f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 706
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 707
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 708
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 711
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 712
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x440f378d

    const v3, 0x446c0052

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 713
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc52f1b    # -2.919f

    const/4 v4, 0x0

    const v5, -0x3f4b5c29    # -5.645f

    const v6, 0x3f4bc6a8    # 0.796f

    const/high16 v7, -0x3f000000    # -8.0f

    const v8, 0x400a4dd3    # 2.161f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 714
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x41926e98    # -0.232f

    const v4, 0x3d178d50    # 0.037f

    const v5, -0x410ed917    # -0.471f

    const v6, 0x3d958106    # 0.073f

    const v7, -0x40c872b0    # -0.717f

    const v8, 0x3ddd2f1b    # 0.108f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 715
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f7b3b64    # -4.149f

    const v4, 0x3f174bc7    # 0.591f

    const v5, -0x3ea6f5c3    # -13.565f

    const v6, 0x3fb41893    # 1.407f

    const v7, -0x3e4df7cf    # -22.254f

    const v8, 0x3ffdf3b6    # 1.984f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 716
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e4da7f0    # -22.293f

    const v4, 0x3f147ae1    # 0.58f

    const v5, -0x3e5f4396    # -20.092f

    const v6, 0x3f0c0831    # 0.547f

    const v7, -0x3dc40625    # -46.994f

    const v8, -0x40c83127    # -0.718f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 717
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e034396    # -31.592f

    const v4, -0x4035e354    # -1.579f

    const v5, -0x3d7e2148

    const v6, -0x3eb849ba    # -12.482f

    const v7, -0x3d618c4a

    const v8, -0x3e69db23    # -18.768f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 718
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f41cac1    # -5.944f

    const v4, -0x3f82b021    # -3.958f

    const v5, -0x3eaec8b4    # -13.076f

    const v6, -0x3f374396    # -6.273f

    const v7, -0x3e59f9db    # -20.753f

    const v8, -0x3f374396    # -6.273f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 719
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 720
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 721
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e6c083    # 7.211f

    const/4 v4, 0x0

    const v5, 0x415f0e56    # 13.941f

    const v6, -0x3ffd4fdf    # -2.042f

    const v7, 0x419d4396    # 19.658f

    const v8, -0x3f4dcac1    # -5.569f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 722
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x416126e9    # 14.072f

    const v4, -0x3f437cee    # -5.891f

    const v5, 0x423f6354    # 47.847f

    const v6, -0x3e80d0e5    # -15.949f

    const/high16 v7, 0x42a00000    # 80.0f

    const v8, -0x3e6ee560    # -18.138f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 723
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41d9cac1    # 27.224f

    const v4, -0x40239581    # -1.722f

    const v5, 0x41c70a3d    # 24.88f

    const v6, -0x40439581    # -1.472f

    const v7, 0x423c2f1b

    const v8, -0x405c49ba    # -1.279f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 724
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41079581    # 8.474f

    const v4, 0x3f2a3d71    # 0.665f

    const v5, 0x4191d4fe    # 18.229f

    const v6, 0x3f858106    # 1.043f

    const v7, 0x41b1c49c    # 22.221f

    const v8, 0x3fd0e560    # 1.632f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 725
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f895810    # 1.073f

    const v4, 0x3e21cac1    # 0.158f

    const v5, 0x4009a9fc    # 2.151f

    const v6, 0x3eed9168    # 0.464f

    const v7, 0x4030d4fe    # 2.763f

    const v8, 0x3f1f3b64    # 0.622f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 726
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3d851eb8    # 0.065f

    const v4, 0x3c8b4396    # 0.017f

    const v5, 0x3e072b02    # 0.132f

    const v6, 0x3cbc6a7f    # 0.023f

    const v7, 0x3e4ac083    # 0.198f

    const v8, 0x3d178d50    # 0.037f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 727
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fef3b64    # 1.869f

    const v4, 0x3f441893    # 0.766f

    const v5, 0x407a7efa    # 3.914f

    const v6, 0x3f983127    # 1.189f

    const v7, 0x40c1db23    # 6.058f

    const v8, 0x3f983127    # 1.189f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 728
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x410d5810    # 8.834f

    const/4 v4, 0x0

    const v5, 0x417fe76d    # 15.994f

    const v6, -0x3f1ad0e5    # -7.162f

    const v7, 0x417fe76d    # 15.994f

    const v8, -0x3e80147b    # -15.995f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 729
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4413372b    # 588.862f

    const v4, 0x446dca8f

    const v5, 0x44116cee

    const v6, 0x446c0052

    const v7, 0x440f378d

    const v8, 0x446c0052

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 730
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 731
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 732
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 735
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 736
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4410577d

    const v3, 0x446c1000    # 944.25f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 737
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc1cac1    # -2.972f

    const/4 v4, 0x0

    const v5, -0x3f4849ba    # -5.741f

    const v6, 0x3f560419    # 0.836f

    const v7, -0x3efe3127    # -8.113f

    const v8, 0x40111687    # 2.267f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 738
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x416f1aa0    # -0.283f

    const v4, 0x3d4ccccd    # 0.05f

    const v5, -0x40ebc6a8    # -0.579f

    const v6, 0x3dc8b439

    const v7, -0x409c6a7f    # -0.889f

    const v8, 0x3e10624e    # 0.141f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 739
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f6b4bc7    # -4.647f

    const v4, 0x3f23126f    # 0.637f

    const v5, -0x3e889ba6    # -15.462f

    const v6, 0x3fc58106    # 1.543f

    const v7, -0x3e391aa0    # -24.862f

    const v8, 0x400851ec    # 2.13f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 740
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e423333    # -23.725f

    const v4, 0x3ec5a1cb    # 0.386f

    const v5, -0x3e51b646    # -21.786f

    const v6, 0x3e9fbe77    # 0.312f

    const v7, -0x3dbe22d1    # -48.466f

    const v8, -0x407d0e56    # -1.023f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 741
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e03c28f    # -31.53f

    const v4, -0x402851ec    # -1.685f

    const v5, -0x3d7e1917

    const v6, -0x3eb6f9db    # -12.564f

    const v7, -0x3d6164dd

    const v8, -0x3e685e35    # -18.954f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 742
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f4170a4    # -5.955f

    const v4, -0x3f81374c    # -3.981f

    const v5, -0x3eae4189    # -13.109f

    const v6, -0x3f36147b    # -6.31f

    const v7, -0x3e59851f    # -20.81f

    const v8, -0x3f36147b    # -6.31f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 743
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 744
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 745
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e74bc7    # 7.228f

    const/4 v4, 0x0

    const v5, 0x415f9581    # 13.974f

    const v6, -0x3ffcac08    # -2.052f

    const v7, 0x419d978d    # 19.699f

    const v8, -0x3f4cf5c3    # -5.595f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 746
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4162ed91    # 14.183f

    const v4, -0x3f3e76c9    # -6.048f

    const v5, 0x423fde35    # 47.967f

    const v6, -0x3e7eb22d    # -16.163f

    const v7, 0x42a049ba

    const v8, -0x3e6ba3d7    # -18.545f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 747
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41d66873    # 26.801f

    const v4, -0x40143958    # -1.842f

    const v5, 0x41c753f8    # 24.916f

    const v6, -0x402d4fdf    # -1.646f

    const v7, 0x4241e042

    const v8, -0x403dd2f2    # -1.517f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 748
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41151687    # 9.318f

    const v4, 0x3f44dd2f    # 0.769f

    const v5, 0x41a3d2f2    # 20.478f

    const v6, 0x3fa41893    # 1.282f

    const v7, 0x41c6f7cf    # 24.871f

    const v8, 0x3ff6872b    # 1.926f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 749
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f98d4fe    # 1.194f

    const v4, 0x3e333333    # 0.175f

    const v5, 0x40122d0e    # 2.284f

    const v6, 0x3f049ba6    # 0.518f

    const v7, 0x403dc28f    # 2.965f

    const v8, 0x3f31eb85    # 0.695f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 750
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3d449ba6    # 0.048f

    const v4, 0x3c54fdf4    # 0.013f

    const v5, 0x3dc6a7f0    # 0.097f

    const v6, 0x3c9374bc    # 0.018f

    const v7, 0x3e158106    # 0.146f

    const v8, 0x3ce56042    # 0.028f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 751
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ff20c4a    # 1.891f

    const v4, 0x3f4dd2f2    # 0.804f

    const v5, 0x407dd2f2    # 3.966f

    const v6, 0x3fa0e560    # 1.257f

    const v7, 0x40c4c49c    # 6.149f

    const v8, 0x3fa0e560    # 1.257f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 752
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x410b26e9    # 8.697f

    const/4 v4, 0x0

    const v5, 0x417bfbe7    # 15.749f

    const v6, -0x3f1e4dd3    # -7.053f

    const v7, 0x417bfbe7    # 15.749f

    const/high16 v8, -0x3e840000    # -15.75f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 753
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4414476d

    const v4, 0x446dd333    # 951.3f

    const v5, 0x44128419

    const v6, 0x446c1000    # 944.25f

    const v7, 0x4410577d

    const v8, 0x446c1000    # 944.25f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 754
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 755
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 756
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 759
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 760
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4411821d

    const v3, 0x446c1fae

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 761
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc15810    # -2.979f

    const/4 v4, 0x0

    const v5, -0x3f47df3b    # -5.754f

    const v6, 0x3f5a5e35    # 0.853f

    const v7, -0x3efe20c5    # -8.117f

    const v8, 0x4013c6a8    # 2.309f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 762
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x412c0831    # -0.414f

    const v4, 0x3db43958    # 0.088f

    const v5, -0x40a5e354    # -0.852f

    const v6, 0x3e3020c5    # 0.172f

    const v7, -0x4054fdf4    # -1.336f

    const v8, 0x3e71a9fc    # 0.236f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 763
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f5b53f8    # -5.146f

    const v4, 0x3f2ed917    # 0.683f

    const v5, -0x3e7520c5    # -17.359f

    const v6, 0x3fd6e979    # 1.679f

    const v7, -0x3e243b64    # -27.471f

    const v8, 0x4011a9fc    # 2.276f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 764
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e36bc6a    # -25.158f

    const v4, 0x3e45a1cb    # 0.193f

    const v5, -0x3e4426e9    # -23.481f

    const v6, 0x3d9db22d    # 0.077f

    const v7, -0x3db83f7d    # -49.938f

    const v8, -0x4055e354    # -1.329f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 765
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e0445a2    # -31.466f

    const v4, -0x401ac083    # -1.791f

    const v5, -0x3d7e14fe    # -64.959f

    const v6, -0x3eb5b22d    # -12.644f

    const v7, -0x3d614000    # -79.375f

    const v8, -0x3e66e76d    # -19.137f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 766
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f410e56    # -5.967f

    const v4, -0x3f7fced9    # -4.006f

    const v5, -0x3eadb22d    # -13.144f

    const v6, -0x3f34c49c    # -6.351f

    const v7, -0x3e590625    # -20.872f

    const v8, -0x3f34c49c    # -6.351f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 767
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 768
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 769
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e7e76d    # 7.247f

    const/4 v4, 0x0

    const v5, 0x416020c5    # 14.008f

    const v6, -0x3ffbf7cf    # -2.063f

    const v7, 0x419df1aa    # 19.743f

    const v8, -0x3f4c1893    # -5.622f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 770
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4164bc6a    # 14.296f

    const v4, -0x3f396873    # -6.206f

    const v5, 0x42405810

    const v6, -0x3e7cfbe7    # -16.377f

    const v7, 0x42a091ec

    const v8, -0x3e686666    # -18.95f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 771
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41d30625    # 26.378f

    const v4, -0x4004dd2f    # -1.962f

    const v5, 0x41c79db2    # 24.952f

    const v6, -0x40174bc7    # -1.818f

    const v7, 0x42479062

    const v8, -0x401f7cee    # -1.754f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 772
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41229ba6    # 10.163f

    const v4, 0x3f5f7cee    # 0.873f

    const v5, 0x41b5d2f2    # 22.728f

    const v6, 0x3fc2b021    # 1.521f

    const v7, 0x41dc2d0e    # 27.522f

    const v8, 0x400e147b    # 2.22f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 773
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fa851ec    # 1.315f

    const v4, 0x3e439581    # 0.191f

    const v5, 0x401ab021    # 2.417f

    const v6, 0x3f126e98    # 0.572f

    const v7, 0x404ac083    # 3.168f

    const v8, 0x3f44dd2f    # 0.769f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 774
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3e0d4fdf    # 0.138f

    const v4, 0x3d1374bc    # 0.036f

    const v5, 0x3e8e5604    # 0.278f

    const v6, 0x3d851eb8    # 0.065f

    const v7, 0x3ed6872b    # 0.419f

    const v8, 0x3dbe76c9    # 0.093f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 775
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fef1aa0    # 1.868f

    const v4, 0x3f4c8b44    # 0.799f

    const v5, 0x407af1aa    # 3.921f

    const/high16 v6, 0x3fa00000    # 1.25f

    const v7, 0x40c2978d    # 6.081f

    const/high16 v8, 0x3fa00000    # 1.25f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 776
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4109020c    # 8.563f

    const/4 v4, 0x0

    const v5, 0x41781893    # 15.506f

    const v6, -0x3f21db23    # -6.942f

    const v7, 0x41781893    # 15.506f

    const v8, -0x3e87eb85    # -15.505f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 777
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4415627f

    const v4, 0x446ddbe7

    const v5, 0x4413a635

    const v6, 0x446c1fae

    const v7, 0x4411821d

    const v8, 0x446c1fae

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 778
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 779
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 780
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 783
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 784
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44127b64

    const v3, 0x446c2f4c

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 785
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fb71aa0    # -3.139f

    const/4 v4, 0x0

    const v5, -0x3f3e4dd3    # -6.053f

    const v6, 0x3f7374bc    # 0.951f

    const v7, -0x3ef85604    # -8.479f

    const v8, 0x4024dd2f    # 2.576f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 786
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x41a3d70a    # -0.215f

    const v4, 0x3d1ba5e3    # 0.038f

    const v5, -0x4126e979    # -0.424f

    const v6, 0x3da1cac1    # 0.079f

    const v7, -0x40d851ec    # -0.655f

    const v8, 0x3ddf3b64    # 0.109f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 787
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f4b5c29    # -5.645f

    const v4, 0x3f3a9fbe    # 0.729f

    const v5, -0x3e65f3b6    # -19.256f

    const v6, 0x3fe83127    # 1.814f

    const v7, -0x3e0f6042    # -30.078f

    const v8, 0x401b126f    # 2.423f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 788
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e2b45a2    # -26.591f

    const/4 v4, 0x0

    const v5, -0x3e36978d    # -25.176f

    const v6, -0x41dd2f1b    # -0.159f

    const v7, -0x3db25b23    # -51.411f

    const v8, -0x402eb852    # -1.635f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 789
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e04d0e5    # -31.398f

    const v4, -0x400d4fdf    # -1.896f

    const v5, -0x3d7e12f2

    const v6, -0x3eb472b0    # -12.722f

    const v7, -0x3d611d2f    # -79.443f

    const v8, -0x3e6574bc    # -19.318f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 790
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f40a3d7    # -5.98f

    const v4, -0x3f7ef1aa    # -4.033f

    const v5, -0x3ead1687    # -13.182f

    const v6, -0x3f33645a    # -6.394f

    const v7, -0x3e588106    # -20.937f

    const v8, -0x3f33645a    # -6.394f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 791
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 792
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 793
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e88b44    # 7.267f

    const/4 v4, 0x0

    const v5, 0x4160b852    # 14.045f

    const v6, -0x3ffb3333    # -2.075f

    const v7, 0x419e53f8    # 19.791f

    const v8, -0x3f4b22d1    # -5.652f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 794
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41668f5c    # 14.41f

    const v4, -0x3f34624e    # -6.363f

    const v5, 0x4240d1ec

    const v6, -0x3e7b4dd3    # -16.587f

    const v7, 0x42a0d810

    const v8, -0x3e652f1b    # -19.352f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 795
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41cfa1cb    # 25.954f

    const v4, -0x3ffab021    # -2.083f

    const v5, 0x41c7e76d    # 24.988f

    const v6, -0x40010625    # -1.992f

    const v7, 0x424d4083    # 51.313f

    const v8, -0x40010625    # -1.992f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 796
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41301cac    # 11.007f

    const v4, 0x3f7a1cac    # 0.977f

    const v5, 0x41c7ced9    # 24.976f

    const v6, 0x3fe16873    # 1.761f

    const v7, 0x41f1624e    # 30.173f

    const v8, 0x4020e560    # 2.514f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 797
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f5ef9db    # 0.871f

    const v4, 0x3e010625    # 0.126f

    const v5, 0x3fcdf3b6    # 1.609f

    const v6, 0x3ea76c8b    # 0.327f

    const v7, 0x400fef9e    # 2.249f

    const v8, 0x3f041893    # 0.516f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 798
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40070a3d    # 2.11f

    const v4, 0x3f8d2f1b    # 1.103f

    const v5, 0x40905a1d    # 4.511f

    const v6, 0x3fdd0e56    # 1.727f

    const v7, 0x40e1cac1    # 7.056f

    const v8, 0x3fdd0e56    # 1.727f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 799
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4106d917    # 8.428f

    const/4 v4, 0x0

    const v5, 0x417428f6    # 15.26f

    const v6, -0x3f255810    # -6.833f

    const v7, 0x417428f6    # 15.26f

    const v8, -0x3e8bd70a    # -15.26f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 800
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x44164c08

    const v4, 0x446de47b    # 951.57f

    const v5, 0x441496b8

    const v6, 0x446c2f4c

    const v7, 0x44127b64

    const v8, 0x446c2f4c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 801
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 802
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 803
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 806
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 807
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4413f76d

    const v3, 0x446c3efa

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 808
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc1eb85    # -2.97f

    const/4 v4, 0x0

    const v5, -0x3f489375    # -5.732f

    const v6, 0x3f5e76c9    # 0.869f

    const v7, -0x3efefdf4    # -8.063f

    const v8, 0x4016c8b4    # 2.356f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 809
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40d0624e    # -0.686f

    const v4, 0x3e395810    # 0.181f

    const v5, -0x40439581    # -1.472f

    const v6, 0x3ebd70a4    # 0.37f

    const v7, -0x3fe70a3d    # -2.39f

    const v8, 0x3ef851ec    # 0.485f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 810
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f391eb8    # -6.215f

    const v4, 0x3f47ef9e    # 0.781f

    const v5, -0x3e553d71    # -21.345f

    const v6, 0x3fff9db2    # 1.997f

    const v7, -0x3dfb70a4    # -33.14f

    const v8, 0x4021374c    # 2.519f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 811
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e1d3b64    # -28.346f

    const/4 v4, 0x0

    const v5, -0x3e2ca5e3    # -26.419f

    const v6, -0x41ab020c    # -0.208f

    const v7, -0x3dae851f    # -52.37f

    const v8, -0x400e353f    # -1.889f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 812
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e05624e    # -31.327f

    const v4, -0x3ff5e354    # -2.158f

    const v5, -0x3d7d3852    # -65.39f

    const v6, -0x3eb2e148    # -12.82f

    const v7, -0x3d600bc7

    const v8, -0x3e63d70a    # -19.52f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 813
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f403958    # -5.993f

    const v4, -0x3f7e147b    # -4.06f

    const v5, -0x3eac7efa    # -13.219f

    const v6, -0x3f320419    # -6.437f

    const v7, -0x3e57f9db    # -21.003f

    const v8, -0x3f320419    # -6.437f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 814
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 815
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 816
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e95810    # 7.292f

    const/4 v4, 0x0

    const v5, 0x416178d5    # 14.092f

    const v6, -0x3ffa3d71    # -2.09f

    const v7, 0x419ecccd    # 19.85f

    const v8, -0x3f49f3b6    # -5.689f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 817
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41690625    # 14.564f

    const v4, -0x3f2ef1aa    # -6.533f

    const v5, 0x424329fc    # 48.791f

    const v6, -0x3e7acac1    # -16.651f

    const v7, 0x42a20d50    # 81.026f

    const v8, -0x3e629168    # -19.679f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 818
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41cd1687    # 25.636f

    const v4, -0x3feee979    # -2.267f

    const v5, 0x41c0e354    # 24.111f

    const v6, -0x3ff5b22d    # -2.161f

    const v7, 0x4250ef9e

    const v8, -0x3ff5b22d    # -2.161f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 819
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x413fd2f2    # 11.989f

    const v4, 0x3f56872b    # 0.838f

    const v5, 0x41dc0a3d    # 27.505f

    const v6, 0x3fe5c28f    # 1.795f

    const v7, 0x4204cac1

    const v8, 0x40265604    # 2.599f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 820
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fc9ba5e    # 1.576f

    const v4, 0x3e645a1d    # 0.223f

    const v5, 0x4032f1aa    # 2.796f

    const v6, 0x3f3020c5    # 0.688f

    const v7, 0x406cac08    # 3.698f

    const v8, 0x3f6ccccd    # 0.925f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 821
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3e6978d5    # 0.228f

    const v4, 0x3d75c28f    # 0.06f

    const v5, 0x3eed0e56    # 0.463f

    const v6, 0x3ddd2f1b    # 0.108f

    const v7, 0x3f326e98    # 0.697f

    const v8, 0x3e189375    # 0.149f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 822
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ff374bc    # 1.902f

    const v4, 0x3f5f3b64    # 0.872f

    const v5, 0x408051ec    # 4.01f

    const v6, 0x3faf9db2    # 1.372f

    const v7, 0x40c79db2    # 6.238f

    const v8, 0x3faf9db2    # 1.372f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 823
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4104b021    # 8.293f

    const/4 v4, 0x0

    const v5, 0x41704189    # 15.016f

    const v6, -0x3f28d4fe    # -6.724f

    const v7, 0x41704189    # 15.016f

    const v8, -0x3e8fc28f    # -15.015f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 824
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4417b873

    const v4, 0x446ded2f

    const v5, 0x44160a2d

    const v6, 0x446c3efa

    const v7, 0x4413f76d

    const v8, 0x446c3efa

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 825
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 826
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 827
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 830
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 831
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x441501ba

    const v3, 0x446c4ea8

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 832
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fb374bc    # -3.196f

    const/4 v4, 0x0

    const v5, -0x3f3b53f8    # -6.146f

    const v6, 0x3f8374bc    # 1.027f

    const v7, -0x3ef6f9db    # -8.564f

    const v8, 0x403020c5    # 2.752f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 833
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x411ba5e3    # -0.446f

    const v4, 0x3dc28f5c    # 0.095f

    const v5, -0x4095c28f    # -0.915f

    const v6, 0x3e3b645a    # 0.183f

    const v7, -0x40491687    # -1.429f

    const v8, 0x3e7be76d    # 0.246f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 834
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f26e148    # -6.785f

    const v4, 0x3f553f7d    # 0.833f

    const v5, -0x3e448937    # -23.433f

    const v6, 0x400b851f    # 2.18f

    const v7, -0x3def322d    # -36.201f

    const v8, 0x40274bc7    # 2.614f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 835
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e0f3127    # -30.101f

    const/4 v4, 0x0

    const v5, -0x3e22b439    # -27.662f

    const v6, -0x417ced91    # -0.256f

    const v7, -0x3daaae14    # -53.33f

    const v8, -0x3ff6d917    # -2.143f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 836
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e05f3b6    # -31.256f

    const v4, -0x3fe52f1b    # -2.419f

    const v5, -0x3d7c5fbe

    const v6, -0x3eb147ae    # -12.92f

    const v7, -0x3d5efb64

    const v8, -0x3e623d71    # -19.72f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 837
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f3fced9    # -6.006f

    const v4, -0x3f7d374c    # -4.087f

    const v5, -0x3eabe354    # -13.257f

    const v6, -0x3f30ac08    # -6.479f

    const v7, -0x3e5772b0    # -21.069f

    const v8, -0x3f30ac08    # -6.479f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 838
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 839
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 840
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40ea1cac    # 7.316f

    const/4 v4, 0x0

    const v5, 0x4162353f    # 14.138f

    const v6, -0x3ff95810    # -2.104f

    const v7, 0x419f4396    # 19.908f

    const v8, -0x3f48bc6a    # -5.727f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 841
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x416b7cee    # 14.718f

    const v4, -0x3f29999a    # -6.7f

    const v5, 0x42458106    # 49.376f

    const v6, -0x3e7a47ae    # -16.715f

    const v7, 0x42a3428f    # 81.63f

    const v8, -0x3e5ff5c3    # -20.005f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 842
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41ca8937    # 25.317f

    const v4, -0x3fe33333    # -2.45f

    const v5, 0x41b9df3b    # 23.234f

    const v6, -0x3feaf1aa    # -2.329f

    const v7, 0x42549fbe

    const v8, -0x3feaf1aa    # -2.329f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 843
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x414f8937    # 12.971f

    const v4, 0x3f326e98    # 0.697f

    const v5, 0x41f047ae    # 30.035f

    const v6, 0x3fe9db23    # 1.827f

    const v7, 0x4210e666

    const v8, 0x402ba5e3    # 2.682f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 844
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f8a9fbe    # 1.083f

    const v4, 0x3e19999a    # 0.15f

    const v5, 0x3fff5c29    # 1.995f

    const v6, 0x3ecfdf3b    # 0.406f

    const v7, 0x4031db23    # 2.779f

    const v8, 0x3f249ba6    # 0.643f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 845
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x400b851f    # 2.18f

    const v4, 0x3fa24dd3    # 1.268f

    const v5, 0x4096872b    # 4.704f

    const v6, 0x400072b0    # 2.007f

    const v7, 0x40ecf5c3    # 7.405f

    const v8, 0x400072b0    # 2.007f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 846
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41028312    # 8.157f

    const/4 v4, 0x0

    const v5, 0x416c5604    # 14.771f

    const v6, -0x3f2c624e    # -6.613f

    const v7, 0x416c5604    # 14.771f

    const v8, -0x3e93a9fc    # -14.771f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 847
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4418b312

    const v4, 0x446df5d3

    const v5, 0x44170bd7

    const v6, 0x446c4ea8

    const v7, 0x441501ba

    const v8, 0x446c4ea8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 848
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 849
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 850
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 853
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 854
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4416622d

    const v3, 0x446c5e56    # 945.474f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 855
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fb83127    # -3.122f

    const/4 v4, 0x0

    const v5, -0x3f3fdf3b    # -6.004f

    const v6, 0x3f7ef9db    # 0.996f

    const v7, -0x3efa0c4a    # -8.372f

    const v8, 0x402ae148    # 2.67f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 856
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40c49ba6    # -0.732f

    const v4, 0x3e408312    # 0.188f

    const v5, -0x40376c8b    # -1.567f

    const v6, 0x3ebf7cee    # 0.374f

    const v7, -0x3fdf7cee    # -2.508f

    const v8, 0x3ef95810    # 0.487f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 857
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f14ac08    # -7.354f

    const v4, 0x3f628f5c    # 0.885f

    const v5, -0x3e33d4fe    # -25.521f

    const v6, 0x40172b02    # 2.362f

    const v7, -0x3de2f2b0    # -39.263f

    const v8, 0x402d6042    # 2.709f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 858
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e0128f6    # -31.855f

    const/4 v4, 0x0

    const v5, -0x3e18c49c    # -28.904f

    const v6, -0x41645a1d    # -0.304f

    const v7, -0x3da6d810

    const v8, -0x3fe6a7f0    # -2.396f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 859
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e06872b    # -31.184f

    const v4, -0x3fd47ae1    # -2.68f

    const v5, -0x3d7b8ac1

    const v6, -0x3eafb22d    # -13.019f

    const v7, -0x3d5dec8b

    const v8, -0x3e60a9fc    # -19.917f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 860
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f3f645a    # -6.019f

    const v4, -0x3f7c49ba    # -4.116f

    const v5, -0x3eab3b64    # -13.298f

    const v6, -0x3f2f2b02    # -6.526f

    const v7, -0x3e56e148    # -21.14f

    const v8, -0x3f2f2b02    # -6.526f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 861
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 862
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 863
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40eaf9db    # 7.343f

    const/4 v4, 0x0

    const v5, 0x4163020c    # 14.188f

    const v6, -0x3ff8624e    # -2.119f

    const v7, 0x419fc49c    # 19.971f

    const v8, -0x3f4774bc    # -5.767f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 864
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x416e0419    # 14.876f

    const v4, -0x3f2449ba    # -6.866f

    const v5, 0x4247d604    # 49.959f

    const v6, -0x3e79cac1    # -16.776f

    const v7, 0x42a4753f

    const v8, -0x3e5d6042    # -20.328f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 865
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x41c80000    # 25.0f

    const v4, -0x3fd76c8b    # -2.634f

    const v5, 0x41b2dd2f    # 22.358f

    const v6, -0x3fe020c5    # -2.498f

    const v7, 0x42584fdf    # 54.078f

    const v8, -0x3fe020c5    # -2.498f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 866
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415f3f7d    # 13.953f

    const v4, 0x3f0f1aa0    # 0.559f

    const v5, 0x42024189    # 32.564f

    const v6, 0x3fee147b    # 1.86f

    const/high16 v7, 0x421d0000    # 39.25f

    const v8, 0x40311687    # 2.767f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 867
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fd3d70a    # 1.655f

    const v4, 0x3e656042    # 0.224f

    const v5, 0x403d4fdf    # 2.958f

    const v6, 0x3f2f5c29    # 0.685f

    const v7, 0x407ea7f0    # 3.979f

    const v8, 0x3f7b645a    # 0.982f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 868
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4006872b    # 2.102f

    const v4, 0x3f976c8b    # 1.183f

    const v5, 0x4090ac08    # 4.521f

    const v6, 0x3fef3b64    # 1.869f

    const v7, 0x40e353f8    # 7.104f

    const v8, 0x3fef3b64    # 1.869f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 869
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41005604    # 8.021f

    const/4 v4, 0x0

    const v5, 0x41686666    # 14.525f

    const v6, -0x3f2fdf3b    # -6.504f

    const v7, 0x41686666    # 14.525f

    const v8, -0x3e97999a    # -14.525f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 870
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x441a03d7    # 616.06f

    const v4, 0x446dfe87

    const v5, 0x44186396

    const v6, 0x446c5e56    # 945.474f

    const v7, 0x4416622d

    const v8, 0x446c5e56    # 945.474f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 871
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 872
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 873
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 876
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 877
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4417821d

    const v3, 0x446c6e04

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 878
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fafdf3b    # -3.252f

    const/4 v4, 0x0

    const v5, -0x3f3849ba    # -6.241f

    const v6, 0x3f8c49ba    # 1.096f

    const v7, -0x3ef5b646    # -8.643f

    const v8, 0x403b4396    # 2.926f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 879
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40da9fbe    # -0.646f

    const v4, 0x3e1ba5e3    # 0.152f

    const v5, -0x4054bc6a    # -1.338f

    const v6, 0x3e970a3d    # 0.295f

    const v7, -0x3ff89375    # -2.116f

    const v8, 0x3ec624dd    # 0.387f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 880
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f026666    # -7.925f

    const v4, 0x3f7020c5    # 0.938f

    const v5, -0x3e2320c5    # -27.609f

    const v6, 0x4022e148    # 2.545f

    const v7, -0x3dd6b333    # -42.325f

    const v8, 0x40339581    # 2.806f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 881
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3df98f5c    # -33.61f

    const/4 v4, 0x0

    const v5, -0x3e0ed4fe    # -30.146f

    const v6, -0x414b4396    # -0.353f

    const v7, -0x3da30312

    const v8, -0x3fd65604    # -2.651f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 882
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e071cac    # -31.111f

    const v4, -0x3fc3e76d    # -2.939f

    const v5, -0x3d7ab74c

    const v6, -0x3eae1cac    # -13.118f

    const v7, -0x3d5cde35

    const v8, -0x3e5f1687    # -20.114f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 883
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f3ef1aa    # -6.033f

    const v4, -0x3f7b53f8    # -4.146f

    const v5, -0x3eaa9375    # -13.339f

    const v6, -0x3f2da9fc    # -6.573f

    const v7, -0x3e564dd3    # -21.212f

    const v8, -0x3f2da9fc    # -6.573f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 884
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 885
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 886
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x40ec0000    # 7.375f

    const/4 v4, 0x0

    const v5, 0x4163f7cf    # 14.248f

    const v6, -0x3ff72b02    # -2.138f

    const v7, 0x41a06042    # 20.047f

    const v8, -0x3f45f3b6    # -5.814f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 887
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4170ac08    # 15.042f

    const v4, -0x3f1f020c    # -7.031f

    const v5, 0x424a27f0

    const v6, -0x3e795604    # -16.833f

    const v7, 0x42a5a148

    const v8, -0x3e5ad917    # -20.644f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 888
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c574bc    # 24.682f

    const v4, -0x3fcba5e3    # -2.818f

    const v5, 0x41abd917    # 21.481f

    const v6, -0x3fd54fdf    # -2.667f

    const v7, 0x425c0106    # 55.001f

    const v8, -0x3fd54fdf    # -2.667f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 889
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x416ef1aa    # 14.934f

    const v4, 0x3ed6872b    # 0.419f

    const v5, 0x420c6042

    const v6, 0x3ff24dd3    # 1.893f

    const v7, 0x42291893

    const v8, 0x403676c9    # 2.851f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 890
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f9ced91    # 1.226f

    const v4, 0x3e26e979    # 0.163f

    const v5, 0x4010c49c    # 2.262f

    const v6, 0x3ee76c8b    # 0.452f

    const v7, 0x404a1cac    # 3.158f

    const v8, 0x3f395810    # 0.724f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 891
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x400fae14    # 2.245f

    const v4, 0x3fbc6a7f    # 1.472f

    const v5, 0x409dba5e    # 4.929f

    const v6, 0x40153f7d    # 2.332f

    const v7, 0x40fa0419    # 7.813f

    const v8, 0x40153f7d    # 2.332f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 892
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40fc6a7f    # 7.888f

    const/4 v4, 0x0

    const v5, 0x41647efa    # 14.281f

    const v6, -0x3f3353f8    # -6.396f

    const v7, 0x41647efa    # 14.281f

    const v8, -0x3e9b7cee    # -14.282f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 893
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x441b1419

    const v4, 0x446e071b

    const v5, 0x44197af2

    const v6, 0x446c6e04

    const v7, 0x4417821d

    const v8, 0x446c6e04

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 894
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 895
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 896
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 899
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 900
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4418d385

    const v3, 0x446c7da2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 901
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fb1999a    # -3.225f

    const/4 v4, 0x0

    const v5, -0x3f39fbe7    # -6.188f

    const v6, 0x3f8c49ba    # 1.096f

    const v7, -0x3ef70e56    # -8.559f

    const v8, 0x403b126f    # 2.923f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 902
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40a9fbe7    # -0.836f

    const v4, 0x3e5c28f6    # 0.215f

    const v5, -0x401bc6a8    # -1.783f

    const v6, 0x3ed91687    # 0.424f

    const v7, -0x3fc978d5    # -2.852f

    const v8, 0x3f0c8b44    # 0.549f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 903
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ef8147b    # -8.495f

    const v4, 0x3f7d70a4    # 0.99f

    const v5, -0x3e126a7f    # -29.698f

    const v6, 0x402e978d    # 2.728f

    const v7, -0x3dca73b6

    const v8, 0x4039999a    # 2.9f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 904
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3df28a3d

    const/4 v4, 0x0

    const v5, -0x3e04e148    # -31.39f

    const v6, -0x41333333    # -0.4f

    const v7, -0x3d9f2d0e

    const v8, -0x3fc624dd    # -2.904f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 905
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e07a3d7    # -31.045f

    const v4, -0x3fb34396    # -3.199f

    const v5, -0x3d79ddb2

    const v6, -0x3eac76c9    # -13.221f

    const v7, -0x3d5bcb44

    const v8, -0x3e5d7ae1    # -20.315f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 906
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f3e8f5c    # -6.045f

    const v4, -0x3f7a7efa    # -4.172f

    const v5, -0x3eaa0419    # -13.374f

    const v6, -0x3f2c49ba    # -6.616f

    const v7, -0x3e55ced9    # -21.274f

    const v8, -0x3f2c49ba    # -6.616f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 907
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 908
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 909
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40ecfdf4    # 7.406f

    const/4 v4, 0x0

    const v5, 0x4164e148    # 14.305f

    const v6, -0x3ff6147b    # -2.155f

    const v7, 0x41a0f5c3    # 20.12f

    const v8, -0x3f447ae1    # -5.86f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 910
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41734bc7    # 15.206f

    const v4, -0x3f19d2f2    # -7.193f

    const v5, 0x424c79db    # 51.119f

    const v6, -0x3e78dd2f    # -16.892f

    const v7, 0x42a6cf5c

    const v8, -0x3e584fdf    # -20.961f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 911
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c2e560    # 24.362f

    const v4, -0x3fbfef9e    # -3.001f

    const v5, 0x41a4d4fe    # 20.604f

    const v6, -0x3fca8f5c    # -2.835f

    const v7, 0x425fb021    # 55.922f

    const v8, -0x3fca8f5c    # -2.835f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 912
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x417ea7f0    # 15.916f

    const v4, 0x3e8ed917    # 0.279f

    const v5, 0x42167df4

    const v6, 0x3ff6872b    # 1.926f

    const v7, 0x42353333    # 45.3f

    const v8, 0x403bc6a8    # 2.934f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 913
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fc6e979    # 1.554f

    const v4, 0x3e50e560    # 0.204f

    const v5, 0x40360419    # 2.844f

    const v6, 0x3f1ae148    # 0.605f

    const v7, 0x4079fbe7    # 3.906f

    const v8, 0x3f6f5c29    # 0.935f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 914
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x400df3b6    # 2.218f

    const v4, 0x3fbba5e3    # 1.466f

    const v5, 0x409bdf3b    # 4.871f

    const v6, 0x4014cccd    # 2.325f

    const v7, 0x40f74bc7    # 7.728f

    const v8, 0x4014cccd    # 2.325f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 915
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40f81062    # 7.752f

    const/4 v4, 0x0

    const v5, 0x41609375    # 14.036f

    const v6, -0x3f36e148    # -6.285f

    const v7, 0x41609375    # 14.036f

    const v8, -0x3e9f6873    # -14.037f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 916
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x441c55d3

    const v4, 0x446e0fcf

    const v5, 0x441ac3a6

    const v6, 0x446c7da2

    const v7, 0x4418d385

    const v8, 0x446c7da2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 917
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 918
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 919
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 922
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 923
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x441a0800    # 616.125f

    const v3, 0x446c8d50

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 924
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fada1cb    # -3.287f

    const/4 v4, 0x0

    const v5, -0x3f364dd3    # -6.303f

    const v6, 0x3f933333    # 1.15f

    const v7, -0x3ef53f7d    # -8.672f

    const v8, 0x40445a1d    # 3.068f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 925
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40a20c4a    # -0.867f

    const v4, 0x3e624dd3    # 0.221f

    const v5, -0x40145a1d    # -1.841f

    const v6, 0x3ede353f    # 0.434f

    const v7, -0x3fc3f7cf    # -2.938f

    const v8, 0x3f0f5c29    # 0.56f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 926
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3eeef9db    # -9.064f

    const v4, 0x3f858106    # 1.043f

    const v5, -0x3e01b439    # -31.787f

    const v6, 0x403a4dd3    # 2.911f

    const v7, -0x3dbe353f

    const v8, 0x403fdf3b    # 2.998f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 927
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3deb851f    # -37.12f

    const/4 v4, 0x0

    const v5, -0x3dfd78d5    # -32.632f

    const v6, -0x411a1cac    # -0.449f

    const v7, -0x3d9b5604    # -57.166f

    const v8, -0x3fb5d2f2    # -3.159f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 928
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e0820c5    # -30.984f

    const v4, -0x3fa2b021    # -3.458f

    const v5, -0x3d78fdf4

    const v6, -0x3eaab439    # -13.331f

    const v7, -0x3d5ab4bc

    const v8, -0x3e5bd917    # -20.519f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 929
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f3e3d71    # -6.055f

    const v4, -0x3f79c28f    # -4.195f

    const v5, -0x3ea98937    # -13.404f

    const v6, -0x3f2b0a3d    # -6.655f

    const v7, -0x3e555e35    # -21.329f

    const v8, -0x3f2b0a3d    # -6.655f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 930
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 931
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 932
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40edf3b6    # 7.436f

    const/4 v4, 0x0

    const v5, 0x4165c28f    # 14.36f

    const v6, -0x3ff4fdf4    # -2.172f

    const v7, 0x41a18312    # 20.189f

    const v8, -0x3f43126f    # -5.904f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 933
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4175df3b    # 15.367f

    const v4, -0x3f14ac08    # -7.354f

    const v5, 0x424ec7ae    # 51.695f

    const v6, -0x3e78645a    # -16.951f

    const v7, 0x42a7fefa

    const v8, -0x3e55c28f    # -21.28f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 934
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c05c29    # 24.045f

    const v4, -0x3fb41893    # -3.186f

    const v5, 0x419dd2f2    # 19.728f

    const v6, -0x3fbfbe77    # -3.004f

    const v7, 0x42636042

    const v8, -0x3fbfbe77    # -3.004f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 935
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41872d0e    # 16.897f

    const v4, 0x3e0e5604    # 0.139f

    const v5, 0x42209ba6    # 40.152f

    const v6, 0x3ffac083    # 1.959f

    const v7, 0x42414ccd    # 48.325f

    const v8, 0x4041374c    # 3.019f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 936
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fc3126f    # 1.524f

    const v4, 0x3e4ac083    # 0.198f

    const v5, 0x4033126f    # 2.798f

    const v6, 0x3f133333    # 0.575f

    const v7, 0x407820c5    # 3.877f

    const v8, 0x3f68b439    # 0.909f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 937
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x401020c5    # 2.252f

    const v4, 0x3fcccccd    # 1.6f

    const v5, 0x409fd70a    # 4.995f

    const v6, 0x402353f8    # 2.552f

    const v7, 0x40fef9db    # 7.968f

    const v8, 0x402353f8    # 2.552f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 938
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40f3be77    # 7.617f

    const/4 v4, 0x0

    const v5, 0x415ca7f0    # 13.791f

    const v6, -0x3f3a5e35    # -6.176f

    const v7, 0x415ca7f0    # 13.791f

    const v8, -0x3ea353f8    # -13.792f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 939
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x441d7aa0

    const v4, 0x446e1862

    const v5, 0x441bef6d

    const v6, 0x446c8d50

    const v7, 0x441a0800    # 616.125f

    const v8, 0x446c8d50

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 940
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 941
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 942
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 945
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 946
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x441b376d

    const v3, 0x446c9cfe

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 947
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3faa1cac    # -3.342f

    const/4 v4, 0x0

    const v5, -0x3f33645a    # -6.394f

    const v6, 0x3f9c0831    # 1.219f

    const v7, -0x3ef3e354    # -8.757f

    const v8, 0x404e76c9    # 3.226f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 948
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x409ced91    # -0.887f

    const v4, 0x3e6353f8    # 0.222f

    const v5, -0x40110625    # -1.867f

    const v6, 0x3ede353f    # 0.434f

    const v7, -0x3fc1999a    # -2.975f

    const v8, 0x3f0f5c29    # 0.56f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 949
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee5d70a    # -9.635f

    const v4, 0x3f8c28f6    # 1.095f

    const v5, -0x3df88000    # -33.875f

    const v6, 0x4045e354    # 3.092f

    const v7, -0x3db1f5c3    # -51.51f

    const v8, 0x4045e354    # 3.092f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 950
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de48000    # -38.875f

    const/4 v4, 0x0

    const v5, -0x3df88000    # -33.875f

    const v6, -0x41018937    # -0.497f

    const v7, -0x3d978000    # -58.125f

    const v8, -0x3fa59168    # -3.413f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 951
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e089fbe    # -30.922f

    const v4, -0x3f920c4a    # -3.718f

    const v5, -0x3d78224e

    const v6, -0x3ea8fdf4    # -13.438f

    const v7, -0x3d599fbe

    const v8, -0x3e5a3d71    # -20.72f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 952
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f3ddb23    # -6.067f

    const v4, -0x3f78ed91    # -4.221f

    const v5, -0x3ea9020c    # -13.437f

    const v6, -0x3f29a9fc    # -6.698f

    const v7, -0x3e54e560    # -21.388f

    const v8, -0x3f29a9fc    # -6.698f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 953
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 954
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 955
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40ef020c    # 7.469f

    const/4 v4, 0x0

    const v5, 0x4166c49c    # 14.423f

    const v6, -0x3ff3c6a8    # -2.191f

    const v7, 0x41a226e9    # 20.269f

    const v8, -0x3f4170a4    # -5.955f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 956
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4178872b    # 15.533f

    const v4, -0x3f0f9581    # -7.513f

    const v5, 0x4251126f

    const v6, -0x3e77f1aa    # -17.007f

    const v7, 0x42a928f6    # 84.58f

    const v8, -0x3e533f7d    # -21.594f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 957
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41bdd0e5    # 23.727f

    const v4, -0x3fa872b0    # -3.368f

    const v5, 0x4196d0e5    # 18.852f

    const v6, -0x3fb50e56    # -3.171f

    const v7, 0x42671168

    const v8, -0x3fb50e56    # -3.171f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 958
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418f0831    # 17.879f

    const/4 v4, 0x0

    const v5, 0x422aba5e    # 42.682f

    const v6, 0x3ffeb852    # 1.99f

    const v7, 0x424d6666    # 51.35f

    const v8, 0x404676c9    # 3.101f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 959
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fb6e979    # 1.429f

    const v4, 0x3e3c6a7f    # 0.184f

    const v5, 0x4029374c    # 2.644f

    const v6, 0x3f049ba6    # 0.518f

    const v7, 0x406ced91    # 3.702f

    const v8, 0x3f56c8b4    # 0.839f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 960
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40127efa    # 2.289f

    const v4, 0x3fe2b021    # 1.771f

    const v5, 0x40a50625    # 5.157f

    const v6, 0x4034ed91    # 2.827f

    const v7, 0x4104624e    # 8.274f

    const v8, 0x4034ed91    # 2.827f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 961
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40ef645a    # 7.481f

    const/4 v4, 0x0

    const v5, 0x4158c083    # 13.547f

    const v6, -0x3f3de354    # -6.066f

    const v7, 0x4158c083    # 13.547f

    const v8, -0x3ea73f7d    # -13.547f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 962
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x441e9a6f

    const v4, 0x446e2117

    const v5, 0x441d1646

    const v6, 0x446c9cfe

    const v7, 0x441b376d

    const v8, 0x446c9cfe

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 963
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 964
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 965
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 968
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 969
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x441c622d

    const v3, 0x446cac9c

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 970
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3faea7f0    # -3.271f

    const/4 v4, 0x0

    const v5, -0x3f37b646    # -6.259f

    const v6, 0x3f983127    # 1.189f

    const v7, -0x3ef6cccd    # -8.575f

    const v8, 0x40495810    # 3.146f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 971
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x405624dd    # -1.327f

    const v4, 0x3eb33333    # 0.35f

    const v5, -0x3fc5e354    # -2.908f

    const v6, 0x3f374bc7    # 0.716f

    const v7, -0x3f64624e    # -4.863f

    const v8, 0x3f7020c5    # 0.938f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 972
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee5d70a    # -9.635f

    const v4, 0x3f8c28f6    # 1.095f

    const v5, -0x3df1178d

    const v6, 0x40378d50    # 2.868f

    const v7, -0x3daa7cee

    const v8, 0x4036353f    # 2.847f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 973
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de470a4    # -38.89f

    const v4, -0x42c39581    # -0.046f

    const v5, -0x3df048b4    # -35.929f

    const v6, -0x40f0a3d7    # -0.56f

    const v7, -0x3d8f70a4    # -60.14f

    const v8, -0x3fa645a2    # -3.402f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 974
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e077cee    # -31.064f

    const v4, -0x3f96b852    # -3.645f

    const v5, -0x3d797127    # -67.279f

    const v6, -0x3ea0e979    # -13.943f

    const v7, -0x3d5b4a3d

    const v8, -0x3e574396    # -21.092f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 975
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f3e6e98    # -6.049f

    const v4, -0x3f7a24dd    # -4.183f

    const v5, -0x3ea9ced9    # -13.387f

    const v6, -0x3f2bb646    # -6.634f

    const v7, -0x3e559db2    # -21.298f

    const v8, -0x3f2bb646    # -6.634f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 976
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 977
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 978
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40ed6042    # 7.418f

    const/4 v4, 0x0

    const v5, 0x41653f7d    # 14.328f

    const v6, -0x3ff5a1cb    # -2.162f

    const v7, 0x41a12f1b    # 20.148f

    const v8, -0x3f43df3b    # -5.879f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 979
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41741062    # 15.254f

    const v4, -0x3f1753f8    # -7.271f

    const v5, 0x424d24dd    # 51.286f

    const v6, -0x3e73b439    # -17.537f

    const v7, 0x42a78312

    const v8, -0x3e505c29    # -21.955f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 980
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41be645a    # 23.799f

    const v4, -0x3fb0c49c    # -3.238f

    const v5, 0x41a73d71    # 20.905f

    const v6, -0x3fb5d2f2    # -3.159f

    const v7, 0x426f53f8    # 59.832f

    const v8, -0x3fb1db23    # -3.221f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 981
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418ebe77    # 17.843f

    const v4, -0x4322d0e5    # -0.027f

    const v5, 0x42314396

    const v6, 0x3fd83127    # 1.689f

    const v7, 0x4254c083    # 53.188f

    const v8, 0x40360419    # 2.844f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 982
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x401353f8    # 2.302f

    const v4, 0x3e9ba5e3    # 0.304f

    const v5, 0x40834bc7    # 4.103f

    const v6, 0x3f5126e9    # 0.817f

    const v7, 0x40b245a2    # 5.571f

    const v8, 0x3f9f3b64    # 1.244f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 983
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x400fbe77    # 2.246f

    const v4, 0x3fddd2f2    # 1.733f

    const v5, 0x40a1db23    # 5.058f

    const v6, 0x4031374c    # 2.769f

    const v7, 0x4101d2f2    # 8.114f

    const v8, 0x4031374c    # 2.769f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 984
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40eb126f    # 7.346f

    const/4 v4, 0x0

    const v5, 0x4154d0e5    # 13.301f

    const v6, -0x3f416873    # -5.956f

    const v7, 0x4154d0e5    # 13.301f

    const v8, -0x3eab2b02    # -13.302f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 985
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x441fb571

    const v4, 0x446e29ba

    const v5, 0x441e3852    # 632.88f

    const v6, 0x446cac9c

    const v7, 0x441c622d

    const v8, 0x446cac9c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 986
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 987
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 988
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 991
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 992
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x441d719a

    const v3, 0x446cbc4a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 993
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fae147b    # -3.28f

    const/4 v4, 0x0

    const v5, -0x3f3753f8    # -6.271f

    const v6, 0x3f9c6a7f    # 1.222f

    const v7, -0x3ef6fdf4    # -8.563f

    const v8, 0x404e147b    # 3.22f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 994
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x4030c49c    # -1.619f

    const v4, 0x3edba5e3    # 0.429f

    const v5, -0x3f9ba5e3    # -3.568f

    const v6, 0x3f5eb852    # 0.87f

    const v7, -0x3f3b126f    # -6.154f

    const v8, 0x3f94dd2f    # 1.163f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 995
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee5d70a    # -9.635f

    const v4, 0x3f8c28f6    # 1.095f

    const v5, -0x3de9ae14    # -37.58f

    const v6, 0x40291687    # 2.642f

    const v7, -0x3da30312

    const v8, 0x40266666    # 2.6f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 996
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de4624e    # -38.904f

    const v4, -0x42439581    # -0.092f

    const v5, -0x3de8126f

    const v6, -0x40e0c49c    # -0.622f

    const v7, -0x3d87624e    # -62.154f

    const v8, -0x3fa6f9db    # -3.391f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 997
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e064dd3    # -31.212f

    const v4, -0x3f9b645a    # -3.572f

    const v5, -0x3d7abb64

    const v6, -0x3e98b021    # -14.457f

    const v7, -0x3d5cf0a4    # -81.53f

    const v8, -0x3e544189    # -21.468f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 998
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f3f020c    # -6.031f

    const v4, -0x3f7b74bc    # -4.142f

    const v5, -0x3eaaac08    # -13.333f

    const v6, -0x3f2de354    # -6.566f

    const v7, -0x3e56624e    # -21.202f

    const v8, -0x3f2de354    # -6.566f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 999
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1000
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 1001
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40ebbe77    # 7.367f

    const/4 v4, 0x0

    const v5, 0x4163b646    # 14.232f

    const v6, -0x3ff77cee    # -2.133f

    const v7, 0x41a0374c    # 20.027f

    const v8, -0x3f465604    # -5.802f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1002
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x416f9168    # 14.973f

    const v4, -0x3f1f5c29    # -7.02f

    const v5, 0x42493127    # 50.298f

    const v6, -0x3e6f74bc    # -18.068f

    const v7, 0x42a5de35

    const v8, -0x3e4d74bc    # -22.318f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1003
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41bef5c3    # 23.87f

    const v4, -0x3fb926e9    # -3.107f

    const v5, 0x41b7ac08    # 22.959f

    const v6, -0x3fb6a7f0    # -3.146f

    const v7, 0x4277978d

    const v8, -0x3faeb852    # -3.27f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1004
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418e74bc    # 17.807f

    const v4, -0x429eb852    # -0.055f

    const v5, 0x4237cccd    # 45.95f

    const v6, 0x3fb1cac1    # 1.389f

    const v7, 0x425c1893

    const v8, 0x402570a4    # 2.585f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1005
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4037ae14    # 2.87f

    const v4, 0x3ec624dd    # 0.387f

    const v5, 0x40a00831    # 5.001f

    const v6, 0x3f72f1aa    # 0.949f

    const v7, 0x40d7b646    # 6.741f

    const v8, 0x3fb78d50    # 1.434f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1006
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x400fbe77    # 2.246f

    const v4, 0x3fe9db23    # 1.827f

    const v5, 0x40a3645a    # 5.106f

    const v6, 0x403b74bc    # 2.929f

    const v7, 0x4103a1cb    # 8.227f

    const v8, 0x403b74bc    # 2.929f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1007
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e6c8b4    # 7.212f

    const/4 v4, 0x0

    const v5, 0x4150ed91    # 13.058f

    const v6, -0x3f44e560    # -5.847f

    const v7, 0x4150ed91    # 13.058f

    const v8, -0x3eaf126f    # -13.058f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1008
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4420b550

    const v4, 0x446e326f

    const v5, 0x441f3f2b    # 636.987f

    const v6, 0x446cbc4a

    const v7, 0x441d719a

    const v8, 0x446cbc4a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1009
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 1010
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1011
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 1014
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1015
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x441ea158

    const v3, 0x446ccc08

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 1016
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fb3f7cf    # -3.188f

    const/4 v4, 0x0

    const v5, -0x3f3cfdf4    # -6.094f

    const v6, 0x3f9624dd    # 1.173f

    const v7, -0x3efa9fbe    # -8.336f

    const v8, 0x404645a2    # 3.098f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1017
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ffcbc6a    # -2.051f

    const v4, 0x3f147ae1    # 0.58f

    const v5, -0x3f6f9581    # -4.513f

    const v6, 0x3f958106    # 1.168f

    const v7, -0x3efd5810    # -8.166f

    const v8, 0x3fca9fbe    # 1.583f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1018
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee5d70a    # -9.635f

    const v4, 0x3f8c0831    # 1.094f

    const v5, -0x3de245a2    # -39.432f

    const v6, 0x401ab021    # 2.417f

    const v7, -0x3d9b8a3d

    const v8, 0x4016a7f0    # 2.354f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1019
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de452f2

    const v4, -0x41f1a9fc    # -0.139f

    const v5, -0x3ddfdb23    # -40.036f

    const v6, -0x40d0e560    # -0.684f

    const v7, -0x3d7fa979

    const v8, -0x3fa79db2    # -3.381f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1020
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e05020c    # -31.374f

    const/high16 v4, -0x3fa00000    # -3.5f

    const v5, -0x3d7bf9db

    const v6, -0x3e9049ba    # -14.982f

    const v7, -0x3d5e8e56    # -80.722f

    const v8, -0x3e51353f    # -21.849f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1021
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f3fb646    # -6.009f

    const v4, -0x3f7cf5c3    # -4.095f

    const v5, -0x3eabb646    # -13.268f

    const v6, -0x3f304189    # -6.492f

    const v7, -0x3e574bc7    # -21.088f

    const v8, -0x3f304189    # -6.492f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1022
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1023
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 1024
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40ea4dd3    # 7.322f

    const/4 v4, 0x0

    const v5, 0x41625e35    # 14.148f

    const v6, -0x3ff9374c    # -2.106f

    const v7, 0x419f5e35    # 19.921f

    const v8, -0x3f487ae1    # -5.735f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1025
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x416b2f1b    # 14.699f

    const v4, -0x3f27b646    # -6.759f

    const v5, 0x42453333    # 49.3f

    const v6, -0x3e6b4396    # -18.592f

    const v7, 0x42a430a4

    const v8, -0x3e4aa1cb    # -22.671f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1026
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41bf8937    # 23.942f

    const v4, -0x3fc16873    # -2.978f

    const v5, 0x41c81aa0    # 25.013f

    const v6, -0x3fb77cee    # -3.133f

    const v7, 0x427fdc29    # 63.965f

    const v8, -0x3fabb646    # -3.317f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1027
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418e28f6    # 17.77f

    const v4, -0x42560419    # -0.083f

    const v5, 0x423e5604    # 47.584f

    const v6, 0x3f8b020c    # 1.086f

    const v7, 0x426371aa    # 56.861f

    const v8, 0x4014cccd    # 2.325f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1028
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4078a3d7    # 3.885f

    const v4, 0x3f07ef9e    # 0.531f

    const v5, 0x40d08312    # 6.516f

    const v6, 0x3f9d9168    # 1.231f

    const v7, 0x410aa3d7    # 8.665f

    const v8, 0x3fe95810    # 1.823f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1029
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x400d3f7d    # 2.207f

    const v4, 0x3fe6872b    # 1.801f

    const v5, 0x40a09ba6    # 5.019f

    const v6, 0x4038d4fe    # 2.888f

    const v7, 0x41016c8b    # 8.089f

    const v8, 0x4038d4fe    # 2.888f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1030
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e26e98    # 7.076f

    const/4 v4, 0x0

    const v5, 0x414d020c    # 12.813f

    const v6, -0x3f486a7f    # -5.737f

    const v7, 0x414d020c    # 12.813f

    const v8, -0x3eb2fdf4    # -12.813f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1031
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4421d550

    const v4, 0x446e3b12

    const v5, 0x44206625

    const v6, 0x446ccc08

    const v7, 0x441ea158

    const v8, 0x446ccc08

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1032
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 1033
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1034
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 1037
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1038
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x441f976d

    const v3, 0x446cdbb6

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 1039
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fadd2f2    # -3.284f

    const/4 v4, 0x0

    const v5, -0x3f3774bc    # -6.267f

    const v6, 0x3fa22d0e    # 1.267f

    const v7, -0x3ef7eb85    # -8.505f

    const v8, 0x40550e56    # 3.329f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1040
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ff10625    # -2.234f

    const v4, 0x3f1fbe77    # 0.624f

    const v5, -0x3f638d50    # -4.889f

    const v6, 0x3f99374c    # 1.197f

    const v7, -0x3ef1e354    # -8.882f

    const v8, 0x3fd33333    # 1.65f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1041
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee5d70a    # -9.635f

    const v4, 0x3f8c0831    # 1.094f

    const v5, -0x3ddade35    # -41.283f

    const v6, 0x400c3958    # 2.191f

    const v7, -0x3d941168

    const v8, 0x4006d917    # 2.107f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1042
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de44396

    const v4, -0x41c28f5c    # -0.185f

    const v5, -0x3dd7a3d7    # -42.09f

    const v6, -0x40c10625    # -0.746f

    const v7, -0x3d7ba1cb

    const v8, -0x3fa851ec    # -3.37f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1043
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e03bc6a    # -31.533f

    const v4, -0x3fa49ba6    # -3.428f

    const v5, -0x3d7d3f7d    # -65.376f

    const v6, -0x3e87ced9    # -15.512f

    const v7, -0x3d602f1b

    const v8, -0x3e4e2d0e    # -22.228f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1044
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f40624e    # -5.988f

    const v4, -0x3f7e5e35    # -4.051f

    const v5, -0x3eacb021    # -13.207f

    const v6, -0x3f327efa    # -6.422f

    const v7, -0x3e5828f6    # -20.98f

    const v8, -0x3f327efa    # -6.422f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1045
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1046
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 1047
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e8fdf4    # 7.281f

    const/4 v4, 0x0

    const v5, 0x416122d1    # 14.071f

    const v6, -0x3ffab021    # -2.083f

    const v7, 0x419e9581    # 19.823f

    const v8, -0x3f4a76c9    # -5.673f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1048
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4166ed91    # 14.433f

    const v4, -0x3f30624e    # -6.488f

    const v5, 0x4241322d    # 48.299f

    const v6, -0x3e671cac    # -19.111f

    const v7, 0x42a27f7d    # 81.249f

    const v8, -0x3e47d917    # -23.019f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1049
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c01cac    # 24.014f

    const v4, -0x3fc9a9fc    # -2.849f

    const v5, 0x41d8872b    # 27.066f

    const v6, -0x3fb851ec    # -3.12f

    const v7, 0x42840f5c    # 66.03f

    const v8, -0x3fa89375    # -3.366f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1050
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418ddf3b    # 17.734f

    const v4, -0x421cac08    # -0.111f

    const v5, 0x4244e148    # 49.22f

    const v6, 0x3f4872b0    # 0.783f

    const v7, 0x426acbc7

    const v8, 0x40043958    # 2.066f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1051
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x408428f6    # 4.13f

    const v4, 0x3f11eb85    # 0.57f

    const v5, 0x40de6666    # 6.95f

    const v6, 0x3f9d4fdf    # 1.229f

    const v7, 0x41145604    # 9.271f

    const v8, 0x3feccccd    # 1.85f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1052
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x400e45a2    # 2.223f

    const v4, 0x3ffeb852    # 1.99f

    const v5, 0x40a4d4fe    # 5.151f

    const v6, 0x404d6042    # 3.209f

    const v7, 0x4105e76d    # 8.369f

    const v8, 0x404d6042    # 3.209f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1053
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40de147b    # 6.94f

    const/4 v4, 0x0

    const v5, 0x4149126f    # 12.567f

    const v6, -0x3f4be76d    # -5.628f

    const v7, 0x4149126f    # 12.567f

    const v8, -0x3eb6e979    # -12.568f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1054
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4422bbc7

    const v4, 0x446e43b6

    const v5, 0x442153a6

    const v6, 0x446cdbb6

    const v7, 0x441f976d

    const v8, 0x446cdbb6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1055
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 1056
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1057
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 1060
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1061
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4420821d

    const v3, 0x446ceb54

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 1062
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3faa6e98    # -3.337f

    const/4 v4, 0x0

    const v5, -0x3f345a1d    # -6.364f

    const v6, 0x3fa9ba5e    # 1.326f

    const v7, -0x3ef6a7f0    # -8.584f

    const v8, 0x405eb852    # 3.48f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1063
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x42c39581    # -0.046f

    const v4, 0x3d3851ec    # 0.045f

    const v5, -0x424fdf3b    # -0.086f

    const v6, 0x3dc28f5c    # 0.095f

    const v7, -0x41f8d4fe    # -0.132f

    const v8, 0x3e0f5c29    # 0.14f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1064
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fe88312    # -2.367f

    const v4, 0x3f224dd3    # 0.634f

    const v5, -0x3f5a353f    # -5.181f

    const v6, 0x3f972b02    # 1.181f

    const v7, -0x3ee9fbe7    # -9.376f

    const v8, 0x3fd41893    # 1.657f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1065
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee5d2f2    # -9.636f

    const v4, 0x3f8c0831    # 1.094f

    const v5, -0x3dd374bc

    const v6, 0x3ffba5e3    # 1.966f

    const v7, -0x3d8c9687    # -60.853f

    const v8, 0x3fee353f    # 1.861f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1066
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de4353f

    const v4, -0x41947ae1    # -0.23f

    const v5, -0x3dcf6c8b

    const v6, -0x40b126e9    # -0.808f

    const v7, -0x3d779aa0

    const v8, -0x3fa90625    # -3.359f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1067
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e0278d5    # -31.691f

    const v4, -0x3fa947ae    # -3.355f

    const v5, -0x3d7e8ac1

    const v6, -0x3e7fa3d7    # -16.045f

    const v7, -0x3d61d1ec    # -79.09f

    const v8, -0x3e4b2d0e    # -22.603f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1068
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f410625    # -5.968f

    const v4, -0x3f7fbe77    # -4.008f

    const v5, -0x3eada5e3    # -13.147f

    const v6, -0x3f34ac08    # -6.354f

    const v7, -0x3e58fdf4    # -20.876f

    const v8, -0x3f34ac08    # -6.354f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1069
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1070
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 1071
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e7df3b    # 7.246f

    const/4 v4, 0x0

    const v5, 0x41601893    # 14.006f

    const v6, -0x3ffbf7cf    # -2.063f

    const v7, 0x419ded91    # 19.741f

    const v8, -0x3f4c20c5    # -5.621f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1072
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4162d917    # 14.178f

    const v4, -0x3f39374c    # -6.212f

    const v5, 0x423d2c08    # 47.293f

    const v6, -0x3e630419    # -19.623f

    const v7, 0x42a0c5a2

    const v8, -0x3e4524dd    # -23.357f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1073
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c0b021    # 24.086f

    const v4, -0x3fd20c4a    # -2.718f

    const v5, 0x41e8f5c3    # 29.12f

    const v6, -0x3fb9374c    # -3.106f

    const v7, 0x428831aa    # 68.097f

    const v8, -0x3fa570a4    # -3.415f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1074
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418d9375    # 17.697f

    const v4, -0x41f1a9fc    # -0.139f

    const v5, 0x424b6a7f    # 50.854f

    const v6, 0x3ef6c8b4    # 0.482f

    const v7, 0x427224dd    # 60.536f

    const v8, 0x3fe78d50    # 1.809f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1075
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4088ac08    # 4.271f

    const v4, 0x3f1851ec    # 0.595f

    const v5, 0x40e79db2    # 7.238f

    const v6, 0x3f9b645a    # 1.214f

    const v7, 0x411b0a3d    # 9.69f

    const v8, 0x3feb22d1    # 1.837f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1076
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3d851eb8    # 0.065f

    const v4, 0x3d810625    # 0.063f

    const v5, 0x3df9db23    # 0.122f

    const v6, 0x3e0a3d71    # 0.135f

    const v7, 0x3e408312    # 0.188f

    const v8, 0x3e49ba5e    # 0.197f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1077
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x400d4fdf    # 2.208f

    const v4, 0x4005d2f2    # 2.091f

    const v5, 0x40a60c4a    # 5.189f

    const v6, 0x4057df3b    # 3.373f

    const v7, 0x4107851f    # 8.47f

    const v8, 0x4057df3b    # 3.373f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1078
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40d9cac1    # 6.806f

    const/4 v4, 0x0

    const v5, 0x41452b02    # 12.323f

    const v6, -0x3f4f6c8b    # -5.518f

    const v7, 0x41452b02    # 12.323f

    const v8, -0x3ebad4fe    # -12.323f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1079
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x442396c9

    const v4, 0x446e4c4a

    const v5, 0x442235b2

    const v6, 0x446ceb54

    const v7, 0x4420821d

    const v8, 0x446ceb54

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1080
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 1081
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1082
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 1085
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1086
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4421a22d

    const v3, 0x446cfb02

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 1087
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3faea7f0    # -3.271f

    const/4 v4, 0x0

    const v5, -0x3f38624e    # -6.238f

    const v6, 0x3fa66666    # 1.3f

    const v7, -0x3ef96042    # -8.414f

    const v8, 0x405a5e35    # 3.412f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1088
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x428e5604    # -0.059f

    const v4, 0x3d6978d5    # 0.057f

    const v5, -0x4220c49c    # -0.109f

    const v6, 0x3df5c28f    # 0.12f

    const v7, -0x41d4fdf4    # -0.167f

    const v8, 0x3e353f7d    # 0.177f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1089
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3fd00000    # -2.75f

    const v4, 0x3f4978d5    # 0.787f

    const v5, -0x3f41ba5e    # -5.946f

    const v6, 0x3fb43958    # 1.408f

    const v7, -0x3ecf2f1b    # -11.051f

    const v8, 0x3ffe5604    # 1.987f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1090
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee5d70a    # -9.635f

    const v4, 0x3f8be76d    # 1.093f

    const v5, -0x3dcc0c4a

    const v6, 0x3fded917    # 1.741f

    const v7, -0x3d851db2    # -62.721f

    const v8, 0x3fceb852    # 1.615f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1091
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de425e3

    const v4, -0x41722d0e    # -0.277f

    const v5, -0x3dc73646

    const v6, -0x40a147ae    # -0.87f

    const v7, -0x3d7392f2

    const v8, -0x3fa9a9fc    # -3.349f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1092
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e013f7d    # -31.844f

    const v4, -0x3fadf3b6    # -3.282f

    const v5, -0x3d7fddb2

    const v6, -0x3e7b5c29    # -16.58f

    const v7, -0x3d6378d5    # -78.264f

    const v8, -0x3e48374c    # -22.973f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1093
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f41a1cb    # -5.949f

    const v4, -0x3f81fbe7    # -3.969f

    const v5, -0x3eae872b    # -13.092f

    const v6, -0x3f36b021    # -6.291f

    const v7, -0x3e59c083    # -20.781f

    const v8, -0x3f36b021    # -6.291f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1094
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1095
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 1096
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e6e148    # 7.215f

    const/4 v4, 0x0

    const v5, 0x415f3333    # 13.95f

    const v6, -0x3ffd1eb8    # -2.045f

    const v7, 0x419d5a1d    # 19.669f

    const v8, -0x3f4d9168    # -5.576f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1097
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415ee148    # 13.93f

    const v4, -0x3f423d71    # -5.93f

    const v5, 0x423921cb    # 46.283f

    const v6, -0x3e5ef5c3    # -20.13f

    const v7, 0x429f072b    # 79.514f

    const v8, -0x3e427efa    # -23.688f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1098
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c14189    # 24.157f

    const v4, -0x3fda6e98    # -2.587f

    const v5, 0x41f9645a    # 31.174f

    const v6, -0x3fb9fbe7    # -3.094f

    const v7, 0x428c5375

    const v8, -0x3fa25e35    # -3.463f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1099
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418d49ba    # 17.661f

    const v4, -0x41d60419    # -0.166f

    const v5, 0x4251f2b0    # 52.487f

    const v6, 0x3e3851ec    # 0.18f

    const v7, 0x42797df4

    const v8, 0x3fc645a2    # 1.549f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1100
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40a3020c    # 5.094f

    const v4, 0x3f36c8b4    # 0.714f

    const v5, 0x41077cee    # 8.468f

    const v6, 0x3fb2d0e5    # 1.397f

    const v7, 0x41346666    # 11.275f

    const v8, 0x4007ced9    # 2.122f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1101
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3dd70a3d    # 0.105f

    const v4, 0x3ddd2f1b    # 0.108f

    const v5, 0x3e4ed917    # 0.202f

    const v6, 0x3e666666    # 0.225f

    const v7, 0x3ea04189    # 0.313f

    const v8, 0x3ea872b0    # 0.329f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1102
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x400a7efa    # 2.164f

    const v4, 0x400322d1    # 2.049f

    const v5, 0x40a2c083    # 5.086f

    const v6, 0x40539581    # 3.306f

    const v7, 0x4104d917    # 8.303f

    const v8, 0x40539581    # 3.306f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1103
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40d570a4    # 6.67f

    const/4 v4, 0x0

    const v5, 0x41413b64    # 12.077f

    const v6, -0x3f52f1aa    # -5.408f

    const v7, 0x41413b64    # 12.077f

    const v8, -0x3ebec083    # -12.078f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1104
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4424a71b

    const v4, 0x446e550e

    const v5, 0x44234d0e

    const v6, 0x446cfb02

    const v7, 0x4421a22d

    const v8, 0x446cfb02

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1105
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 1106
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1107
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 1110
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1111
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4423021d

    const v3, 0x446d0aa0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 1112
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fbbc6a8    # -3.066f

    const/4 v4, 0x0

    const v5, -0x3f44b439    # -5.853f

    const v6, 0x3f966666    # 1.175f

    const v7, -0x3f0170a4    # -7.955f

    const v8, 0x4045b22d    # 3.089f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1113
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x41958106    # -0.229f

    const v4, 0x3d8b4396    # 0.068f

    const v5, -0x4110624e    # -0.468f

    const v6, 0x3e0624dd    # 0.131f

    const v7, -0x40cf9db2    # -0.689f

    const v8, 0x3e4ed917    # 0.202f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1114
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fa872b0    # -3.368f

    const v4, 0x3f8cac08    # 1.099f

    const v5, -0x3f20cccd    # -6.975f

    const v6, 0x3feb851f    # 1.84f

    const v7, -0x3ea7999a    # -13.525f

    const v8, 0x40254fdf    # 2.583f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1115
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee5d70a    # -9.635f

    const v4, 0x3f8be76d    # 1.093f

    const v5, -0x3dc4a3d7    # -46.84f

    const v6, 0x3fc20c4a    # 1.516f

    const v7, -0x3d7ed26f

    const v8, 0x3faf3b64    # 1.369f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1116
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de41687    # -38.978f

    const v4, -0x415a9fbe    # -0.323f

    const v5, -0x3dbefefa    # -48.251f

    const v6, -0x40916873    # -0.932f

    const v7, -0x3d6f8b44

    const v8, -0x3faa5e35    # -3.338f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1117
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e00020c    # -31.999f

    const v4, -0x3fb2b021    # -3.208f

    const v5, -0x3d826873

    const v6, -0x3e770c4a    # -17.119f

    const v7, -0x3d652042

    const v8, -0x3e454396    # -23.342f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1118
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f42353f    # -5.931f

    const v4, -0x3f846a7f    # -3.931f

    const v5, -0x3eaf645a    # -13.038f

    const v6, -0x3f38ac08    # -6.229f

    const v7, -0x3e5a8312    # -20.686f

    const v8, -0x3f38ac08    # -6.229f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1119
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1120
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 1121
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e60419    # 7.188f

    const/4 v4, 0x0

    const v5, 0x415e624e    # 13.899f

    const v6, -0x3ffe353f    # -2.028f

    const v7, 0x419cd4fe    # 19.604f

    const v8, -0x3f4ee148    # -5.535f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1122
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415b020c    # 13.688f

    const v4, -0x3f4b6c8b    # -5.643f

    const v5, 0x4235147b    # 45.27f

    const v6, -0x3e5aef9e    # -20.633f

    const v7, 0x429d45a2

    const v8, -0x3e3fdf3b    # -24.016f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1123
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c1d4fe    # 24.229f

    const v4, -0x3fe2b021    # -2.458f

    const v5, 0x4204e873

    const v6, -0x3fbad0e5    # -3.081f

    const v7, 0x429074bc

    const v8, -0x3f9f2b02    # -3.513f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1124
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x418d0000    # 17.625f

    const v4, -0x41ba5e35    # -0.193f

    const v5, 0x42587cee

    const v6, -0x42083127    # -0.121f

    const v7, 0x42806c08

    const v8, 0x3fa53f7d    # 1.291f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1125
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40d276c9    # 6.577f

    const v4, 0x3f6d0e56    # 0.926f

    const v5, 0x4127ced9    # 10.488f

    const v6, 0x3fdd70a4    # 1.73f

    const v7, 0x415e0831    # 13.877f

    const v8, 0x402bd70a    # 2.685f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1126
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3de147ae    # 0.11f

    const v4, 0x3cfdf3b6    # 0.031f

    const v5, 0x3e6a7efa    # 0.229f

    const v6, 0x3d8b4396    # 0.068f

    const v7, 0x3eb126e9    # 0.346f

    const v8, 0x3dd4fdf4    # 0.104f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1127
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3cd4fdf4    # 0.026f

    const v4, 0x3ccccccd    # 0.025f

    const v5, 0x3d48b439    # 0.049f

    const v6, 0x3d5d2f1b    # 0.054f

    const v7, 0x3d99999a    # 0.075f

    const v8, 0x3da1cac1    # 0.079f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1128
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4007be77    # 2.121f

    const v4, 0x400072b0    # 2.007f

    const v5, 0x409f6c8b    # 4.982f

    const v6, 0x404f3b64    # 3.238f

    const v7, 0x410220c5    # 8.133f

    const v8, 0x404f3b64    # 3.238f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1129
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40d126e9    # 6.536f

    const/4 v4, 0x0

    const v5, 0x413d5810    # 11.834f

    const v6, -0x3f5676c9    # -5.298f

    const v7, 0x413d5810    # 11.834f

    const v8, -0x3ec2ac08    # -11.833f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1130
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4425f77d

    const v4, 0x446e5db2

    const v5, 0x4424a46a

    const v6, 0x446d0aa0

    const v7, 0x4423021d

    const v8, 0x446d0aa0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1131
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 1132
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1133
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 1136
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1137
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4424177d

    const v3, 0x446d1a4e

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 1138
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fbdb22d    # -3.036f

    const/4 v4, 0x0

    const v5, -0x3f469fbe    # -5.793f

    const v6, 0x3f9645a2    # 1.174f

    const v7, -0x3f048b44    # -7.858f

    const v8, 0x40456042    # 3.084f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1139
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x414ac083    # -0.354f

    const v4, 0x3dd4fdf4    # 0.104f

    const v5, -0x40ca7efa    # -0.709f

    const v6, 0x3e560419    # 0.209f

    const v7, -0x407a3d71    # -1.045f

    const v8, 0x3ea3d70a    # 0.32f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1140
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f965604    # -3.651f

    const v4, 0x3f9a9fbe    # 1.208f

    const v5, -0x3f0ff7cf    # -7.501f

    const v6, 0x3ffa9fbe    # 1.958f

    const v7, -0x3e95c6a8    # -14.639f

    const v8, 0x403126e9    # 2.768f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1141
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee5d2f2    # -9.636f

    const v4, 0x3f8be76d    # 1.093f

    const v5, -0x3dbd3b64

    const v6, 0x3fa53f7d    # 1.291f

    const v7, -0x3d7b1581    # -66.458f

    const v8, 0x3f8fbe77    # 1.123f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1142
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de40831    # -38.992f

    const v4, -0x4143126f    # -0.369f

    const v5, -0x3db6c7ae    # -50.305f

    const v6, -0x40818937    # -0.994f

    const v7, -0x3d6b8419

    const v8, -0x3fab126f    # -3.327f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1143
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dff676d

    const v4, -0x3fb77cee    # -3.133f

    const v5, -0x3d8523d7    # -62.715f

    const v6, -0x3e72ba5e    # -17.659f

    const v7, -0x3d66cac1

    const v8, -0x3e425810    # -23.707f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1144
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f42c8b4    # -5.913f

    const v4, -0x3f86b852    # -3.895f

    const v5, -0x3eb0353f    # -12.987f

    const v6, -0x3f3a872b    # -6.171f

    const v7, -0x3e5b3958    # -20.597f

    const v8, -0x3f3a872b    # -6.171f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1145
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1146
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 1147
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e547ae    # 7.165f

    const/4 v4, 0x0

    const v5, 0x415db22d    # 13.856f

    const v6, -0x3fff0a3d    # -2.015f

    const v7, 0x419c6666    # 19.55f

    const v8, -0x3f4ff7cf    # -5.501f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1148
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41573f7d    # 13.453f

    const v4, -0x3f54ac08    # -5.354f

    const v5, 0x42310312

    const v6, -0x3e56f1aa    # -21.132f

    const v7, 0x429b7d71

    const v8, -0x3e3d4bc7    # -24.338f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1149
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c26873    # 24.301f

    const v4, -0x3feb22d1    # -2.326f

    const v5, 0x420d1fbe

    const v6, -0x3fbbc6a8    # -3.066f

    const v7, 0x4294970a

    const v8, -0x3f9c3958    # -3.559f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1150
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418cb646    # 17.589f

    const v4, -0x419ba5e3    # -0.223f

    const v5, 0x425f0625    # 55.756f

    const v6, -0x4126e979    # -0.424f

    const v7, 0x42841893

    const v8, 0x3f83f7cf    # 1.031f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1151
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e58106    # 7.172f

    const v4, 0x3f81cac1    # 1.014f

    const v5, 0x41360419    # 11.376f

    const v6, 0x3fe9ba5e    # 1.826f

    const v7, 0x4170d0e5    # 15.051f

    const v8, 0x40373b64    # 2.863f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1152
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3e353f7d    # 0.177f

    const v4, 0x3d4ccccd    # 0.05f

    const v5, 0x3eb9db23    # 0.363f

    const v6, 0x3ddf3b64    # 0.109f

    const v7, 0x3f0dd2f2    # 0.554f

    const v8, 0x3e2f1aa0    # 0.171f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1153
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3da5e354    # 0.081f

    const v4, 0x3da5e354    # 0.081f

    const v5, 0x3e1cac08    # 0.153f

    const v6, 0x3e2e147b    # 0.17f

    const v7, 0x3e71a9fc    # 0.236f

    const v8, 0x3e7df3b6    # 0.248f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1154
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4004dd2f    # 2.076f

    const v4, 0x3ffba5e3    # 1.966f

    const v5, 0x409c20c5    # 4.879f

    const v6, 0x404b020c    # 3.172f

    const v7, 0x40fee148    # 7.965f

    const v8, 0x404b020c    # 3.172f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1155
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40ccc49c    # 6.399f

    const/4 v4, 0x0

    const v5, 0x41396873    # 11.588f

    const v6, -0x3f59fbe7    # -5.188f

    const v7, 0x41396873    # 11.588f

    const v8, -0x3ec6978d    # -11.588f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1156
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4426fd1f

    const v4, 0x446e6656    # 953.599f

    const v5, 0x4425b117

    const v6, 0x446d1a4e

    const v7, 0x4424177d

    const v8, 0x446d1a4e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1157
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 1158
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1159
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 1162
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1163
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4425b560

    const v3, 0x446d29fc

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 1164
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fce872b    # -2.773f

    const/4 v4, 0x0

    const v5, -0x3f561cac    # -5.309f

    const v6, 0x3f804189    # 1.002f

    const v7, -0x3f17126f    # -7.279f

    const v8, 0x4029db23    # 2.654f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1165
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40f81062    # -0.531f

    const v4, 0x3e158106    # 0.146f

    const v5, -0x4079fbe7    # -1.047f

    const v6, 0x3e9cac08    # 0.306f

    const v7, -0x403978d5    # -1.551f

    const v8, 0x3ef126e9    # 0.471f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1166
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f956042    # -3.666f

    const v4, 0x3f98b439    # 1.193f

    const v5, -0x3f17f7cf    # -7.251f

    const v6, 0x40016873    # 2.022f

    const v7, -0x3e9d3b64    # -14.173f

    const v8, 0x403c49ba    # 2.942f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1167
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee4c8b4    # -9.701f

    const v4, 0x3fb60419    # 1.422f

    const v5, -0x3db89eb8

    const v6, 0x3fb8d4fe    # 1.444f

    const v7, -0x3d78c8b4

    const v8, 0x3fb20c4a    # 1.391f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1168
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de4072b    # -38.993f

    const v4, -0x4210624e    # -0.117f

    const v5, -0x3d9851ec    # -57.92f

    const v6, -0x40c6e979    # -0.723f

    const v7, -0x3d5c23d7    # -81.93f

    const v8, -0x3fb0d4fe    # -3.237f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1169
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dfe6d91

    const v4, -0x3fa6872b    # -3.398f

    const v5, -0x3d8c0625    # -60.994f

    const v6, -0x3e6f1893    # -18.113f

    const v7, -0x3d6a8396

    const v8, -0x3e3e7efa    # -24.188f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1170
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f42978d    # -5.919f

    const v4, -0x3f85f3b6    # -3.907f

    const v5, -0x3eaff3b6    # -13.003f

    const v6, -0x3f39eb85    # -6.19f

    const v7, -0x3e5afdf4    # -20.626f

    const v8, -0x3f39eb85    # -6.19f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1171
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1172
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 1173
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e56873    # 7.169f

    const/4 v4, 0x0

    const v5, 0x415dd70a    # 13.865f

    const v6, -0x3ffed917    # -2.018f

    const v7, 0x419c7ae1    # 19.56f

    const v8, -0x3f4fc6a8    # -5.507f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1174
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41560c4a    # 13.378f

    const v4, -0x3f53e76d    # -5.378f

    const v5, 0x4229020c

    const v6, -0x3e539168    # -21.554f

    const v7, 0x4297aa7f    # 75.833f

    const v8, -0x3e38ef9e    # -24.883f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1175
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c2d0e5    # 24.352f

    const v4, -0x3fdc9ba6    # -2.553f

    const v5, 0x422bea7f    # 42.979f

    const v6, -0x3fb47ae1    # -3.18f

    const v7, 0x42a4020c

    const v8, -0x3fa820c5    # -3.373f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1176
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418cb22d    # 17.587f

    const v4, -0x4247ae14    # -0.09f

    const v5, 0x4263e24e    # 56.971f

    const v6, -0x411e353f    # -0.441f

    const v7, 0x42868625

    const v8, 0x3fa3b646    # 1.279f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1177
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e43127    # 7.131f

    const v4, 0x3f96c8b4    # 1.178f

    const v5, 0x412ec8b4    # 10.924f

    const v6, 0x3ffc0831    # 1.969f

    const v7, 0x4168b852    # 14.545f

    const v8, 0x4043a5e3    # 3.057f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1178
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3eb8d4fe    # 0.361f

    const v4, 0x3ddf3b64    # 0.109f

    const/high16 v5, 0x3f400000    # 0.75f

    const v6, 0x3e77ced9    # 0.242f

    const v7, 0x3f943958    # 1.158f

    const v8, 0x3ec3126f    # 0.381f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1179
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x400051ec    # 2.005f

    const v4, 0x3fe58106    # 1.793f

    const v5, 0x4094ac08    # 4.646f

    const v6, 0x4038f5c3    # 2.89f

    const v7, 0x40f18937    # 7.548f

    const v8, 0x4038f5c3    # 2.89f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1180
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40c87ae1    # 6.265f

    const/4 v4, 0x0

    const v5, 0x41358106    # 11.344f

    const v6, -0x3f5d78d5    # -5.079f

    const v7, 0x41358106    # 11.344f

    const v8, -0x3eca7efa    # -11.344f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1181
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->S:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x44274656    # 669.099f

    const v4, 0x446d29fc

    const v5, 0x4425b560

    const v6, 0x446d29fc

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 1182
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 1183
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1184
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 1187
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1188
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44270ccd    # 668.2f

    const v3, 0x446d39aa    # 948.901f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 1189
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fcf1aa0    # -2.764f

    const/4 v4, 0x0

    const v5, -0x3f56e979    # -5.284f

    const v6, 0x3f824dd3    # 1.018f

    const v7, -0x3f18bc6a    # -7.227f

    const v8, 0x402c1893    # 2.689f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1190
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x41d60419    # -0.166f

    const v4, 0x3d54fdf4    # 0.052f

    const v5, -0x41558106    # -0.333f

    const v6, 0x3dd4fdf4    # 0.104f

    const v7, -0x41010625    # -0.498f

    const v8, 0x3e20c49c    # 0.157f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1191
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f947ae1    # -3.68f

    const v4, 0x3f96e979    # 1.179f

    const v5, -0x3f1fef9e    # -7.002f

    const v6, 0x40058106    # 2.086f

    const v7, -0x3ea49ba6    # -13.712f

    const v8, 0x40474bc7    # 3.114f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1192
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee3c28f    # -9.765f

    const v4, 0x3fdfbe77    # 1.748f

    const v5, -0x3db41168

    const v6, 0x3fcc6a7f    # 1.597f

    const v7, -0x3d76820c

    const v8, 0x3fd41893    # 1.657f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1193
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de4051f

    const v4, 0x3e083127    # 0.133f

    const v5, -0x3d7d1604    # -65.457f

    const v6, -0x41178d50    # -0.454f

    const v7, -0x3d4cec08

    const v8, -0x3fb6978d    # -3.147f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1194
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dfd7cee

    const v4, -0x3f95b22d    # -3.661f

    const v5, -0x3d92d4fe    # -59.292f

    const v6, -0x3e6b872b    # -18.559f

    const v7, -0x3d6e34bc

    const v8, -0x3e3ab439    # -24.662f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1195
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f426666    # -5.925f

    const v4, -0x3f852f1b    # -3.919f

    const v5, -0x3eafa9fc    # -13.021f

    const v6, -0x3f3947ae    # -6.21f

    const v7, -0x3e5abe77    # -20.657f

    const v8, -0x3f3947ae    # -6.21f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1196
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1197
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 1198
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e58937    # 7.173f

    const/4 v4, 0x0

    const v5, 0x415df7cf    # 13.873f

    const v6, -0x3ffeb852    # -2.02f

    const v7, 0x419c8f5c    # 19.57f

    const v8, -0x3f4f8d50    # -5.514f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1199
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4154d917    # 13.303f

    const v4, -0x3f533333    # -5.4f

    const v5, 0x42211581    # 40.271f

    const v6, -0x3e503b64    # -21.971f

    const v7, 0x4293e1cb

    const v8, -0x3e34a1cb    # -25.421f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1200
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c3374c    # 24.402f

    const v4, -0x3fce45a2    # -2.777f

    const v5, 0x424a6354    # 50.597f

    const v6, -0x3fad8106    # -3.289f

    const v7, 0x42b3449c

    const v8, -0x3fb3c6a8    # -3.191f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1201
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418cae14    # 17.585f

    const v4, 0x3d3851ec    # 0.045f

    const v5, 0x4268b127    # 58.173f

    const v6, -0x41170a3d    # -0.455f

    const v7, 0x4288ed0e

    const v8, 0x3fc33333    # 1.525f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1202
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e2d917    # 7.089f

    const v4, 0x3fabc6a8    # 1.342f

    const v5, 0x41279db2    # 10.476f

    const v6, 0x4006f9db    # 2.109f

    const v7, 0x4160b439    # 14.044f

    const v8, 0x404fdf3b    # 3.248f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1203
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3d4ccccd    # 0.05f

    const v4, 0x3c8b4396    # 0.017f

    const v5, 0x3dd4fdf4    # 0.104f

    const v6, 0x3d0f5c29    # 0.035f

    const v7, 0x3e1db22d    # 0.154f

    const v8, 0x3d54fdf4    # 0.052f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1204
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ffc8b44    # 1.973f

    const v4, 0x3fe624dd    # 1.798f

    const v5, 0x4092e979    # 4.591f

    const v6, 0x40398937    # 2.899f

    const v7, 0x40ef0a3d    # 7.47f

    const v8, 0x40398937    # 2.899f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1205
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40c428f6    # 6.13f

    const/4 v4, 0x0

    const v5, 0x41319581    # 11.099f

    const v6, -0x3f60fdf4    # -4.969f

    const v7, 0x41319581    # 11.099f

    const v8, -0x3ece6a7f    # -11.099f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1206
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->S:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4428951f

    const v4, 0x446d39aa    # 948.901f

    const v5, 0x44270ccd    # 668.2f

    const v6, 0x446d39aa    # 948.901f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 1207
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 1208
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1209
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 1212
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1213
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44288958

    const v3, 0x446d4958

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 1214
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fda0c4a    # -2.593f

    const/4 v4, 0x0

    const v5, -0x3f60dd2f    # -4.973f

    const v6, 0x3f69374c    # 0.911f

    const v7, -0x3f2526e9    # -6.839f

    const v8, 0x401b74bc    # 2.429f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1215
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x41e76c8b    # -0.149f

    const v4, 0x3d3c6a7f    # 0.046f

    const v5, -0x4166e979    # -0.299f

    const v6, 0x3dbc6a7f    # 0.092f

    const v7, -0x411a1cac    # -0.449f

    const v8, 0x3e0f5c29    # 0.14f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1216
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f939581    # -3.694f

    const v4, 0x3f951eb8    # 1.165f

    const v5, -0x3f27c6a8    # -6.757f

    const v6, 0x40098937    # 2.149f

    const v7, -0x3eabe354    # -13.257f

    const v8, 0x40522d0e    # 3.284f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1217
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee2bc6a    # -9.829f

    const v4, 0x40046a7f    # 2.069f

    const v5, -0x3daf9168

    const v6, 0x3fdfbe77    # 1.748f

    const v7, -0x3d74428f    # -69.87f

    const v8, 0x3ff5c28f    # 1.92f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1218
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de4051f

    const v4, 0x3ec18937    # 0.378f

    const v5, -0x3d6e3958    # -72.888f

    const v6, -0x41be76c9    # -0.189f

    const v7, -0x3d3deb02    # -97.041f

    const v8, -0x3fbc3958    # -3.059f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1219
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dfc926f

    const v4, -0x3f853f7d    # -3.918f

    const v5, -0x3d998831    # -57.617f

    const v6, -0x3e680a3d    # -18.995f

    const v7, -0x3d71d99a

    const v8, -0x3e36fbe7    # -25.127f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1220
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f422d0e    # -5.932f

    const v4, -0x3f8449ba    # -3.933f

    const v5, -0x3eaf5810    # -13.041f

    const v6, -0x3f389375    # -6.232f

    const v7, -0x3e5a7ae1    # -20.69f

    const v8, -0x3f389375    # -6.232f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1221
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1222
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 1223
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e5b22d    # 7.178f

    const/4 v4, 0x0

    const v5, 0x415e1893    # 13.881f

    const v6, -0x3ffe978d    # -2.022f

    const v7, 0x419ca5e3    # 19.581f

    const v8, -0x3f4f5c29    # -5.52f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1224
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41539db2    # 13.226f

    const v4, -0x3f526666    # -5.425f

    const v5, 0x421945a2    # 38.318f

    const v6, -0x3e4cef9e    # -22.383f

    const v7, 0x42902666

    const v8, -0x3e30624e    # -25.952f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1225
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c39db2    # 24.452f

    const/high16 v4, -0x3fc00000    # -3.0f

    const v5, 0x42686e98

    const v6, -0x3fa6872b    # -3.398f

    const v7, 0x42c25062

    const v8, -0x3fbf3b64    # -3.012f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1226
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418cac08    # 17.584f

    const v4, 0x3e343958    # 0.176f

    const v5, 0x426d6d91

    const v6, -0x410ed917    # -0.471f

    const v7, 0x428b4b44

    const v8, 0x3fe28f5c    # 1.77f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1227
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e18937    # 7.048f

    const v4, 0x3fc04189    # 1.502f

    const v5, 0x41208b44    # 10.034f

    const v6, 0x400fbe77    # 2.246f

    const v7, 0x4158d0e5    # 13.551f

    const v8, 0x405be76d    # 3.436f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1228
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3d9fbe77    # 0.078f

    const v4, 0x3cd4fdf4    # 0.026f

    const v5, 0x3e23d70a    # 0.16f

    const v6, 0x3d656042    # 0.056f

    const v7, 0x3e74bc6a    # 0.239f

    const v8, 0x3da9fbe7    # 0.083f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1229
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ff18937    # 1.887f

    const v4, 0x3fcb020c    # 1.586f

    const v5, 0x408a0419    # 4.313f

    const v6, 0x402322d1    # 2.549f

    const v7, 0x40df1aa0    # 6.972f

    const v8, 0x402322d1    # 2.549f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1230
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40bfd70a    # 5.995f

    const/4 v4, 0x0

    const v5, 0x412da9fc    # 10.854f

    const v6, -0x3f648312    # -4.859f

    const v7, 0x412da9fc    # 10.854f

    const v8, -0x3ed25604    # -10.854f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1231
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x442b4000    # 685.0f

    const v4, 0x446e8052

    const v5, 0x442a0906

    const v6, 0x446d4958

    const v7, 0x44288958

    const v8, 0x446d4958

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1232
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 1233
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1234
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 1237
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1238
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4429d906

    const v3, 0x446d5906

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 1239
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fdb74bc    # -2.571f

    const/4 v4, 0x0

    const v5, -0x3f626666    # -4.925f

    const v6, 0x3f6b851f    # 0.92f

    const v7, -0x3f27a5e3    # -6.761f

    const v8, 0x401c49ba    # 2.442f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1240
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fa15810    # -3.479f

    const v4, 0x3f8be76d    # 1.093f

    const v5, -0x3f360419    # -6.312f

    const v6, 0x40074bc7    # 2.114f

    const v7, -0x3ebab852    # -12.33f

    const v8, 0x40533333    # 3.3f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1241
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee1be77    # -9.891f

    const v4, 0x40189375    # 2.384f

    const v5, -0x3dab29fc    # -53.209f

    const v6, 0x3ff28f5c    # 1.895f

    const v7, -0x3d720fdf

    const v8, 0x400b53f8    # 2.177f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1242
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de40312

    const v4, 0x3f1eb852    # 0.62f

    const v5, -0x3d5fa873

    const v6, 0x3d916873    # 0.071f

    const v7, -0x3d2f35c3

    const v8, -0x3fc1ba5e    # -2.973f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1243
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dfbb127    # -33.077f

    const v4, -0x3f7a9fbe    # -4.168f

    const v5, -0x3da01687    # -55.978f

    const v6, -0x3e64ac08    # -19.416f

    const v7, -0x3d756e14

    const v8, -0x3e335a1d    # -25.581f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1244
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f41fbe7    # -5.938f

    const v4, -0x3f83645a    # -3.947f

    const v5, -0x3eaf0625    # -13.061f

    const v6, -0x3f37ced9    # -6.256f

    const v7, -0x3e5a2f1b    # -20.727f

    const v8, -0x3f37ced9    # -6.256f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1245
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1246
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 1247
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e5d2f2    # 7.182f

    const/4 v4, 0x0

    const v5, 0x415e3958    # 13.889f

    const v6, -0x3ffe6666    # -2.025f

    const v7, 0x419cba5e    # 19.591f

    const v8, -0x3f4f2b02    # -5.526f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1248
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41525e35    # 13.148f

    const v4, -0x3f51a1cb    # -5.449f

    const v5, 0x42119eb8

    const v6, -0x3e49b852    # -22.785f

    const v7, 0x428c7d71

    const v8, -0x3e2c374c    # -26.473f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1249
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c4020c    # 24.501f

    const v4, -0x3fb21cac    # -3.217f

    const v5, 0x4282f0a4    # 65.47f

    const v6, -0x3f9f9db2    # -3.506f

    const v7, 0x42d10ed9    # 104.529f

    const v8, -0x3fca9fbe    # -2.834f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1250
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418ca9fc    # 17.583f

    const v4, 0x3e9b22d1    # 0.303f

    const v5, 0x4272147b    # 60.52f

    const v6, -0x41072b02    # -0.486f

    const v7, 0x428d9db2

    const v8, 0x4000624e    # 2.006f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1251
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40d20419    # 6.563f

    const v4, 0x3fc70a3d    # 1.555f

    const v5, 0x4114147b    # 9.255f

    const v6, 0x40125e35    # 2.287f

    const v7, 0x4146a7f0    # 12.416f

    const v8, 0x40590625    # 3.391f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1252
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fed2f1b    # 1.853f

    const v4, 0x3fca7efa    # 1.582f

    const v5, 0x4087f7cf    # 4.249f

    const v6, 0x4022f1aa    # 2.546f

    const v7, 0x40dc1062    # 6.877f

    const v8, 0x4022f1aa    # 2.546f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1253
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40bb7cee    # 5.859f

    const/4 v4, 0x0

    const v5, 0x4129be77    # 10.609f

    const/high16 v6, -0x3f680000    # -4.75f

    const v7, 0x4129be77    # 10.609f

    const v8, -0x3ed64189    # -10.609f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1254
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->S:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x442b5000    # 685.25f

    const v4, 0x446d5906

    const v5, 0x4429d906

    const v6, 0x446d5906

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 1255
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 1256
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1257
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 1260
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1261
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x442b2cdd

    const v3, 0x446d68a4

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 1262
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fe0f5c3    # -2.485f

    const/4 v4, 0x0

    const v5, -0x3f677cee    # -4.766f

    const v6, 0x3f60c49c    # 0.878f

    const v7, -0x3f2e5e35    # -6.551f

    const v8, 0x40159168    # 2.337f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1263
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fb27efa    # -3.211f

    const v4, 0x3f83f7cf    # 1.031f

    const v5, -0x3f45374c    # -5.837f

    const v6, 0x4004cccd    # 2.075f

    const v7, -0x3eca49ba    # -11.357f

    const v8, 0x40529fbe    # 3.291f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1264
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee0c49c    # -9.952f

    const v4, 0x402c28f6    # 2.69f

    const v5, -0x3da6e560    # -54.276f

    const v6, 0x40025e35    # 2.037f

    const v7, -0x3d6fed91

    const v8, 0x401b4396    # 2.426f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1265
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de40312

    const v4, 0x3f5a9fbe    # 0.854f

    const v5, -0x3d518ac1

    const v6, 0x3ea4dd2f    # 0.322f

    const v7, -0x3d20f5c3    # -111.52f

    const v8, -0x3fc70a3d    # -2.89f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1266
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dfadb23    # -33.286f

    const v4, -0x3f72d917    # -4.411f

    const v5, -0x3da66d91

    const v6, -0x3e616e98    # -19.821f

    const v7, -0x3d78e7f0

    const v8, -0x3e2fdb23    # -26.018f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1267
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f41ba5e    # -5.946f

    const v4, -0x3f825e35    # -3.963f

    const v5, -0x3eaeac08    # -13.083f

    const v6, -0x3f37020c    # -6.281f

    const v7, -0x3e59df3b    # -20.766f

    const v8, -0x3f37020c    # -6.281f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1268
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1269
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 1270
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e5fbe7    # 7.187f

    const/4 v4, 0x0

    const v5, 0x415e5a1d    # 13.897f

    const v6, -0x3ffe353f    # -2.028f

    const v7, 0x419cd0e5    # 19.602f

    const v8, -0x3f4ef1aa    # -5.533f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1271
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41511eb8    # 13.07f

    const v4, -0x3f50dd2f    # -5.473f

    const v5, 0x420a3439

    const v6, -0x3e46978d    # -23.176f

    const v7, 0x4288f1aa    # 68.472f

    const v8, -0x3e283127    # -26.976f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1272
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c4645a    # 24.549f

    const v4, -0x3fa49ba6    # -3.428f

    const v5, 0x4291353f

    const v6, -0x3f990625    # -3.609f

    const v7, 0x42df5917

    const v8, -0x3fd5a1cb    # -2.662f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1273
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418ca5e3    # 17.581f

    const v4, 0x3eda1cac    # 0.426f

    const v5, 0x42769581    # 61.646f

    const v6, -0x40ff7cee    # -0.502f

    const v7, 0x428fde35

    const v8, 0x400ef9db    # 2.234f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1274
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40c4fdf4    # 6.156f

    const v4, 0x3fcd2f1b    # 1.603f

    const v5, 0x4109a5e3    # 8.603f

    const v6, 0x4015a1cb    # 2.338f

    const v7, 0x41371aa0    # 11.444f

    const v8, 0x4057df3b    # 3.373f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1275
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fe6872b    # 1.801f

    const v4, 0x3fc16873    # 1.511f

    const v5, 0x4083b646    # 4.116f

    const v6, 0x401b645a    # 2.428f

    const v7, 0x40d4d4fe    # 6.651f

    const v8, 0x401b645a    # 2.428f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1276
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40b72b02    # 5.724f

    const/4 v4, 0x0

    const v5, 0x4125d2f2    # 10.364f

    const v6, -0x3f6b7cee    # -4.641f

    const v7, 0x4125d2f2    # 10.364f

    const v8, -0x3eda2d0e    # -10.364f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1277
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x442dc429

    const v4, 0x446e919a

    const v5, 0x442c9b33

    const v6, 0x446d68a4

    const v7, 0x442b2cdd

    const v8, 0x446d68a4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1278
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 1279
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1280
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 1283
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1284
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x442c977d

    const v3, 0x446d7852    # 949.88f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 1285
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ff570a4    # -2.165f

    const/4 v4, 0x0

    const v5, -0x3f7ac083    # -4.164f

    const v6, 0x3f2fdf3b    # 0.687f

    const v7, -0x3f46147b    # -5.81f

    const v8, 0x3fec0831    # 1.844f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1286
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f9d4fdf    # -3.542f

    const v4, 0x3f8c28f6    # 1.095f

    const v5, -0x3f42e148    # -5.91f

    const v6, 0x40110625    # 2.266f

    const v7, -0x3ec5cac1    # -11.638f

    const v8, 0x406a5e35    # 3.662f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1287
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3edfdb23    # -10.009f

    const v4, 0x403e872b    # 2.977f

    const v5, -0x3da2de35    # -55.283f

    const v6, 0x400af1aa    # 2.171f

    const v7, -0x3d6dea7f    # -73.042f

    const v8, 0x402a4dd3    # 2.661f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1288
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de4020c

    const v4, 0x3f8978d5    # 1.074f

    const v5, -0x3d443852    # -93.89f

    const v6, 0x3f0f9db2    # 0.561f

    const v7, -0x3d138312

    const v8, -0x3fcc28f6    # -2.81f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1289
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dfa1687    # -33.478f

    const v4, -0x3f6b9581    # -4.638f

    const v5, -0x3dac6666    # -52.9f

    const v6, -0x3e5e6a7f    # -20.198f

    const v7, -0x3d7c31aa    # -65.903f

    const v8, -0x3e2c9375    # -26.428f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1290
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f4170a4    # -5.955f

    const v4, -0x3f8147ae    # -3.98f

    const v5, -0x3eae49ba    # -13.107f

    const v6, -0x3f3624dd    # -6.308f

    const v7, -0x3e598b44    # -20.807f

    const v8, -0x3f3624dd    # -6.308f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1291
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1292
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 1293
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e61cac    # 7.191f

    const/4 v4, 0x0

    const v5, 0x415e7ae1    # 13.905f

    const v6, -0x3ffe147b    # -2.03f

    const v7, 0x419ce560    # 19.612f

    const v8, -0x3f4eb852    # -5.54f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1294
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x414fe76d    # 12.994f

    const v4, -0x3f5028f6    # -5.495f

    const v5, 0x42033439

    const v6, -0x3e43a7f0    # -23.543f

    const v7, 0x42859893

    const v8, -0x3e24645a    # -27.451f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1295
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c4be77    # 24.593f

    const v4, -0x3f981062    # -3.624f

    const v5, 0x429eac8b

    const v6, -0x3f92d0e5    # -3.706f

    const v7, 0x42ecd581    # 118.417f

    const/high16 v8, -0x3fe00000    # -2.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1296
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418ca3d7    # 17.58f

    const v4, 0x3f0b020c    # 0.543f

    const v5, 0x427ad4fe    # 62.708f

    const v6, -0x40fbe76d    # -0.516f

    const v7, 0x4291fcee

    const v8, 0x401cfdf4    # 2.453f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1297
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40d79581    # 6.737f

    const v4, 0x3ff353f8    # 1.901f

    const v5, 0x410aed91    # 8.683f

    const v6, 0x40265604    # 2.599f

    const v7, 0x413e0831    # 11.877f

    const v8, 0x4076e979    # 3.858f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1298
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fd126e9    # 1.634f

    const v4, 0x3f90a3d7    # 1.13f

    const v5, 0x4066e979    # 3.608f

    const v6, 0x3fe645a2    # 1.799f

    const v7, 0x40b7ced9    # 5.744f

    const v8, 0x3fe645a2    # 1.799f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1299
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40b2d917    # 5.589f

    const/4 v4, 0x0

    const v5, 0x4121e76d    # 10.119f

    const v6, -0x3f6f0a3d    # -4.53f

    const v7, 0x4121e76d    # 10.119f

    const v8, -0x3ede1893    # -10.119f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1300
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x442f1f1b

    const v4, 0x446e9a3d

    const v5, 0x442dfd2f

    const v6, 0x446d7852    # 949.88f

    const v7, 0x442c977d

    const v8, 0x446d7852    # 949.88f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1301
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 1302
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1303
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 1306
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1307
    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x442dc800    # 695.125f

    const v3, 0x446d8a4e

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    .line 1308
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x402e147b    # -1.64f

    const/4 v4, 0x0

    const v5, -0x3fb43958    # -3.184f

    const v6, 0x3ece5604    # 0.403f

    const v7, -0x3f6e978d    # -4.544f

    const v8, 0x3f8e147b    # 1.11f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1309
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x414c49ba    # -0.351f

    const v4, 0x3dd2f1aa    # 0.103f

    const v5, -0x40cb851f    # -0.705f

    const v6, 0x3e581062    # 0.211f

    const v7, -0x4074fdf4    # -1.086f

    const v8, 0x3ea66666    # 0.325f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1310
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f9051ec    # -3.745f

    const v4, 0x3f8e978d    # 1.114f

    const v5, -0x3f438d50    # -5.889f

    const v6, 0x4017be77    # 2.371f

    const v7, -0x3ec5a9fc    # -11.646f

    const v8, 0x4078d4fe    # 3.888f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1311
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3edf1eb8    # -10.055f

    const v4, 0x404d4fdf    # 3.208f

    const v5, -0x3d9f9fbe

    const v6, 0x4011eb85    # 2.28f

    const v7, -0x3d6c4bc7

    const v8, 0x40366666    # 2.85f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1312
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de40106    # -38.999f

    const v4, 0x3fa020c5    # 1.251f

    const v5, -0x3d398106

    const v6, 0x3f404189    # 0.751f

    const v7, -0x3d08b127    # -123.654f

    const v8, -0x3fd03127    # -2.747f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1313
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3df97cee

    const v4, -0x3f65c28f    # -4.82f

    const v5, -0x3db13021    # -51.703f

    const v6, -0x3e5c0625    # -20.497f

    const v7, -0x3d7ed893

    const v8, -0x3e29f5c3    # -26.755f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1314
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f413f7d    # -5.961f

    const v4, -0x3f8051ec    # -3.995f

    const v5, -0x3eadf7cf    # -13.127f

    const v6, -0x3f356042    # -6.332f

    const v7, -0x3e594189    # -20.843f

    const v8, -0x3f356042    # -6.332f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1315
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf    # -20.711f

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000    # -37.5f

    const v6, 0x41864fdf    # 16.789f

    const/high16 v7, -0x3dea0000    # -37.5f

    const/high16 v8, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1316
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf    # 16.789f

    const/high16 v4, 0x42160000    # 37.5f

    const/high16 v5, 0x42160000    # 37.5f

    const/high16 v6, 0x42160000    # 37.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    .line 1317
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e63d71    # 7.195f

    const/4 v4, 0x0

    const v5, 0x415e978d    # 13.912f

    const v6, -0x3ffdf3b6    # -2.032f

    const v7, 0x419cf7cf    # 19.621f

    const v8, -0x3f4e8f5c    # -5.545f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1318
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x414ee979    # 12.932f

    const v4, -0x3f4f851f    # -5.515f

    const v5, 0x41fb24dd    # 31.393f

    const v6, -0x3e4145a2    # -23.841f

    const v7, 0x4282e76d

    const v8, -0x3e215604    # -27.833f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1319
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c50625    # 24.628f

    const v4, -0x3f8db22d    # -3.786f

    const v5, 0x42a98189

    const v6, -0x3f8db22d    # -3.786f

    const v7, 0x42f7af1b

    const v8, -0x3fe84189    # -2.371f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1320
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418c9fbe    # 17.578f

    const v4, 0x3f23126f    # 0.637f

    const v5, 0x427e4083    # 63.563f

    const v6, -0x40f9999a    # -0.525f

    const v7, 0x4293b2b0    # 73.849f

    const v8, 0x40284189    # 2.629f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1321
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40dce560    # 6.903f

    const v4, 0x40049ba6    # 2.072f

    const v5, 0x41078106    # 8.469f

    const v6, 0x402f1aa0    # 2.736f

    const v7, 0x413ccccd    # 11.8f

    const v8, 0x408353f8    # 4.104f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1322
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f0b4396    # 0.544f

    const v4, 0x3e6978d5    # 0.228f

    const v5, 0x3f89ba5e    # 1.076f

    const v6, 0x3ed70a3d    # 0.42f

    const v7, 0x3fd2b021    # 1.646f

    const v8, 0x3f13b646    # 0.577f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1323
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f9c6a7f    # 1.222f

    const v4, 0x3f0a7efa    # 0.541f

    const v5, 0x40246a7f    # 2.569f

    const v6, 0x3f59db23    # 0.851f

    const v7, 0x407f7cee    # 3.992f

    const v8, 0x3f59db23    # 0.851f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1324
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40ae872b    # 5.454f

    const/4 v4, 0x0

    const/high16 v5, 0x411e0000    # 9.875f

    const v6, -0x3f727efa    # -4.422f

    const/high16 v7, 0x411e0000    # 9.875f

    const v8, -0x3ee1fbe7    # -9.876f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1325
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x44304000    # 705.0f

    const v4, 0x446ea550

    const v5, 0x442f250e

    const v6, 0x446d8a4e

    const v7, 0x442dc800    # 695.125f

    const v8, 0x446d8a4e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1326
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    .line 1327
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1328
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 1329
    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V
    .locals 9
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    .prologue
    const/4 v3, 0x0

    .line 1342
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1343
    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V
    .locals 9
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;
    .param p3, "x1"    # F
    .param p4, "y1"    # F

    .prologue
    const/4 v5, 0x0

    .line 1346
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1347
    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V
    .locals 9
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "x2"    # F
    .param p6, "y2"    # F

    .prologue
    const/4 v7, 0x0

    .line 1350
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    .line 1351
    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V
    .locals 11
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "x2"    # F
    .param p6, "y2"    # F
    .param p7, "x3"    # F
    .param p8, "y3"    # F

    .prologue
    .line 1355
    const/4 v7, 0x0

    .line 1356
    .local v7, "wasCurve":Z
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$1;->$SwitchMap$com$android$keyguard$sec$SecLockPatternMorphEffectPath$SVGCommand:[I

    invoke-virtual {p2}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->ordinal()I

    move-result v10

    aget v0, v0, v10

    packed-switch v0, :pswitch_data_0

    .line 1467
    :goto_0
    if-nez v7, :cond_0

    .line 1468
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX1:F

    .line 1469
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY1:F

    .line 1471
    :cond_0
    return-void

    .line 1359
    :pswitch_0
    move v8, p3

    .line 1360
    .local v8, "x":F
    move v9, p4

    .line 1361
    .local v9, "y":F
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->m:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    if-ne p2, v0, :cond_1

    .line 1362
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 1363
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    .line 1364
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_0

    .line 1366
    :cond_1
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1367
    iput v8, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    .line 1368
    iput v9, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_0

    .line 1374
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 1375
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX1:F

    .line 1376
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY1:F

    .line 1377
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    .line 1378
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_0

    .line 1383
    :pswitch_2
    move v8, p3

    .line 1384
    .restart local v8    # "x":F
    move v9, p4

    .line 1385
    .restart local v9    # "y":F
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->l:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    if-ne p2, v0, :cond_2

    .line 1386
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1387
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    .line 1388
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_0

    .line 1390
    :cond_2
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1391
    iput v8, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    .line 1392
    iput v9, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_0

    .line 1398
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_3
    move v8, p3

    .line 1399
    .restart local v8    # "x":F
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->h:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    if-ne p2, v0, :cond_3

    .line 1400
    const/4 v0, 0x0

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1401
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    goto :goto_0

    .line 1403
    :cond_3
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1404
    iput v8, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    goto :goto_0

    .line 1410
    .end local v8    # "x":F
    :pswitch_4
    move v9, p4

    .line 1411
    .restart local v9    # "y":F
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->v:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    if-ne p2, v0, :cond_4

    .line 1412
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1413
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_0

    .line 1415
    :cond_4
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1416
    iput v9, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_0

    .line 1422
    .end local v9    # "y":F
    :pswitch_5
    const/4 v7, 0x1

    .line 1423
    move v1, p3

    .line 1424
    .local v1, "tx1":F
    move v2, p4

    .line 1425
    .local v2, "ty1":F
    move/from16 v3, p5

    .line 1426
    .local v3, "tx2":F
    move/from16 v4, p6

    .line 1427
    .local v4, "ty2":F
    move/from16 v5, p7

    .line 1428
    .local v5, "tx":F
    move/from16 v6, p8

    .line 1429
    .local v6, "ty":F
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    if-ne p2, v0, :cond_5

    .line 1430
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v1, v0

    .line 1431
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v3, v0

    .line 1432
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v5, v0

    .line 1433
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v2, v0

    .line 1434
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v4, v0

    .line 1435
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v6, v0

    :cond_5
    move-object v0, p1

    .line 1437
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1438
    iput v3, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX1:F

    .line 1439
    iput v4, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY1:F

    .line 1440
    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    .line 1441
    iput v6, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto/16 :goto_0

    .line 1446
    .end local v1    # "tx1":F
    .end local v2    # "ty1":F
    .end local v3    # "tx2":F
    .end local v4    # "ty2":F
    .end local v5    # "tx":F
    .end local v6    # "ty":F
    :pswitch_6
    const/4 v7, 0x1

    .line 1447
    move v3, p3

    .line 1448
    .restart local v3    # "tx2":F
    move v4, p4

    .line 1449
    .restart local v4    # "ty2":F
    move/from16 v5, p5

    .line 1450
    .restart local v5    # "tx":F
    move/from16 v6, p6

    .line 1451
    .restart local v6    # "ty":F
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    if-ne p2, v0, :cond_6

    .line 1452
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v3, v0

    .line 1453
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v5, v0

    .line 1454
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v4, v0

    .line 1455
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v6, v0

    .line 1457
    :cond_6
    const/high16 v0, 0x40000000    # 2.0f

    iget v10, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    mul-float/2addr v0, v10

    iget v10, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX1:F

    sub-float v1, v0, v10

    .line 1458
    .restart local v1    # "tx1":F
    const/high16 v0, 0x40000000    # 2.0f

    iget v10, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    mul-float/2addr v0, v10

    iget v10, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY1:F

    sub-float v2, v0, v10

    .restart local v2    # "ty1":F
    move-object v0, p1

    .line 1459
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1460
    iput v3, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX1:F

    .line 1461
    iput v4, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY1:F

    .line 1462
    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    .line 1463
    iput v6, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto/16 :goto_0

    .line 1356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public getPath(IFF)Landroid/graphics/Path;
    .locals 2
    .param p1, "index"    # I
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 1333
    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    aget-object v0, v1, p1

    .line 1334
    .local v0, "tPath":Landroid/graphics/Path;
    return-object v0
.end method

.method public getPathTotal()I
    .locals 1

    .prologue
    .line 1338
    const/16 v0, 0x3c

    return v0
.end method
