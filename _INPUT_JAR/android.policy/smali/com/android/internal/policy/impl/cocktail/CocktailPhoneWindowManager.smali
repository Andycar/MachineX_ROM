.class public Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;
.super Ljava/lang/Object;
.source "CocktailPhoneWindowManager.java"


# static fields
.field static final DEBUG:Z = true

.field static final DEBUG_LAYOUT:Z = true

.field static final TAG:Ljava/lang/String; = "CocktailPhoneWindowManager"

.field static final mTmpCocktailDiffFrame:Landroid/graphics/Rect;

.field static final mTmpCocktailFrame:Landroid/graphics/Rect;

.field static final mTmpSubWindowFrame:Landroid/graphics/Rect;


# instance fields
.field private mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCocktailBarDirection:I

.field private mCocktailCurrentSize:I

.field private mCocktailDeltaBottom:I

.field private mCocktailDeltaLeft:I

.field private mCocktailDeltaRight:I

.field private mCocktailShiftSize:I

.field private mCocktailSize:I

.field mContext:Landroid/content/Context;

.field private mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field mHandler:Landroid/os/Handler;

.field private mInitCocktailBar:Z

.field private mOverscanScreenHeight:I

.field private mOverscanScreenLeft:I

.field private mOverscanScreenTop:I

.field private mOverscanScreenWidth:I

.field mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mPolicyWindowType:I

.field private mPolicyWindowVisiblity:Z

.field mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 75
    iput v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    .line 76
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mInitCocktailBar:Z

    return-void
.end method

.method private checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z
    .registers 10
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "bCheckedNonOpaqueWindow"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 550
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-nez v2, :cond_14

    .line 551
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x62

    if-ne v2, v3, :cond_15

    .line 570
    :cond_14
    :goto_14
    return v0

    .line 555
    :cond_15
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_27

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v2, :cond_27

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v2, v5, :cond_27

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v5, :cond_27

    move v0, v1

    .line 558
    goto :goto_14

    .line 561
    :cond_27
    if-eqz p3, :cond_14

    .line 562
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_14

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v2, :cond_14

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v2, v4, :cond_39

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v4, :cond_14

    :cond_39
    move v0, v1

    .line 565
    goto :goto_14
.end method

.method private getPolicyWindowType()I
    .registers 6

    .prologue
    const/4 v2, 0x5

    const/4 v4, -0x2

    .line 516
    iget-object v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_38

    .line 517
    iget-object v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 518
    .local v1, "policyLp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v3, :sswitch_data_3a

    .line 533
    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_2e

    .line 534
    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 535
    .local v0, "policyAppLp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2e

    .line 536
    const/4 v2, 0x2

    .line 546
    .end local v0    # "policyAppLp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "policyLp":Landroid/view/WindowManager$LayoutParams;
    :cond_23
    :goto_23
    :sswitch_23
    return v2

    .line 523
    .restart local v1    # "policyLp":Landroid/view/WindowManager$LayoutParams;
    :sswitch_24
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_23

    .line 526
    const/4 v2, 0x3

    goto :goto_23

    .line 530
    :sswitch_2c
    const/4 v2, 0x4

    goto :goto_23

    .line 540
    :cond_2e
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v2, v4, :cond_38

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v4, :cond_38

    .line 541
    const/4 v2, 0x6

    goto :goto_23

    .line 546
    .end local v1    # "policyLp":Landroid/view/WindowManager$LayoutParams;
    :cond_38
    const/4 v2, 0x1

    goto :goto_23

    .line 518
    :sswitch_data_3a
    .sparse-switch
        0x7d0 -> :sswitch_24
        0x7d4 -> :sswitch_23
        0x7db -> :sswitch_2c
    .end sparse-switch
.end method

.method private isTransientShowing()Z
    .registers 2

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    return v0
.end method


