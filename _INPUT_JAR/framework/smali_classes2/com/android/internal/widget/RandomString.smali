.class Lcom/android/internal/widget/RandomString;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 3477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static rand(II)I
    .registers 6
    .param p0, "lo"    # I
    .param p1, "hi"    # I

    .prologue
    .line 3499
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 3500
    .local v2, "rn":Ljava/util/Random;
    sub-int v3, p1, p0

    add-int/lit8 v1, v3, 0x1

    .line 3501
    .local v1, "n":I
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 3502
    .local v0, "i":I
    if-gez v0, :cond_10

    .line 3503
    neg-int v0, v0

    .line 3504
    :cond_10
    add-int v3, p0, v0

    return v3
.end method

.method public static randomstring()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3512
    const/4 v0, 0x5

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/internal/widget/RandomString;->randomstring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomstring(II)Ljava/lang/String;
    .registers 7
    .param p0, "lo"    # I
    .param p1, "hi"    # I

    .prologue
    .line 3486
    invoke-static {p0, p1}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v2

    .line 3487
    .local v2, "n":I
    new-array v0, v2, [B

    .line 3488
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_2e

    .line 3489
    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_22

    .line 3490
    const/16 v3, 0x30

    const/16 v4, 0x39

    invoke-static {v3, v4}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 3488
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3492
    :cond_22
    const/16 v3, 0x61

    const/16 v4, 0x7a

    invoke-static {v3, v4}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    goto :goto_1f

    .line 3495
    :cond_2e
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method
