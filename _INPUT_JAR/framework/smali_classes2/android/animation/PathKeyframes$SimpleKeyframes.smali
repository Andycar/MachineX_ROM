.class abstract Landroid/animation/PathKeyframes$SimpleKeyframes;
.super Ljava/lang/Object;
.source "PathKeyframes.java"

# interfaces
.implements Landroid/animation/Keyframes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PathKeyframes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SimpleKeyframes"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/animation/PathKeyframes$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/animation/PathKeyframes$1;

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/animation/PathKeyframes$SimpleKeyframes;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/Keyframes;
    .registers 4

    .prologue
    .line 226
    const/4 v1, 0x0

    .line 228
    .local v1, "clone":Landroid/animation/Keyframes;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/animation/Keyframes;

    move-object v1, v0
    :try_end_9
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_9} :catch_a

    .line 230
    :goto_9
    return-object v1

    .line 229
    :catch_a
    move-exception v2

    goto :goto_9
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p0}, Landroid/animation/PathKeyframes$SimpleKeyframes;->clone()Landroid/animation/Keyframes;

    move-result-object v0

    return-object v0
.end method

.method public getKeyframes()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    # getter for: Landroid/animation/PathKeyframes;->EMPTY_KEYFRAMES:Ljava/util/ArrayList;
    invoke-static {}, Landroid/animation/PathKeyframes;->access$200()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public invalidateCache()V
    .registers 1

    .prologue
    .line 217
    return-void
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .registers 2
    .param p1, "evaluator"    # Landroid/animation/TypeEvaluator;

    .prologue
    .line 213
    return-void
.end method