# virtual methods
.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v3, 0x1

    .line 412
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_48

    .line 413
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_2b

    .line 414
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    if-le v1, v2, :cond_2b

    .line 415
    const/4 v0, 0x1

    .line 416
    .local v0, "policyWindow":Z
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_4c

    .line 426
    :goto_1b
    if-eqz v0, :cond_2b

    .line 427
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 428
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 429
    iput-object p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 436
    .end local v0    # "policyWindow":Z
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_48

    .line 437
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v1, v3, :cond_48

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x63

    if-gt v1, v2, :cond_48

    .line 438
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 439
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 440
    iput-object p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 446
    :cond_48
    return-void

    .line 422
    .restart local v0    # "policyWindow":Z
    :sswitch_49
    const/4 v0, 0x0

    goto :goto_1b

    .line 416
    nop

    :sswitch_data_4c
    .sparse-switch
        0x89c -> :sswitch_49
        0x8ad -> :sswitch_49
        0x8ca -> :sswitch_49
        0x8cf -> :sswitch_49
        0x8d4 -> :sswitch_49
    .end sparse-switch
.end method

.method public beginLayoutLw(IIIIIII)V
    .registers 24
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "displayRotation"    # I
    .param p4, "overscanScreenLeft"    # I
    .param p5, "overscanScreenTop"    # I
    .param p6, "overscanScreenWidth"    # I
    .param p7, "overscanScreenHeight"    # I

    .prologue
    .line 224
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mDisplayWidth:I

    .line 225
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mDisplayHeight:I

    .line 226
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    .line 227
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    .line 228
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenWidth:I

    .line 229
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenHeight:I

    .line 231
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarDirection:I

    .line 232
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaLeft:I

    .line 233
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaRight:I

    .line 234
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaBottom:I

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setForceHideStatusBar(Z)V

    .line 238
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    sub-int v15, v2, v3

    .line 239
    .local v15, "diff":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    sub-int v10, v2, v3

    .line 240
    .local v10, "appDiff":I
    packed-switch p3, :pswitch_data_1e2

    .line 282
    const/4 v11, 0x0

    .local v11, "cocktailBottom":I
    move v14, v11

    .local v14, "cocktailTop":I
    move v12, v11

    .line 283
    .local v12, "cocktailLeft":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    .line 284
    .local v13, "cocktailRight":I
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v10, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 285
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->isTransientShowing()Z

    move-result v2

    if-eqz v2, :cond_1d0

    .line 286
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 290
    :goto_7d
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 291
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    if-ne v2, v3, :cond_9f

    .line 292
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaRight:I

    .line 297
    :cond_9f
    :goto_9f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2, v12, v13, v14, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateCocktailLayout(IIII)V

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_de

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    sget-object v9, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    invoke-interface/range {v2 .. v9}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 302
    const-string v2, "CocktailPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTmpCocktailBar frame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_de
    return-void

    .line 242
    .end local v11    # "cocktailBottom":I
    .end local v12    # "cocktailLeft":I
    .end local v13    # "cocktailRight":I
    .end local v14    # "cocktailTop":I
    :pswitch_df
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setForceHideStatusBar(Z)V

    .line 243
    const/4 v11, 0x0

    .restart local v11    # "cocktailBottom":I
    move v13, v11

    .restart local v13    # "cocktailRight":I
    move v12, v11

    .line 244
    .restart local v12    # "cocktailLeft":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    .line 245
    .restart local v14    # "cocktailTop":I
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v10, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 246
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->isTransientShowing()Z

    move-result v2

    if-eqz v2, :cond_117

    .line 247
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 251
    :goto_109
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_9f

    .line 249
    :cond_117
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    neg-int v4, v15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_109

    .line 254
    .end local v11    # "cocktailBottom":I
    .end local v12    # "cocktailLeft":I
    .end local v13    # "cocktailRight":I
    .end local v14    # "cocktailTop":I
    :pswitch_125
    const/4 v11, 0x0

    .restart local v11    # "cocktailBottom":I
    move v14, v11

    .restart local v14    # "cocktailTop":I
    move v13, v11

    .line 255
    .restart local v13    # "cocktailRight":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    .line 256
    .restart local v12    # "cocktailLeft":I
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v10, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 257
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->isTransientShowing()Z

    move-result v2

    if-eqz v2, :cond_168

    .line 258
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 262
    :goto_147
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 263
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    if-ne v2, v3, :cond_9f

    .line 264
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaLeft:I

    goto/16 :goto_9f

    .line 260
    :cond_168
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    neg-int v3, v15

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_147

    .line 268
    .end local v11    # "cocktailBottom":I
    .end local v12    # "cocktailLeft":I
    .end local v13    # "cocktailRight":I
    .end local v14    # "cocktailTop":I
    :pswitch_176
    const/4 v14, 0x0

    .restart local v14    # "cocktailTop":I
    move v13, v14

    .restart local v13    # "cocktailRight":I
    move v12, v14

    .line 269
    .restart local v12    # "cocktailLeft":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    .line 270
    .restart local v11    # "cocktailBottom":I
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 271
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->isTransientShowing()Z

    move-result v2

    if-eqz v2, :cond_1bf

    .line 272
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    sub-int v4, p2, v4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 276
    :goto_19b
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    sub-int v4, p2, v4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 277
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    if-ne v2, v3, :cond_9f

    .line 278
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaBottom:I

    goto/16 :goto_9f

    .line 274
    :cond_1bf
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    sub-int v4, p2, v4

    add-int v5, p2, v15

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_19b

    .line 288
    :cond_1d0
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    add-int v5, p1, v15

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_7d

    .line 240
    :pswitch_data_1e2
    .packed-switch 0x1
        :pswitch_df
        :pswitch_125
        :pswitch_176
    .end packed-switch
