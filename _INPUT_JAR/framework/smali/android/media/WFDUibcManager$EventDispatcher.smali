.class Landroid/media/WFDUibcManager$EventDispatcher;
.super Landroid/media/WFDUibcManager$EventQueue;
.source "WFDUibcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final CAMERA_0:I

.field private final CAMERA_180:I

.field private final CAMERA_270:I

.field private final CAMERA_90:I

.field private Me_X:F

.field private Me_Y:F

.field private Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

.field private Ratio_LCD:F

.field private Ratio_WFD:F

.field private aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

.field private aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private activityManager:Landroid/app/ActivityManager;

.field private bCap:Z

.field private bNum:Z

.field private bScroll:Z

.field private bSim:Z

.field private configuration:Landroid/content/res/Configuration;

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private ev:Landroid/view/InputEvent;

.field private foregroundCamera:Z

.field private kH:F

.field private kW:F

.field private kX:F

.field private kY:F

.field private ke:Landroid/view/KeyEvent;

.field private last_Ke:Landroid/view/KeyEvent;

.field private mFlag:I

.field private mKeyDownTime:J

.field private mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

.field private mKeyUpTime:J

.field private mMetaFlag:I

.field private mRepeatCnt:I

.field private mTouchDownTime:J

.field private me:Landroid/view/MotionEvent;

.field public volatile running:Z

.field final synthetic this$0:Landroid/media/WFDUibcManager;

.field private wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/media/WFDUibcManager;)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 250
    iput-object p1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-direct {p0, p1, v1}, Landroid/media/WFDUibcManager$EventQueue;-><init>(Landroid/media/WFDUibcManager;Landroid/media/WFDUibcManager$1;)V

    .line 251
    iput-boolean v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    .line 253
    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 254
    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    .line 264
    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    .line 265
    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    .line 267
    iput-boolean v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->foregroundCamera:Z

    .line 268
    sget-object v0, Landroid/media/WFDUibcManager$UIBC_Mode;->NORMAL:Landroid/media/WFDUibcManager$UIBC_Mode;

    iput-object v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 269
    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    .line 270
    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    .line 271
    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 272
    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    .line 273
    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    .line 275
    iput v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_0:I

    .line 276
    iput v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_90:I

    .line 277
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_180:I

    .line 278
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_270:I

    .line 281
    iput v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 282
    iput-boolean v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    .line 283
    iput-boolean v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bSim:Z

    .line 284
    iput-boolean v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bNum:Z

    .line 285
    iput-boolean v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bScroll:Z

    .line 286
    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    .line 287
    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 288
    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyUpTime:J

    .line 289
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    .line 290
    iput v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 291
    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->last_Ke:Landroid/view/KeyEvent;

    return-void
.end method

