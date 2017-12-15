.class public Landroid/animation/IntArrayEvaluator;
.super Ljava/lang/Object;
.source "IntArrayEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<[I>;"
    }
.end annotation


# instance fields
.field private mArray:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>([I)V
    .registers 2
    .param p1, "reuseArray"    # [I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/animation/IntArrayEvaluator;->mArray:[I

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # F
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p2, [I

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, [I

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/IntArrayEvaluator;->evaluate(F[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public evaluate(F[I[I)[I
    .registers 10
    .param p1, "fraction"    # F
    .param p2, "startValue"    # [I
    .param p3, "endValue"    # [I

    .prologue
    .line 64
    iget-object v0, p0, Landroid/animation/IntArrayEvaluator;->mArray:[I

    .line 65
    .local v0, "array":[I
    if-nez v0, :cond_7

    .line 66
    array-length v4, p2

    new-array v0, v4, [I

    .line 68
    :cond_7
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v4, v0

    if-ge v2, v4, :cond_1b

    .line 69
    aget v3, p2, v2

    .line 70
    .local v3, "start":I
    aget v1, p3, v2

    .line 71
    .local v1, "end":I
    int-to-float v4, v3

    sub-int v5, v1, v3

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v0, v2

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 73
    .end local v1    # "end":I
    .end local v3    # "start":I
    :cond_1b
    return-object v0
.end method