.end method

.method public beginPostLayoutPolicyLw()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 407
    iput-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 408
    iput-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 409
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 691
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "--- Cocktail Policy ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1e

    .line 694
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCocktailBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 698
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2f

    .line 699
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCocktailBarBackground="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 703
    :cond_2f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPolicyWindowType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 704
    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 705
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPolicyWindowVisiblity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 706
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 707
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .registers 6

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "changes":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_4d

    .line 451
    invoke-direct {p0}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->getPolicyWindowType()I

    move-result v1

    .line 452
    .local v1, "currentWindowType":I
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    if-eq v2, v1, :cond_4d

    .line 453
    iput v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    .line 454
    const-string v2, "CocktailPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishPostLayoutPolicyLw - mPolicyWindowType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateCocktailBarStateFromSystem(I)V

    .line 456
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4e

    .line 457
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    if-eq v2, v3, :cond_43

    .line 458
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iput v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    .line 461
    :cond_43
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    if-nez v2, :cond_4d

    .line 462
    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 484
    .end local v1    # "currentWindowType":I
    :cond_4d
    :goto_4d
    return v0

    .line 465
    .restart local v1    # "currentWindowType":I
    :cond_4e
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_69

    .line 466
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    if-eq v2, v3, :cond_5e

    .line 467
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iput v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    .line 468
    const/4 v0, 0x1

    .line 477
    :cond_5e
    :goto_5e
    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 478
    const/4 v0, 0x1

    goto :goto_4d

    .line 471
    :cond_69
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    if-eq v2, v3, :cond_5e

    .line 472
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    iput v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    .line 473
    const/4 v0, 0x1

    goto :goto_5e
.end method

.method public getCocktailBarFrame()Landroid/graphics/Rect;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 574
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 575
    .local v0, "cocktailFrame":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarDirection:I

    packed-switch v1, :pswitch_data_24

    .line 586
    iget v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 588
    :goto_10
    return-object v0

    .line 577
    :pswitch_11
    iget v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_10

    .line 580
    :pswitch_17
    iget v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_10

    .line 583
    :pswitch_1d
    iget v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_10

    .line 575
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_11
        :pswitch_17
        :pswitch_1d
    .end packed-switch
.end method

.method public getNonDecorAlphaScreenDisplayHeight(II)I
    .registers 4
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I

    .prologue
    .line 510
    if-le p1, p2, :cond_5

    .line 511
    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    sub-int/2addr p2, v0

    .line 513
    :cond_5
    return p2
.end method

.method public getNonDecorAlphaScreenDisplayWidth(II)I
    .registers 4
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I

    .prologue
    .line 503
    if-ge p1, p2, :cond_5

    .line 504
    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    sub-int/2addr p1, v0

    .line 506
    :cond_5
    return p1
.end method

.method public getNonDecorDisplayHeight(II)I
    .registers 4
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I

    .prologue
    .line 496
    if-le p1, p2, :cond_5

    .line 497
    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    sub-int/2addr p2, v0

    .line 499
    :cond_5
    return p2
.end method

