.class public Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;
.super Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;
.source "EdgeCocktailBarStatePolicy.java"


# static fields
.field private static final COCKTAIL_BAR_STATE_LOCK_SHOW_BY_APP:I = 0x20000

.field private static final COCKTAIL_BAR_STATE_LOCK_SHOW_BY_SYSTEM:I = 0x10000

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final COCKTAIL_BAR_SHOWING_DURATION:I

.field private mBackupStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

.field private mDimBackground:Z

.field private mNesting:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;-><init>(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V

    .line 16
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->COCKTAIL_BAR_SHOWING_DURATION:I

    .line 22
    iput-boolean v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    .line 24
    iput v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mNesting:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mBackupStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 30
    return-void
.end method

.method private beginCheckStateInfo()V
    .registers 4

    .prologue
    .line 357
    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mNesting:I

    if-nez v0, :cond_29

    .line 358
    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mNesting:I

    .line 359
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mBackupStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 360
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mBackupStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 361
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mBackupStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 362
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mBackupStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 364
    :cond_29
    return-void
.end method

.method private canUpdateVisibility(III)Z
    .registers 9
    .param p1, "windowType"    # I
    .param p2, "visibility"    # I
    .param p3, "mask"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 269
    sget-object v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canUpdateVisibility: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLockState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " windowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-ne p2, v2, :cond_40

    .line 274
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "canUpdateVisibility: visibility is same as the current one"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_3f
    :goto_3f
    return v0

    .line 278
    :cond_40
    packed-switch p2, :pswitch_data_8c

    .line 300
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canUpdateVisibility: invalide type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 280
    :pswitch_5c
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_66

    move v0, v1

    .line 281
    goto :goto_3f

    .line 282
    :cond_66
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3f

    move v0, v1

    .line 285
    goto :goto_3f

    .line 288
    :pswitch_70
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3f

    .line 290
    const/4 v2, 0x6

    if-eq p1, v2, :cond_81

    const/4 v2, 0x4

    if-eq p1, v2, :cond_81

    const/4 v2, 0x3

    if-ne p1, v2, :cond_83

    :cond_81
    move v0, v1

    .line 293
    goto :goto_3f

    .line 294
    :cond_83
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/2addr v2, p3

    if-nez v2, :cond_3f

    move v0, v1

    .line 297
    goto :goto_3f

    .line 278
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_70
    .end packed-switch
.end method

.method private compareStateInfo(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)I
    .registers 6
    .param p1, "a"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .param p2, "b"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "changeFlag":I
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-eq v1, v2, :cond_a

    .line 376
    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_VISIBILITY:I

    or-int/2addr v0, v1

    .line 378
    :cond_a
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    if-eq v1, v2, :cond_13

    .line 379
    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_BACKGROUND_TYPE:I

    or-int/2addr v0, v1

    .line 381
    :cond_13
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    if-eq v1, v2, :cond_1c

    .line 382
    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_LOCK_STATE:I

    or-int/2addr v0, v1

    .line 384
    :cond_1c
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    if-eq v1, v2, :cond_25

    .line 385
    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_MODE:I

    or-int/2addr v0, v1

    .line 387
    :cond_25
    iget-boolean v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    iget-boolean v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    if-eq v1, v2, :cond_2e

    .line 388
    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_ACTIVATE:I

    or-int/2addr v0, v1

    .line 390
    :cond_2e
    return v0
.end method

.method private finishCheckStateInfo()V
    .registers 2

    .prologue
    .line 394
    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mNesting:I

    if-lez v0, :cond_d

    .line 395
    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mNesting:I

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mBackupStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 398
    :cond_d
    return-void
.end method

.method private getChangeFlagOfStateInfo(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)I
    .registers 3
    .param p1, "StateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    .line 367
    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mNesting:I

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mBackupStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    if-eqz v0, :cond_f

    .line 368
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mBackupStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-direct {p0, p1, v0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->compareStateInfo(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)I

    move-result v0

    .line 370
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private needToRefreshHideTimer(I)Z
    .registers 5
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x1

    .line 259
    if-ne p1, v0, :cond_11

    iget v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_11

    .line 264
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private needToUpdateVisibility(III)Z
    .registers 9
    .param p1, "windowType"    # I
    .param p2, "visibility"    # I
    .param p3, "mask"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 307
    sget-object v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needToUpdateVisibility: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLockState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " windowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-ne p2, v2, :cond_40

    .line 312
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "needToUpdateVisibility: visibility is same as the current one"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_3f
    :goto_3f
    return v0

    .line 316
    :cond_40
    packed-switch p2, :pswitch_data_8a

    .line 338
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToUpdateVisibility: invalid type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 318
    :pswitch_5c
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_66

    move v0, v1

    .line 319
    goto :goto_3f

    .line 320
    :cond_66
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3f

    .line 322
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/2addr v2, p3

    if-eqz v2, :cond_3f

    move v0, v1

    .line 323
    goto :goto_3f

    .line 328
    :pswitch_77
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3f

    .line 330
    const/4 v2, 0x6

    if-eq p1, v2, :cond_88

    const/4 v2, 0x4

    if-eq p1, v2, :cond_88

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3f

    :cond_88
    move v0, v1

    .line 333
    goto :goto_3f

    .line 316
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_77
    .end packed-switch
.end method

.method private updateCocktailBarVisibility(I)Z
    .registers 6
    .param p1, "visibility"    # I

    .prologue
    .line 344
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-ne v1, p1, :cond_10

    .line 345
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateCocktailBarVisibility : skip"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v1, 0x0

    .line 353
    :goto_f
    return v1

    .line 349
    :cond_10
    :try_start_10
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->changeCocktailBarVisibility(I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_15

    .line 353
    :goto_13
    const/4 v1, 0x1

    goto :goto_f

    .line 350
    :catch_15
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCocktailBarVisibility : RemoteException + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .registers 4

    .prologue
    .line 253
    invoke-super {p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->dump()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDimBackground : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    return-object v0
.end method

.method public getBackgroundType()I
    .registers 5

    .prologue
    .line 228
    iget v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    packed-switch v1, :pswitch_data_42

    .line 238
    iget-boolean v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    if-eqz v1, :cond_3f

    .line 239
    const/4 v0, 0x2

    .line 245
    .local v0, "bgType":I
    :goto_a
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackgroundType: bgType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWindowType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDimBackground = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return v0

    .line 230
    .end local v0    # "bgType":I
    :pswitch_3b
    const/4 v0, 0x2

    .line 231
    .restart local v0    # "bgType":I
    goto :goto_a

    .line 235
    .end local v0    # "bgType":I
    :pswitch_3d
    const/4 v0, 0x1

    .line 236
    .restart local v0    # "bgType":I
    goto :goto_a

    .line 241
    .end local v0    # "bgType":I
    :cond_3f
    const/4 v0, 0x1

    .restart local v0    # "bgType":I
    goto :goto_a

    .line 228
    nop

    :pswitch_data_42
    .packed-switch 0x3
        :pswitch_3d
        :pswitch_3d
        :pswitch_3b
        :pswitch_3d
    .end packed-switch
.end method

.method public handleNotifyCurrentStateToBinder(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 212
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "handleNotifyCurrentStateToBinder"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .line 215
    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 216
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 217
    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_VISIBILITY:I

    sget v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_BACKGROUND_TYPE:I

    or-int/2addr v1, v2

    sget v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_LOCK_STATE:I

    or-int/2addr v1, v2

    sget v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_MODE:I

    or-int/2addr v1, v2

    sget v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_ACTIVATE:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 222
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, p1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarStateToBinder(Landroid/os/IBinder;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .line 223
    return-void
.end method

.method public handleNotifyState(I)V
    .registers 6
    .param p1, "state"    # I

    .prologue
    .line 187
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNotifyCurrentState : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .line 190
    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_BACKGROUND_TYPE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_2c

    .line 191
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 193
    :cond_2c
    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_POSITION:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_37

    .line 194
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 196
    :cond_37
    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_LOCK_STATE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_46

    .line 197
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 199
    :cond_46
    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_MODE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_51

    .line 200
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 202
    :cond_51
    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_ACTIVATE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_5c

    .line 203
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-boolean v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    iput-boolean v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 205
    :cond_5c
    iput p1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 206
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .line 207
    return-void
.end method

.method public handleRefreshState()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 169
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRefreshState: mWindowType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLockState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    if-ne v0, v4, :cond_2f

    .line 182
    :cond_2e
    :goto_2e
    return-void

    .line 175
    :cond_2f
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3b

    .line 176
    invoke-virtual {p0, v3}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    goto :goto_2e

    .line 177
    :cond_3b
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_47

    .line 178
    invoke-virtual {p0, v4}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    goto :goto_2e

    .line 179
    :cond_47
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const/high16 v1, 0x30000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2e

    .line 180
    invoke-virtual {p0, v3}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    goto :goto_2e
.end method

.method public handleUpdateActivate(Z)V
    .registers 6
    .param p1, "activate"    # Z

    .prologue
    .line 157
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLockState: mActivate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-boolean v3, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " activate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-boolean v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    if-eq v1, p1, :cond_3e

    .line 160
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .line 161
    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    iput-boolean p1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 162
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    sget v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_ACTIVATE:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 164
    .end local v0    # "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_3e
    return-void
.end method

.method public handleUpdatePosition(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 118
    return-void
.end method

.method public handleUpdateState(ZZ)V
    .registers 12
    .param p1, "shift"    # Z
    .param p2, "dimBackground"    # Z

    .prologue
    const v8, 0x30001

    const/high16 v7, 0x20000

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 124
    sget-object v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateStatus: shift = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dimBackground = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->beginCheckStateInfo()V

    .line 128
    const v0, 0x30001

    .line 130
    .local v0, "mask":I
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->cancelHideTimer()V

    .line 131
    if-nez p1, :cond_66

    .line 132
    invoke-virtual {p0, v7, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    .line 133
    iget v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-direct {p0, v2, v5, v8}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 135
    invoke-direct {p0, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(I)Z

    .line 144
    :cond_42
    :goto_42
    iput-boolean p2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    .line 145
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-direct {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .line 146
    .local v1, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 147
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getChangeFlagOfStateInfo(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 148
    iget v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    if-eqz v2, :cond_62

    .line 149
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v2, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .line 151
    :cond_62
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->finishCheckStateInfo()V

    .line 152
    return-void

    .line 138
    .end local v1    # "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_66
    const/4 v2, 0x0

    invoke-virtual {p0, v7, v2}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    .line 139
    iget v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-direct {p0, v2, v6, v8}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 141
    invoke-direct {p0, v6}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(I)Z

    goto :goto_42
.end method

.method public handleUpdateStateFromSystem(I)V
    .registers 12
    .param p1, "windowType"    # I

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x10000

    const v7, 0x20001

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 66
    sget-object v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateStateFromSystem: Current Info windowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateStateFromSystem: New windowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->beginCheckStateInfo()V

    .line 71
    const v0, 0x20001

    .line 72
    .local v0, "mask":I
    packed-switch p1, :pswitch_data_c6

    .line 93
    :pswitch_51
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->cancelHideTimer()V

    .line 94
    invoke-virtual {p0, v8, v9}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    .line 95
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v5, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 96
    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 98
    invoke-direct {p0, v6}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(I)Z

    .line 105
    :cond_64
    :goto_64
    iput p1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    .line 106
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-direct {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .line 107
    .local v1, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 108
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 109
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getChangeFlagOfStateInfo(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 110
    iget v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    if-eqz v2, :cond_8a

    .line 111
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v2, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .line 113
    :cond_8a
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->finishCheckStateInfo()V

    .line 114
    return-void

    .line 74
    .end local v1    # "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :pswitch_8e
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->cancelHideTimer()V

    .line 75
    invoke-virtual {p0, v8, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    .line 76
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v5, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 77
    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 79
    invoke-direct {p0, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(I)Z

    goto :goto_64

    .line 83
    :pswitch_a2
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v6, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 84
    invoke-virtual {p0, v8, v9}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    .line 85
    const/16 v2, 0xbb8

    invoke-virtual {p0, v2}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->refreshHideTimer(I)Z

    move-result v2

    if-nez v2, :cond_64

    .line 86
    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 88
    invoke-direct {p0, v6}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(I)Z

    goto :goto_64

    .line 99
    :cond_bb
    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->needToUpdateVisibility(III)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 101
    invoke-direct {p0, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(I)Z

    goto :goto_64

    .line 72
    nop

    :pswitch_data_c6
    .packed-switch 0x2
        :pswitch_a2
        :pswitch_51
        :pswitch_51
        :pswitch_8e
    .end packed-switch
.end method

.method public handleUpdateVisibility(I)V
    .registers 9
    .param p1, "visibility"    # I

    .prologue
    const/16 v6, 0xbb8

    .line 35
    sget-object v3, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleUpdateVisibility: visibility = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mWindowType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->beginCheckStateInfo()V

    .line 39
    const/4 v2, -0x1

    .line 40
    .local v2, "timeout":I
    const v0, 0x30001

    .line 43
    .local v0, "mask":I
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->needToRefreshHideTimer(I)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 44
    invoke-virtual {p0, v6}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->refreshHideTimer(I)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 45
    invoke-virtual {p0, v6}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->startHideTimer(I)V

    .line 47
    :cond_3c
    const/16 v2, 0xbb8

    .line 51
    :goto_3e
    iget v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    const v4, 0x30001

    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(I)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 53
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-direct {v1, p1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .line 54
    .local v1, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v3

    iput v3, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 55
    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 56
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getChangeFlagOfStateInfo(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)I

    move-result v3

    iput v3, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 57
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v3, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .line 60
    .end local v1    # "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_67
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->finishCheckStateInfo()V

    .line 61
    return-void

    .line 49
    :cond_6b
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->cancelHideTimer()V

    goto :goto_3e
.end method