.method private handleCameraTouch(I)V
    .registers 16
    .param p1, "i"    # I

    .prologue
    const/16 v13, 0x2d

    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const v9, 0x38d1b717    # 1.0E-4f

    const/4 v10, 0x1

    .line 307
    const/4 v0, -0x1

    .line 308
    .local v0, "mCameraOrientation":I
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 312
    .local v6, "rotation":I
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    if-lez v7, :cond_24

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    if-lt v7, v13, :cond_2e

    :cond_24
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x13b

    if-le v7, v8, :cond_8f

    .line 314
    :cond_2e
    const/4 v0, 0x0

    .line 328
    :goto_2f
    add-int/2addr v0, v6

    .line 329
    rem-int/lit8 v0, v0, 0x4

    .line 330
    if-eqz v0, :cond_37

    const/4 v7, 0x2

    if-ne v0, v7, :cond_142

    .line 332
    :cond_37
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_bd

    .line 334
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    div-float v2, v7, v8

    .line 335
    .local v2, "newWidth":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v2

    div-float v5, v7, v11

    .line 336
    .local v5, "pad":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v7

    mul-float/2addr v7, v9

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v3, v7, v8

    .line 339
    .local v3, "normX":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    sub-float v8, v3, v5

    div-float/2addr v8, v2

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 340
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 358
    .end local v2    # "newWidth":F
    .end local v3    # "normX":F
    .end local v5    # "pad":F
    :goto_7a
    if-nez v0, :cond_11a

    .line 359
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v7, v12, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 360
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v7, v10, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 395
    :cond_8e
    :goto_8e
    return-void

    .line 316
    :cond_8f
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    if-lt v7, v13, :cond_a3

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x73

    if-ge v7, v8, :cond_a3

    .line 318
    const/4 v0, 0x1

    goto :goto_2f

    .line 320
    :cond_a3
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x73

    if-lt v7, v8, :cond_ba

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0xe1

    if-ge v7, v8, :cond_ba

    .line 322
    const/4 v0, 0x2

    goto/16 :goto_2f

    .line 326
    :cond_ba
    const/4 v0, 0x3

    goto/16 :goto_2f

    .line 343
    :cond_bd
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_102

    .line 345
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    div-float v1, v7, v8

    .line 346
    .local v1, "newHeight":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v1

    div-float v5, v7, v11

    .line 347
    .restart local v5    # "pad":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v7

    mul-float/2addr v7, v9

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v7, v8

    .line 349
    .local v4, "normY":F
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 350
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    sub-float v8, v4, v5

    div-float/2addr v8, v1

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_7a

    .line 354
    .end local v1    # "newHeight":F
    .end local v4    # "normY":F
    .end local v5    # "pad":F
    :cond_102
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 355
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_7a

    .line 364
    :cond_11a
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 365
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 366
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v7, v12, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 367
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v7, v10, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_8e

    .line 371
    :cond_142
    if-eq v0, v10, :cond_147

    const/4 v7, 0x3

    if-ne v0, v7, :cond_8e

    .line 374
    :cond_147
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    div-float v2, v7, v8

    .line 375
    .restart local v2    # "newWidth":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v2

    div-float v5, v7, v11

    .line 376
    .restart local v5    # "pad":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v7

    mul-float/2addr v7, v9

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v3, v7, v8

    .line 379
    .restart local v3    # "normX":F
    if-ne v0, v10, :cond_19e

    .line 380
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    sub-float v9, v3, v5

    div-float/2addr v9, v2

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 381
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 389
    :goto_18a
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v7, v12, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 390
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v7, v10, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_8e

    .line 385
    :cond_19e
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    sub-float v8, v3, v5

    div-float/2addr v8, v2

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 386
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v9, v9, p1

    iget v9, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    goto :goto_18a
.end method