.method public getNonDecorDisplayWidth(II)I
    .registers 4
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I

    .prologue
    .line 489
    if-ge p1, p2, :cond_5

    .line 490
    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    sub-int/2addr p1, v0

    .line 492
    :cond_5
    return p1
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .param p4, "spwm"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p5, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 101
    iput-object p3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 102
    iput-object p4, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .line 103
    iput-object p5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    .line 108
    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iput v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    .line 109
    return-void
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "result"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 181
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2d

    move v0, v2

    .line 182
    .local v0, "down":Z
    :goto_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 184
    .local v1, "keyCode":I
    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2c

    .line 185
    packed-switch v1, :pswitch_data_34

    .line 192
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_1f

    if-ne v1, v5, :cond_2c

    .line 193
    :cond_1f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->isEdgeScreenWaked()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 194
    invoke-virtual {p0, v3, v3}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->requestEdgeScreenWakeup(ZI)V

    .line 195
    if-ne v1, v5, :cond_2c

    .line 196
    and-int/lit8 p2, p2, -0x2

    .line 206
    :cond_2c
    :goto_2c
    return p2

    .end local v0    # "down":Z
    .end local v1    # "keyCode":I
    :cond_2d
    move v0, v3

    .line 181
    goto :goto_a

    .line 189
    .restart local v0    # "down":Z
    .restart local v1    # "keyCode":I
    :pswitch_2f
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->requestEdgeScreenWakeup(ZI)V

    goto :goto_2c

    .line 185
    nop

    :pswitch_data_34
    .packed-switch 0x149
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
    .end packed-switch
.end method

