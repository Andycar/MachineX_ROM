.class Landroid/graphics/Atlas$SlicePolicy;
.super Landroid/graphics/Atlas$Policy;
.source "Atlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Atlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlicePolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Atlas$SlicePolicy$LongerFreeAxisSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$ShorterFreeAxisSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$MaxAreaSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$SplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$Cell;
    }
.end annotation


# instance fields
.field private final mAllowRotation:Z

.field private final mPadding:I

.field private final mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

.field private final mSplitDecision:Landroid/graphics/Atlas$SlicePolicy$SplitDecision;


# direct methods
.method constructor <init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "flags"    # I
    .param p4, "splitDecision"    # Landroid/graphics/Atlas$SlicePolicy$SplitDecision;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 265
    invoke-direct {p0, v4}, Landroid/graphics/Atlas$Policy;-><init>(Landroid/graphics/Atlas$1;)V

    .line 238
    new-instance v1, Landroid/graphics/Atlas$SlicePolicy$Cell;

    invoke-direct {v1, v4}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$1;)V

    iput-object v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    .line 266
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_3c

    move v1, v2

    :goto_12
    iput-boolean v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mAllowRotation:Z

    .line 267
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_3e

    :goto_18
    iput v2, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    .line 270
    new-instance v0, Landroid/graphics/Atlas$SlicePolicy$Cell;

    invoke-direct {v0, v4}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$1;)V

    .line 271
    .local v0, "first":Landroid/graphics/Atlas$SlicePolicy$Cell;
    iget v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    iput v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    iput v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    .line 272
    iget v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    .line 273
    iget v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    iput v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    .line 275
    iget-object v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iput-object v0, v1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    .line 276
    iput-object p4, p0, Landroid/graphics/Atlas$SlicePolicy;->mSplitDecision:Landroid/graphics/Atlas$SlicePolicy$SplitDecision;

    .line 277
    return-void

    .end local v0    # "first":Landroid/graphics/Atlas$SlicePolicy$Cell;
    :cond_3c
    move v1, v3

    .line 266
    goto :goto_12

    :cond_3e
    move v2, v3

    .line 267
    goto :goto_18
.end method

.method private insert(Landroid/graphics/Atlas$SlicePolicy$Cell;Landroid/graphics/Atlas$SlicePolicy$Cell;IILandroid/graphics/Atlas$Entry;)Z
    .registers 15
    .param p1, "cell"    # Landroid/graphics/Atlas$SlicePolicy$Cell;
    .param p2, "prev"    # Landroid/graphics/Atlas$SlicePolicy$Cell;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "entry"    # Landroid/graphics/Atlas$Entry;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 365
    const/4 v3, 0x0

    .line 369
    .local v3, "rotated":Z
    iget v7, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    if-lt v7, p3, :cond_b

    iget v7, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    if-ge v7, p4, :cond_1c

    .line 370
    :cond_b
    iget-boolean v7, p0, Landroid/graphics/Atlas$SlicePolicy;->mAllowRotation:Z

    if-eqz v7, :cond_17

    .line 371
    iget v7, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    if-lt v7, p4, :cond_17

    iget v7, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    if-ge v7, p3, :cond_18

    .line 438
    :cond_17
    :goto_17
    return v6

    .line 376
    :cond_18
    move v5, p3

    .line 377
    .local v5, "temp":I
    move p3, p4

    .line 378
    move p4, v5

    .line 379
    const/4 v3, 0x1

    .line 386
    .end local v5    # "temp":I
    :cond_1c
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    sub-int v1, v6, p3

    .line 387
    .local v1, "deltaWidth":I
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    sub-int v0, v6, p4

    .line 390
    .local v0, "deltaHeight":I
    new-instance v2, Landroid/graphics/Atlas$SlicePolicy$Cell;

    invoke-direct {v2, v8}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$1;)V

    .line 391
    .local v2, "first":Landroid/graphics/Atlas$SlicePolicy$Cell;
    new-instance v4, Landroid/graphics/Atlas$SlicePolicy$Cell;

    invoke-direct {v4, v8}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$1;)V

    .line 393
    .local v4, "second":Landroid/graphics/Atlas$SlicePolicy$Cell;
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    add-int/2addr v6, p3

    iget v7, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    .line 394
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    iput v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    .line 395
    iget v6, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    sub-int v6, v1, v6

    iput v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    .line 397
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    iput v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    .line 398
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    add-int/2addr v6, p4

    iget v7, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    .line 399
    iget v6, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    sub-int v6, v0, v6

    iput v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    .line 401
    iget-object v6, p0, Landroid/graphics/Atlas$SlicePolicy;->mSplitDecision:Landroid/graphics/Atlas$SlicePolicy$SplitDecision;

    invoke-interface {v6, v1, v0, p3, p4}, Landroid/graphics/Atlas$SlicePolicy$SplitDecision;->splitHorizontal(IIII)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 403
    iput p4, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    .line 404
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    iput v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    .line 418
    :goto_60
    iget v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    if-lez v6, :cond_6b

    iget v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    if-lez v6, :cond_6b

    .line 419
    iput-object v2, p2, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    .line 420
    move-object p2, v2

    .line 423
    :cond_6b
    iget v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    if-lez v6, :cond_91

    iget v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    if-lez v6, :cond_91

    .line 424
    iput-object v4, p2, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    .line 425
    iget-object v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iput-object v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    .line 431
    :goto_79
    iput-object v8, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    .line 434
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    iput v6, p5, Landroid/graphics/Atlas$Entry;->x:I

    .line 435
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    iput v6, p5, Landroid/graphics/Atlas$Entry;->y:I

    .line 436
    iput-boolean v3, p5, Landroid/graphics/Atlas$Entry;->rotated:Z

    .line 438
    const/4 v6, 0x1

    goto :goto_17

    .line 406
    :cond_87
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    iput v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    .line 407
    iput p3, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    .line 412
    move-object v5, v2

    .line 413
    .local v5, "temp":Landroid/graphics/Atlas$SlicePolicy$Cell;
    move-object v2, v4

    .line 414
    move-object v4, v5

    goto :goto_60

    .line 427
    .end local v5    # "temp":Landroid/graphics/Atlas$SlicePolicy$Cell;
    :cond_91
    iget-object v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iput-object v6, p2, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    goto :goto_79
.end method


# virtual methods
.method pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "entry"    # Landroid/graphics/Atlas$Entry;

    .prologue
    .line 281
    iget-object v0, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iget-object v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    .line 282
    .local v1, "cell":Landroid/graphics/Atlas$SlicePolicy$Cell;
    iget-object v2, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    .line 284
    .local v2, "prev":Landroid/graphics/Atlas$SlicePolicy$Cell;
    :goto_6
    if-eqz v1, :cond_17

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 285
    invoke-direct/range {v0 .. v5}, Landroid/graphics/Atlas$SlicePolicy;->insert(Landroid/graphics/Atlas$SlicePolicy$Cell;Landroid/graphics/Atlas$SlicePolicy$Cell;IILandroid/graphics/Atlas$Entry;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 293
    .end local p3    # "entry":Landroid/graphics/Atlas$Entry;
    :goto_12
    return-object p3

    .line 289
    .restart local p3    # "entry":Landroid/graphics/Atlas$Entry;
    :cond_13
    move-object v2, v1

    .line 290
    iget-object v1, v1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    goto :goto_6

    .line 293
    :cond_17
    const/4 p3, 0x0

    goto :goto_12
.end method