.method private handleKeyEvent()V
    .registers 27

    .prologue
    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/KeyEvent;

    .line 684
    .local v16, "NewKE":Landroid/view/KeyEvent;
    const/16 v20, -0x1

    .local v20, "fndKyIndex":I
    const/16 v19, -0x1

    .line 685
    .local v19, "empKyIndex":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 686
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 687
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    .line 691
    const/4 v13, -0x1

    .line 692
    .local v13, "displayId":I
    if-gez v13, :cond_45

    .line 694
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v18

    .line 695
    .local v18, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v17

    .local v17, "arr$":[I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    .local v23, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_2e
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_45

    aget v22, v17, v21

    .line 696
    .local v22, "id":I
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4f

    .line 697
    move/from16 v13, v22

    .line 702
    .end local v17    # "arr$":[I
    .end local v18    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v21    # "i$":I
    .end local v22    # "id":I
    .end local v23    # "len$":I
    :cond_45
    if-gez v13, :cond_52

    .line 703
    const-string v2, "WFDUibcManager"

    const-string v3, "displayId not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_4e
    :goto_4e
    return-void

    .line 695
    .restart local v17    # "arr$":[I
    .restart local v18    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local v21    # "i$":I
    .restart local v22    # "id":I
    .restart local v23    # "len$":I
    :cond_4f
    add-int/lit8 v21, v21, 0x1

    goto :goto_2e

    .line 711
    .end local v17    # "arr$":[I
    .end local v18    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v21    # "i$":I
    .end local v22    # "id":I
    .end local v23    # "len$":I
    :cond_52
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCoupleShot:Z
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4e

    .line 716
    :cond_63
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2e6

    .line 719
    const/16 v25, 0x0

    .local v25, "rCnt":I
    :goto_6b
    const/16 v2, 0xf

    move/from16 v0, v25

    if-ge v0, v2, :cond_95

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v25

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$700(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_80

    .line 722
    move/from16 v19, v25

    .line 723
    :cond_80
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v25

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$700(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v2, v3, :cond_92

    .line 724
    move/from16 v20, v25

    .line 719
    :cond_92
    add-int/lit8 v25, v25, 0x1

    goto :goto_6b

    .line 728
    :cond_95
    if-gez v20, :cond_287

    .line 729
    if-ltz v19, :cond_c7

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v19

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$702(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v19

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2, v4, v5}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$802(Landroid/media/WFDUibcManager$Keyevnt_arrC;J)J

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v19

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$902(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v19

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$1002(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 735
    :cond_c7
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 736
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 737
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    .line 749
    :goto_e4
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_f4

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_122

    .line 750
    :cond_f4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 751
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_110

    .line 752
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v2, v2, 0x40

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 753
    :cond_110
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_122

    .line 754
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v2, v2, 0x80

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 756
    :cond_122
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-eq v2, v3, :cond_132

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_160

    .line 757
    :cond_132
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 758
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_14e

    .line 759
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 760
    :cond_14e
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_160

    .line 761
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 763
    :cond_160
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-eq v2, v3, :cond_170

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_19e

    .line 764
    :cond_170
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v2, v2, 0x1000

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 765
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-ne v2, v3, :cond_18c

    .line 766
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v2, v2, 0x2000

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 767
    :cond_18c
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_19e

    .line 768
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v2, v2, 0x4000

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 770
    :cond_19e
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x77

    if-ne v2, v3, :cond_1b0

    .line 771
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 835
    .end local v25    # "rCnt":I
    :cond_1b0
    :goto_1b0
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {v2 .. v15}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1f6

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->last_Ke:Landroid/view/KeyEvent;

    .line 842
    :cond_1f6
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_280

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_223

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_255

    .line 851
    :cond_223
    new-instance v24, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.PRESENTATION_FOCUS_CHANGED"

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 852
    .local v24, "mintent":Landroid/content/Intent;
    const-string v2, "app_name"

    const-string v3, "finish"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_464

    .line 855
    const-string v2, "launch_home"

    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 864
    :cond_248
    :goto_248
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 866
    .end local v24    # "mintent":Landroid/content/Intent;
    :cond_255
    if-ltz v20, :cond_280

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    const/4 v3, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$702(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    const-wide/16 v4, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2, v4, v5}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$802(Landroid/media/WFDUibcManager$Keyevnt_arrC;J)J

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$902(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$1002(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 874
    :cond_280
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    goto/16 :goto_4e

    .line 740
    .restart local v25    # "rCnt":I
    :cond_287
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    # |= operator for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$976(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    # operator++ for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$1008(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$1000(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2b5

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    const/16 v3, 0x80

    # |= operator for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$976(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 745
    :cond_2b5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$800(Landroid/media/WFDUibcManager$Keyevnt_arrC;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 746
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v3, v3, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$900(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$1000(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    goto/16 :goto_e4

    .line 776
    .end local v25    # "rCnt":I
    :cond_2e6
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b0

    .line 778
    const/16 v25, 0x0

    .restart local v25    # "rCnt":I
    :goto_2ef
    const/16 v2, 0xf

    move/from16 v0, v25

    if-ge v0, v2, :cond_30a

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v25

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$700(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v2, v3, :cond_307

    .line 781
    move/from16 v20, v25

    .line 778
    :cond_307
    add-int/lit8 v25, v25, 0x1

    goto :goto_2ef

    .line 786
    :cond_30a
    if-ltz v20, :cond_428

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$800(Landroid/media/WFDUibcManager$Keyevnt_arrC;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 788
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v3, v3, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$900(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 789
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    .line 796
    :goto_332
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_342

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_370

    .line 797
    :cond_342
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v2, v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 798
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_35e

    .line 799
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v2, v2, -0x41

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 800
    :cond_35e
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_370

    .line 801
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v2, v2, -0x81

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 803
    :cond_370
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-eq v2, v3, :cond_380

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_3ae

    .line 804
    :cond_380
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v2, v2, -0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 805
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_39c

    .line 806
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v2, v2, -0x11

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 807
    :cond_39c
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_3ae

    .line 808
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v2, v2, -0x21

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 810
    :cond_3ae
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-eq v2, v3, :cond_3be

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_3ec

    .line 811
    :cond_3be
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v2, v2, -0x1001

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 812
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-ne v2, v3, :cond_3da

    .line 813
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v2, v2, -0x2001

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 814
    :cond_3da
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_3ec

    .line 815
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v2, v2, -0x4001

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 817
    :cond_3ec
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x77

    if-ne v2, v3, :cond_3fe

    .line 818
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v2, v2, -0x9

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 820
    :cond_3fe
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x73

    if-ne v2, v3, :cond_1b0

    .line 821
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    if-nez v2, :cond_447

    .line 822
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v2, v2, 0x100

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 823
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 824
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    goto/16 :goto_1b0

    .line 792
    :cond_428
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 793
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 794
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    goto/16 :goto_332

    .line 826
    :cond_447
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const v3, -0x100001

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 827
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v2, v2, -0x101

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 828
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    goto/16 :goto_1b0

    .line 857
    .end local v25    # "rCnt":I
    .restart local v24    # "mintent":Landroid/content/Intent;
    :cond_464
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_248

    .line 859
    const-string v2, "launch_home"

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_248
.end method

.method private handleMotionEvent()V
    .registers 41

    .prologue
    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    move-object/from16 v30, v0

    check-cast v30, Landroid/view/MotionEvent;

    .line 419
    .local v30, "newEv":Landroid/view/MotionEvent;
    sget-object v2, Landroid/media/WFDUibcManager$UIBC_Mode;->NORMAL:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 425
    const/4 v12, -0x1

    .line 426
    .local v12, "displayId":I
    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId before: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    if-gez v12, :cond_5e

    .line 428
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v22

    .line 429
    .local v22, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual/range {v22 .. v22}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v19

    .local v19, "arr$":[I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v28, v0

    .local v28, "len$":I
    const/16 v25, 0x0

    .local v25, "i$":I
    :goto_47
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_5e

    aget v26, v19, v25

    .line 430
    .local v26, "id":I
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_68

    .line 431
    move/from16 v12, v26

    .line 436
    .end local v19    # "arr$":[I
    .end local v22    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v25    # "i$":I
    .end local v26    # "id":I
    .end local v28    # "len$":I
    :cond_5e
    if-gez v12, :cond_6b

    .line 437
    const-string v2, "WFDUibcManager"

    const-string v3, "displayId not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :goto_67
    return-void

    .line 429
    .restart local v19    # "arr$":[I
    .restart local v22    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local v25    # "i$":I
    .restart local v26    # "id":I
    .restart local v28    # "len$":I
    :cond_68
    add-int/lit8 v25, v25, 0x1

    goto :goto_47

    .line 443
    .end local v19    # "arr$":[I
    .end local v22    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v25    # "i$":I
    .end local v26    # "id":I
    .end local v28    # "len$":I
    :cond_6b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->activityManager:Landroid/app/ActivityManager;

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->activityManager:Landroid/app/ActivityManager;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v27

    .line 445
    .local v27, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_bd

    .line 446
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 447
    .local v39, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v39

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.camera"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->foregroundCamera:Z

    .line 449
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->foregroundCamera:Z

    if-eqz v2, :cond_bd

    sget-object v2, Landroid/media/WFDUibcManager$UIBC_Mode;->CAMERA:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 453
    .end local v39    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_bd
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sidesync_source_connect"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_dd

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCoupleShot:Z
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Z

    move-result v2

    if-eqz v2, :cond_1ce

    .line 455
    :cond_dd
    sget-object v2, Landroid/media/WFDUibcManager$UIBC_Mode;->FORCE_VALUE:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 489
    :cond_e3
    :goto_e3
    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_29f

    .line 490
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 496
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 497
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x3

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 507
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    const-wide/16 v4, 0xa

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    const-wide/16 v6, 0xa

    sub-long/2addr v4, v6

    const/16 v6, 0x8

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v15, 0xa

    const/16 v16, 0x0

    const/16 v17, 0x2002

    const/16 v18, 0x0

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/16 v3, 0x2002

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 510
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 511
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    goto/16 :goto_67

    .line 459
    :cond_1ce
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/hardware/display/DisplayManager;

    .line 460
    .local v29, "mDm":Landroid/hardware/display/DisplayManager;
    invoke-virtual/range {v29 .. v29}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v36

    .line 461
    .local v36, "presentationDisplays":[Landroid/view/Display;
    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received displays amount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1ff
    move-object/from16 v0, v36

    array-length v2, v0

    move/from16 v0, v24

    if-ge v0, v2, :cond_e3

    .line 464
    aget-object v21, v36, v24

    .line 465
    .local v21, "display":Landroid/view/Display;
    invoke-virtual/range {v21 .. v21}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-ne v12, v2, :cond_29b

    .line 466
    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "presentation display found, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/16 v37, -0x1

    .line 469
    .local v37, "presentationId":I
    :try_start_22b
    # getter for: Landroid/media/WFDUibcManager;->DISPLAY_MAP:Ljava/util/HashMap;
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25b

    .line 470
    # getter for: Landroid/media/WFDUibcManager;->DISPLAY_MAP:Ljava/util/HashMap;
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_25a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22b .. :try_end_25a} :catch_271

    move-result v37

    .line 476
    :cond_25b
    :goto_25b
    const/4 v2, -0x1

    move/from16 v0, v37

    if-eq v0, v2, :cond_e3

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 480
    sget-object v2, Landroid/media/WFDUibcManager$UIBC_Mode;->PRESENTATION:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    goto/16 :goto_e3

    .line 471
    :catch_271
    move-exception v23

    .line 472
    .local v23, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display name too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Use default UIBC."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/16 v37, -0x1

    goto :goto_25b

    .line 463
    .end local v23    # "e":Ljava/lang/IllegalArgumentException;
    .end local v37    # "presentationId":I
    :cond_29b
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1ff

    .line 515
    .end local v21    # "display":Landroid/view/Display;
    .end local v24    # "i":I
    .end local v29    # "mDm":Landroid/hardware/display/DisplayManager;
    .end local v36    # "presentationDisplays":[Landroid/view/Display;
    :cond_29f
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    .line 516
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    .line 517
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    .line 518
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    .line 519
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 520
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    .line 526
    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    .line 527
    .local v20, "count":I
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_313
    move/from16 v0, v24

    move/from16 v1, v20

    if-ge v0, v1, :cond_6ef

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v2, v2, v24

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v24

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v2, v2, v24

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v24

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 534
    sget-object v2, Landroid/media/WFDUibcManager$3;->$SwitchMap$android$media$WFDUibcManager$UIBC_Mode:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v3}, Landroid/media/WFDUibcManager$UIBC_Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_742

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_621

    .line 585
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_55f

    .line 587
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    div-float v32, v2, v3

    .line 588
    .local v32, "newWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v32

    const/high16 v3, 0x40000000    # 2.0f

    div-float v35, v2, v3

    .line 589
    .local v35, "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v24

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v33, v2, v3

    .line 593
    .local v33, "normX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    sub-float v3, v33, v35

    div-float v3, v3, v32

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 594
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v24

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v24

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v24

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 527
    .end local v32    # "newWidth":F
    .end local v33    # "normX":F
    .end local v35    # "pad":F
    :cond_3f1
    :goto_3f1
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_313

    .line 536
    :pswitch_3f5
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/media/WFDUibcManager$EventDispatcher;->handleCameraTouch(I)V

    goto :goto_3f1

    .line 542
    :pswitch_3fd
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v24

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 543
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v24

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v24

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 545
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v24

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_3f1

    .line 550
    :pswitch_43c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v38

    .line 552
    .local v38, "rotation":I
    if-nez v38, :cond_492

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v24

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 554
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v24

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 567
    :goto_474
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v24

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v24

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_3f1

    .line 555
    :cond_492
    const/4 v2, 0x3

    move/from16 v0, v38

    if-ne v0, v2, :cond_4ca

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v24

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v24

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto :goto_474

    .line 559
    :cond_4ca
    const/4 v2, 0x2

    move/from16 v0, v38

    if-ne v0, v2, :cond_4fb

    .line 560
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v24

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v24

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_474

    .line 563
    :cond_4fb
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v24

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 564
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v24

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_474

    .line 574
    .end local v38    # "rotation":I
    :pswitch_51f
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v24

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 575
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v24

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v24

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v24

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_3f1

    .line 600
    :cond_55f
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5e1

    .line 602
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    div-float v31, v2, v3

    .line 603
    .local v31, "newHeight":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v31

    const/high16 v3, 0x40000000    # 2.0f

    div-float v35, v2, v3

    .line 604
    .restart local v35    # "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v24

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v34, v2, v3

    .line 607
    .local v34, "normY":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v24

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    sub-float v3, v34, v35

    div-float v3, v3, v31

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v24

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v24

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_3f1

    .line 615
    .end local v31    # "newHeight":F
    .end local v34    # "normY":F
    .end local v35    # "pad":F
    :cond_5e1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v24

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 616
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v24

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v24

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v24

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_3f1

    .line 623
    :cond_621
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6a3

    .line 625
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    div-float v32, v2, v3

    .line 626
    .restart local v32    # "newWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v32

    const/high16 v3, 0x40000000    # 2.0f

    div-float v35, v2, v3

    .line 627
    .restart local v35    # "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v24

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v33, v2, v3

    .line 630
    .restart local v33    # "normX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    sub-float v3, v33, v35

    mul-float/2addr v2, v3

    div-float v2, v2, v32

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 631
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v24

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v24

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v24

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_3f1

    .line 636
    .end local v32    # "newWidth":F
    .end local v33    # "normX":F
    .end local v35    # "pad":F
    :cond_6a3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3f1

    .line 637
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v24

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 638
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v24

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v24

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v24

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_3f1

    .line 650
    :cond_6ef
    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_6fd

    .line 652
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    .line 656
    :cond_6fd
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    const/16 v18, 0x0

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    .line 660
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 662
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    goto/16 :goto_67

    .line 534
    :pswitch_data_742
    .packed-switch 0x1
        :pswitch_3f5
        :pswitch_3fd
        :pswitch_43c
        :pswitch_51f
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xf

    const/16 v3, 0xa

    .line 888
    new-array v1, v3, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    .line 889
    new-array v1, v3, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 891
    new-array v1, v4, [Landroid/media/WFDUibcManager$Keyevnt_arrC;

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    .line 894
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, v3, :cond_29

    .line 895
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v1, v0

    .line 896
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v1, v0

    .line 894
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 898
    :cond_29
    const/4 v0, 0x0

    :goto_2a
    if-ge v0, v4, :cond_3a

    .line 899
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    new-instance v2, Landroid/media/WFDUibcManager$Keyevnt_arrC;

    iget-object v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-direct {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;-><init>(Landroid/media/WFDUibcManager;)V

    aput-object v2, v1, v0

    .line 898
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 901
    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    if-ge v0, v4, :cond_5f

    .line 902
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v1, v1, v0

    const/4 v2, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v1, v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$702(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 903
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v1, v1, v0

    const-wide/16 v2, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v1, v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$802(Landroid/media/WFDUibcManager$Keyevnt_arrC;J)J

    .line 904
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v1, v1, v0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v1, v5}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$1002(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 905
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v1, v1, v0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v1, v5}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$902(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 907
    :cond_5f
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 908
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    .line 910
    :cond_77
    :goto_77
    iget-boolean v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    if-eqz v1, :cond_99

    .line 911
    invoke-virtual {p0}, Landroid/media/WFDUibcManager$EventDispatcher;->getNextEvent()Landroid/view/InputEvent;

    move-result-object v1

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    .line 912
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    if-eqz v1, :cond_77

    .line 919
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_8f

    .line 920
    invoke-direct {p0}, Landroid/media/WFDUibcManager$EventDispatcher;->handleMotionEvent()V

    goto :goto_77

    .line 922
    :cond_8f
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_77

    .line 923
    invoke-direct {p0}, Landroid/media/WFDUibcManager$EventDispatcher;->handleKeyEvent()V

    goto :goto_77

    .line 926
    :cond_99
    return-void
.end method