.method public isCocktailRotationAnimationNeeded()Z
    .registers 2

    .prologue
    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method public isEdgeScreenWaked()Z
    .registers 3

    .prologue
    .line 612
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .line 613
    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_d

    .line 614
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktaiBarWakeUpState()Z

    move-result v1

    .line 617
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 25
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p5, "pf"    # Landroid/graphics/Rect;
    .param p6, "df"    # Landroid/graphics/Rect;
    .param p7, "of"    # Landroid/graphics/Rect;
    .param p8, "cf"    # Landroid/graphics/Rect;
    .param p9, "vf"    # Landroid/graphics/Rect;
    .param p10, "dcf"    # Landroid/graphics/Rect;

    .prologue
    .line 308
    move-object/from16 v0, p3

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v2, :sswitch_data_426

    .line 361
    if-nez p2, :cond_3a3

    .line 362
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasSubWindow()Z

    move-result v2

    if-eqz v2, :cond_2a5

    .line 363
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    if-ne v2, v3, :cond_10b

    .line 364
    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, p5

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 365
    move-object/from16 v0, p6

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, p6

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p6

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 366
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 367
    move-object/from16 v0, p8

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, p8

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, p8

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p8

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 368
    move-object/from16 v0, p9

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, p9

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, p9

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p9

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p9

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 369
    move-object/from16 v0, p10

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, p10

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, p10

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p10

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p10

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 403
    :cond_10b
    :goto_10b
    const/4 v2, 0x0

    :goto_10c
    return v2

    .line 310
    :sswitch_10d
    const/4 v2, 0x1

    goto :goto_10c

    .line 312
    :sswitch_10f
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Rect;->setEmpty()V

    .line 313
    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v9, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    move-object v2, p1

    move-object/from16 v8, p10

    invoke-interface/range {v2 .. v9}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 315
    const/4 v2, 0x1

    goto :goto_10c

    .line 317
    :sswitch_126
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 318
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 319
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 321
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 323
    move-object/from16 v0, p10

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_10b

    .line 330
    :sswitch_17c
    const/4 v2, 0x0

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 331
    const/4 v2, 0x0

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 332
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mDisplayWidth:I

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 333
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mDisplayHeight:I

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 334
    move-object/from16 v0, p10

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_10b

    .line 338
    :sswitch_1cb
    iget v12, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaLeft:I

    .line 339
    .local v12, "deltaLeft":I
    iget v13, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaRight:I

    .line 340
    .local v13, "deltaRight":I
    iget v11, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaBottom:I

    .line 342
    .local v11, "deltaBottom":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1ff

    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-nez v2, :cond_1ff

    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->hasSubWindow()Z

    move-result v2

    if-eqz v2, :cond_1ff

    .line 344
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->getCocktailBarFrame()Landroid/graphics/Rect;

    move-result-object v10

    .line 345
    .local v10, "cocktailFrame":Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaLeft:I

    if-eqz v2, :cond_299

    iget v12, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaLeft:I

    .line 346
    :goto_1f3
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaRight:I

    if-eqz v2, :cond_29d

    iget v13, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaRight:I

    .line 347
    :goto_1f9
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaBottom:I

    if-eqz v2, :cond_2a1

    iget v11, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaBottom:I

    .line 350
    .end local v10    # "cocktailFrame":Landroid/graphics/Rect;
    :cond_1ff
    :goto_1ff
    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v12

    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v13

    move-object/from16 v0, p5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v11

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 351
    move-object/from16 v0, p6

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v12

    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v13

    move-object/from16 v0, p6

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v11

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 352
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v12

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v13

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v11

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 353
    move-object/from16 v0, p8

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v12

    move-object/from16 v0, p8

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p8

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v13

    move-object/from16 v0, p8

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v11

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 354
    move-object/from16 v0, p9

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v12

    move-object/from16 v0, p9

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p9

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v13

    move-object/from16 v0, p9

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v11

    move-object/from16 v0, p9

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 355
    move-object/from16 v0, p3

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dc

    if-ne v2, v3, :cond_10b

    .line 356
    move-object/from16 v0, p10

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v12

    move-object/from16 v0, p10

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p10

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v13

    move-object/from16 v0, p10

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v11

    move-object/from16 v0, p10

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_10b

    .line 345
    .restart local v10    # "cocktailFrame":Landroid/graphics/Rect;
    :cond_299
    iget v12, v10, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1f3

    .line 346
    :cond_29d
    iget v13, v10, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1f9

    .line 347
    :cond_2a1
    iget v11, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1ff

    .line 372
    .end local v10    # "cocktailFrame":Landroid/graphics/Rect;
    .end local v11    # "deltaBottom":I
    .end local v12    # "deltaLeft":I
    .end local v13    # "deltaRight":I
    :cond_2a5
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    if-ne v2, v3, :cond_10b

    .line 373
    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p5

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    move-object/from16 v0, p5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 374
    move-object/from16 v0, p6

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p6

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    move-object/from16 v0, p6

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 375
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 376
    move-object/from16 v0, p8

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p8

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p8

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    move-object/from16 v0, p8

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 377
    move-object/from16 v0, p9

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p9

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p9

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    move-object/from16 v0, p9

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    move-object/from16 v0, p9

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 378
    move-object/from16 v0, p10

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p10

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p10

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    move-object/from16 v0, p10

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    move-object/from16 v0, p10

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_10b

    .line 382
    :cond_3a3
    invoke-interface/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v2, :sswitch_data_450

    goto/16 :goto_10b

    .line 385
    :sswitch_3ae
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p10

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 386
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p10

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 387
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    move-object/from16 v0, p10

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 388
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p10

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_10b

    .line 391
    :sswitch_3ce
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 392
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 393
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 395
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 397
    move-object/from16 v0, p10

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_10b

    .line 308
    nop

    :sswitch_data_426
    .sparse-switch
        0x62 -> :sswitch_10f
        0x7d4 -> :sswitch_126
        0x7db -> :sswitch_1cb
        0x7dc -> :sswitch_1cb
        0x7dd -> :sswitch_17c
        0x8ac -> :sswitch_10d
        0x8ad -> :sswitch_17c
        0x8ca -> :sswitch_17c
        0x8cf -> :sswitch_17c
        0x8d4 -> :sswitch_17c
    .end sparse-switch

    .line 382
    :sswitch_data_450
    .sparse-switch
        0x62 -> :sswitch_3ae
        0x7d4 -> :sswitch_3ce
        0x7db -> :sswitch_3ae
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, -0x7

    .line 150
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v1, :pswitch_data_6c

    .line 177
    :goto_6
    :pswitch_6
    const/4 v0, 0x0

    :cond_7
    return v0

    .line 152
    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1d

    .line 156
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_7

    .line 160
    :cond_1d
    iput-object p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 161
    const-string v0, "CocktailPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COCKTAIL BAR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 165
    :pswitch_3a
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_4f

    .line 169
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_7

    .line 173
    :cond_4f
    iput-object p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    .line 174
    const-string v0, "CocktailPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COCKTAIL BAR BACKGROUND : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 150
    :pswitch_data_6c
    .packed-switch 0x8ac
        :pswitch_8
        :pswitch_6
        :pswitch_3a
    .end packed-switch
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_8

    .line 143
    iput-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 147
    :cond_7
    :goto_7
    return-void

    .line 144
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_7

    .line 145
    iput-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7
.end method

.method public requestEdgeScreenWakeup(ZI)V
    .registers 5
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 600
    return-void
.end method

.method public requestTransientCocktailBar()V
    .registers 4

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 126
    :cond_c
    :goto_c
    return-void

    .line 117
    :cond_d
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 118
    :cond_21
    const-string v1, "CocktailPhoneWindowManager"

    const-string v2, "Not showing transient bar, becuase Factory mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 122
    :cond_29
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .line 123
    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_c

    .line 124
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateCocktailBarVisibility(I)V

    goto :goto_c
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .registers 8
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 647
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_6d

    .line 648
    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarDirection:I

    packed-switch v0, :pswitch_data_70

    .line 677
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v2, :cond_15

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v4, :cond_61

    .line 679
    :cond_15
    const v0, 0x10a002d

    .line 687
    :goto_18
    return v0

    .line 650
    :pswitch_19
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v2, :cond_21

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v4, :cond_25

    .line 652
    :cond_21
    const v0, 0x10a002f

    goto :goto_18

    .line 653
    :cond_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v1, :cond_2d

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v3, :cond_6d

    .line 655
    :cond_2d
    const v0, 0x10a002e

    goto :goto_18

    .line 659
    :pswitch_31
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v2, :cond_39

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v4, :cond_3d

    .line 661
    :cond_39
    const v0, 0x10a002b

    goto :goto_18

    .line 662
    :cond_3d
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v1, :cond_45

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v3, :cond_6d

    .line 664
    :cond_45
    const v0, 0x10a002a

    goto :goto_18

    .line 668
    :pswitch_49
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v2, :cond_51

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v4, :cond_55

    .line 670
    :cond_51
    const v0, 0x10a0029

    goto :goto_18

    .line 671
    :cond_55
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v1, :cond_5d

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v3, :cond_6d

    .line 673
    :cond_5d
    const v0, 0x10a0028

    goto :goto_18

    .line 680
    :cond_61
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v1, :cond_69

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v3, :cond_6d

    .line 682
    :cond_69
    const v0, 0x10a002c

    goto :goto_18

    .line 687
    :cond_6d
    const/4 v0, 0x0

    goto :goto_18

    .line 648
    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_19
        :pswitch_31
        :pswitch_49
    .end packed-switch
.end method

.method public setCurrentInputMethodTargetLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 5
    .param p1, "inputTargetWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v0, p1, :cond_20

    .line 211
    iput-object p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    .line 213
    const-string v0, "CocktailPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changed -> mCurrentInputMethodTarget : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_20
    return-void
.end method

.method public updateCocktailBarVisibility(Z)Z
    .registers 8
    .param p1, "visibility"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 621
    const/4 v0, 0x0

    .line 622
    .local v0, "changes":Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_4d

    .line 623
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    if-eq v3, p1, :cond_39

    move v0, v2

    .line 624
    :goto_c
    if-eqz v0, :cond_4d

    .line 625
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    .line 626
    const-string v3, "CocktailPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCocktailBarVisibility : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_41

    .line 628
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    if-eqz v3, :cond_3b

    .line 629
    iget-object v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 643
    :cond_38
    :goto_38
    return v1

    :cond_39
    move v0, v1

    .line 623
    goto :goto_c

    .line 631
    :cond_3b
    iget-object v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_38

    .line 635
    :cond_41
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    if-eqz v3, :cond_4d

    .line 636
    iget-object v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v2

    if-nez v2, :cond_38

    :cond_4d
    move v1, v0

    .line 643
    goto :goto_38
.end method

.method public windowTypeToLayerLw(I)I
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_8

    .line 138
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 135
    :pswitch_5
    const/16 v0, 0x19

    goto :goto_4

    .line 132
    :pswitch_data_8
    .packed-switch 0x8ac
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
