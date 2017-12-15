.class public Lcom/samsung/android/writingbuddy/PopupCue;
.super Ljava/lang/Object;
.source "PopupCue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENABLE_FLOATING_VISUAL_CUE_POSITION_X:Z = false

.field private static final ENABLE_FLOATING_VISUAL_CUE_POSITION_Y:Z = false

.field private static final TAG:Ljava/lang/String; = "WritingBuddyPopupCue"

.field public static final TYPE_MULTILINE_EDITOR:I = 0x2

.field public static final TYPE_NONFORM_VIEW:I = 0x3

.field public static final TYPE_SINGLELINE_EDITOR:I = 0x1


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

.field private mHoverListner:Landroid/view/View$OnHoverListener;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mIsAirButtonClicked:Z

.field private mIsShowing:Z

.field private mPopupHeight:I

.field private mPopupPosX:I

.field private mPopupPosY:I

.field private mPopupWidth:I

.field private mPopupXfromAnchor:I

.field private mPopupYfromAnchor:I

.field private mTouchListner:Landroid/view/View$OnTouchListener;

.field private mType:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/writingbuddy/PopupCue;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIWindowManager:Landroid/view/IWindowManager;

    .line 98
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/PopupCue;->initPopup()V

    .line 102
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/writingbuddy/PopupCue;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/PopupCue;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsAirButtonClicked:Z

    return p1
.end method

.method private computePosition(ILandroid/view/MotionEvent;)V
    .registers 32
    .param p1, "type"    # I
    .param p2, "motionevent"    # Landroid/view/MotionEvent;

    .prologue
    .line 223
    const/4 v4, 0x0

    .line 224
    .local v4, "cueWidth":I
    const/4 v3, 0x0

    .line 225
    .local v3, "cueHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->getHoverCueDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 226
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_16

    .line 227
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 228
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 236
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowToken:Landroid/os/IBinder;

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/samsung/android/writingbuddy/PopupCue;->getVisibleRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v21

    .line 239
    .local v21, "visibleScrRect":Landroid/graphics/Rect;
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v21}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 240
    .local v20, "visibleRect":Landroid/graphics/Rect;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 241
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 243
    const/4 v15, 0x0

    .line 244
    .local v15, "paddingLeft":I
    const/16 v16, 0x0

    .line 245
    .local v16, "paddingTop":I
    const/4 v14, 0x0

    .line 247
    .local v14, "paddingBottom":I
    const/16 v22, 0x0

    .line 248
    .local v22, "x":I
    const/16 v24, 0x0

    .line 250
    .local v24, "y":I
    const/16 v23, 0x0

    .line 251
    .local v23, "xFromAnchor":I
    const/16 v25, 0x0

    .line 265
    .local v25, "yFromAnchor":I
    const/16 v17, 0x0

    .line 266
    .local v17, "position_offset":I
    const/4 v12, 0x0

    .line 267
    .local v12, "minX":I
    const/4 v11, 0x0

    .line 268
    .local v11, "maxX":I
    const/4 v9, 0x0

    .line 269
    .local v9, "mX":I
    const/4 v10, 0x0

    .line 270
    .local v10, "mY":I
    if-eqz p2, :cond_73

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    move/from16 v0, v26

    float-to-int v9, v0

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    move/from16 v0, v26

    float-to-int v10, v0

    .line 274
    :cond_73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v26, v0

    if-eqz v26, :cond_1e6

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/EditText;

    .line 278
    .local v19, "targetView":Landroid/widget/EditText;
    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v7

    .line 280
    .local v7, "l":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x1050205

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v13, v0

    .line 282
    .local v13, "offestFromCursor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x1050206

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v6, v0

    .line 284
    .local v6, "imagePaddingBottom":I
    if-eqz v7, :cond_1b6

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getBaseline()I

    move-result v26

    if-lez v26, :cond_1b6

    .line 286
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v26

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v27

    sub-int v8, v26, v27

    .line 287
    .local v8, "layoutHeight":I
    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getBaseline()I

    move-result v26

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v27

    add-int v26, v26, v27

    div-int/lit8 v27, v8, 0x2

    sub-int v2, v26, v27

    .line 289
    .local v2, "centerYofText":I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    add-int v26, v26, v2

    sub-int v27, v3, v6

    sub-int v24, v26, v27

    .line 298
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v26, v0

    check-cast v26, Landroid/widget/EditText;

    invoke-virtual/range {v26 .. v26}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v26

    add-int v22, v27, v26

    .line 299
    add-int v22, v22, v13

    .line 333
    .end local v8    # "layoutHeight":I
    :goto_103
    add-int v26, v22, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_119

    .line 334
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v22, v26, v4

    .line 346
    :cond_119
    if-gez v22, :cond_11d

    const/16 v22, 0x0

    .line 347
    :cond_11d
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/PopupCue;->getStatusBarHeight()I

    move-result v18

    .line 348
    .local v18, "statusBarHeight":I
    move/from16 v0, v24

    move/from16 v1, v18

    if-ge v0, v1, :cond_12f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/PopupCue;->isStatusBarShowing()Z

    move-result v26

    if-eqz v26, :cond_12f

    .line 349
    move/from16 v24, v18

    .line 351
    :cond_12f
    if-gez v24, :cond_133

    const/16 v24, 0x0

    .line 353
    :cond_133
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v23, v22, v26

    .line 354
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v25, v24, v26

    .line 381
    .end local v2    # "centerYofText":I
    .end local v6    # "imagePaddingBottom":I
    .end local v7    # "l":Landroid/text/Layout;
    .end local v13    # "offestFromCursor":I
    .end local v18    # "statusBarHeight":I
    .end local v19    # "targetView":Landroid/widget/EditText;
    :goto_143
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupXfromAnchor:I

    .line 382
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupYfromAnchor:I

    .line 384
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    .line 385
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    .line 387
    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    .line 388
    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    .line 390
    sget-boolean v26, Lcom/samsung/android/writingbuddy/PopupCue;->DEBUG:Z

    if-eqz v26, :cond_1b5

    .line 391
    const-string v26, "WritingBuddyPopupCue"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "computePosition x : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " y : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " w : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " h : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_1b5
    return-void

    .line 321
    .restart local v6    # "imagePaddingBottom":I
    .restart local v7    # "l":Landroid/text/Layout;
    .restart local v13    # "offestFromCursor":I
    .restart local v19    # "targetView":Landroid/widget/EditText;
    :cond_1b6
    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v15

    .line 322
    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v16

    .line 323
    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v14

    .line 325
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    add-int v22, v26, v15

    .line 326
    add-int v22, v22, v13

    .line 328
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v26

    add-int v27, v16, v14

    sub-int v26, v26, v27

    div-int/lit8 v26, v26, 0x2

    add-int v2, v16, v26

    .line 330
    .restart local v2    # "centerYofText":I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    add-int v26, v26, v2

    sub-int v27, v3, v6

    sub-int v24, v26, v27

    goto/16 :goto_103

    .line 358
    .end local v2    # "centerYofText":I
    .end local v6    # "imagePaddingBottom":I
    .end local v7    # "l":Landroid/text/Layout;
    .end local v13    # "offestFromCursor":I
    .end local v19    # "targetView":Landroid/widget/EditText;
    :cond_1e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x1050203

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v15, v0

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x1050204

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v16, v0

    .line 363
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    add-int v22, v26, v15

    .line 364
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    add-int v24, v26, v16

    .line 366
    add-int v26, v22, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_236

    .line 367
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v22, v26, v4

    .line 370
    :cond_236
    add-int v26, v24, v3

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_24c

    .line 371
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v24, v26, v3

    .line 374
    :cond_24c
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_25e

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    .line 375
    :cond_25e
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_270

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    .line 377
    :cond_270
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v23, v22, v26

    .line 378
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v25, v24, v26

    goto/16 :goto_143
.end method

.method private convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .registers 6
    .param p1, "dp"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 749
    move-object v0, p2

    .line 750
    .local v0, "dm":Landroid/util/DisplayMetrics;
    if-nez v0, :cond_11

    .line 751
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 753
    :cond_11
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private createPopup()V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    if-nez v0, :cond_23

    .line 121
    new-instance v0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;-><init>(Lcom/samsung/android/writingbuddy/PopupCue;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    .line 123
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mTouchListner:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_18

    .line 124
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mTouchListner:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    :cond_18
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mHoverListner:Landroid/view/View$OnHoverListener;

    if-eqz v0, :cond_23

    .line 127
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mHoverListner:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 130
    :cond_23
    return-void
.end method

.method private createPopupLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .registers 5

    .prologue
    .line 133
    sget-boolean v1, Lcom/samsung/android/writingbuddy/PopupCue;->DEBUG:Z

    if-eqz v1, :cond_42

    .line 134
    const-string v1, "WritingBuddyPopupCue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPopupLayoutParam() x : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  w : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_42
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 140
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 141
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 142
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 143
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 144
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 145
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 146
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WritingBuddyCue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 150
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 151
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 152
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 153
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 154
    const v1, 0x10304e7

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 156
    return-object v0
.end method

.method private getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 521
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 523
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz p1, :cond_27

    .line 524
    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_28

    .line 527
    .local v0, "locInWindow":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 528
    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 531
    .end local v0    # "locInWindow":[I
    :cond_27
    return-object v1

    .line 524
    :array_28
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 507
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 509
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz p1, :cond_27

    .line 510
    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_28

    .line 513
    .local v0, "locOnScr":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 514
    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 517
    .end local v0    # "locOnScr":[I
    :cond_27
    return-object v1

    .line 510
    :array_28
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getStatusBarHeight()I
    .registers 5

    .prologue
    .line 737
    const/4 v1, 0x0

    .line 739
    .local v1, "height":I
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 745
    :goto_e
    return v1

    .line 741
    :catch_f
    move-exception v0

    .line 742
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "WritingBuddyPopupCue"

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method private getVisibleRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 535
    invoke-direct {p0, p1}, Lcom/samsung/android/writingbuddy/PopupCue;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 537
    .local v3, "r":Landroid/graphics/Rect;
    move-object v5, p1

    .line 538
    .local v5, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 540
    .local v6, "vp":Landroid/view/ViewParent;
    const/4 v4, 0x0

    .line 541
    .local v4, "top":I
    const/4 v0, 0x0

    .line 543
    .local v0, "bottomDiff":I
    :goto_b
    instance-of v7, v6, Landroid/view/View;

    if-eqz v7, :cond_69

    move-object v2, v6

    .line 544
    check-cast v2, Landroid/view/View;

    .line 547
    .local v2, "parent":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v4, v7

    .line 548
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    if-lez v7, :cond_2f

    .line 549
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    if-le v7, v4, :cond_55

    .line 550
    iget v7, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v8, v4

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->top:I

    .line 551
    const/4 v4, 0x0

    .line 570
    :cond_2f
    :goto_2f
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int v1, v7, v8

    .line 571
    .local v1, "bottomPosY":I
    add-int v7, v1, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_5b

    .line 572
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v8, v1, v0

    sub-int/2addr v7, v8

    neg-int v0, v7

    .line 578
    :goto_4f
    move-object v5, v2

    .line 579
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 580
    goto :goto_b

    .line 553
    .end local v1    # "bottomPosY":I
    :cond_55
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v4, v7

    goto :goto_2f

    .line 574
    .restart local v1    # "bottomPosY":I
    :cond_5b
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int v8, v1, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 575
    const/4 v0, 0x0

    goto :goto_4f

    .line 582
    .end local v1    # "bottomPosY":I
    .end local v2    # "parent":Landroid/view/View;
    :cond_69
    const-string v7, "WritingBuddyPopupCue"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVisibleRectInWindow : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-object v3
.end method

.method private getVisibleRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 587
    invoke-direct {p0, p1}, Lcom/samsung/android/writingbuddy/PopupCue;->getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 589
    .local v3, "r":Landroid/graphics/Rect;
    move-object v5, p1

    .line 590
    .local v5, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 592
    .local v6, "vp":Landroid/view/ViewParent;
    const/4 v4, 0x0

    .line 593
    .local v4, "top":I
    const/4 v0, 0x0

    .line 595
    .local v0, "bottomDiff":I
    :goto_b
    instance-of v7, v6, Landroid/view/View;

    if-eqz v7, :cond_69

    move-object v2, v6

    .line 596
    check-cast v2, Landroid/view/View;

    .line 599
    .local v2, "parent":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v4, v7

    .line 600
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    if-lez v7, :cond_2f

    .line 601
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    if-le v7, v4, :cond_55

    .line 602
    iget v7, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v8, v4

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->top:I

    .line 603
    const/4 v4, 0x0

    .line 623
    :cond_2f
    :goto_2f
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int v1, v7, v8

    .line 624
    .local v1, "bottomPosY":I
    add-int v7, v1, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_5b

    .line 625
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v8, v1, v0

    sub-int/2addr v7, v8

    neg-int v0, v7

    .line 631
    :goto_4f
    move-object v5, v2

    .line 632
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 633
    goto :goto_b

    .line 605
    .end local v1    # "bottomPosY":I
    :cond_55
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v4, v7

    goto :goto_2f

    .line 627
    .restart local v1    # "bottomPosY":I
    :cond_5b
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int v8, v1, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 628
    const/4 v0, 0x0

    goto :goto_4f

    .line 635
    .end local v1    # "bottomPosY":I
    .end local v2    # "parent":Landroid/view/View;
    :cond_69
    const-string v7, "WritingBuddyPopupCue"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVisibleRectOnScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-object v3
.end method

.method private initPopup()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    iput v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    .line 106
    iput v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    .line 107
    iput v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    .line 108
    iput v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    .line 110
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mType:I

    .line 111
    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsShowing:Z

    .line 112
    iput-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowToken:Landroid/os/IBinder;

    .line 113
    iput-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    .line 114
    iput-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    .line 115
    iput-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mTouchListner:Landroid/view/View$OnTouchListener;

    .line 116
    iput-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mHoverListner:Landroid/view/View$OnHoverListener;

    .line 117
    return-void
.end method

.method private pointInView(Landroid/view/View;FF)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "localX"    # F
    .param p3, "localY"    # F

    .prologue
    const/4 v2, 0x0

    .line 502
    cmpl-float v0, p2, v2

    if-ltz v0, :cond_27

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_27

    cmpl-float v0, p3, v2

    if-ltz v0, :cond_27

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_27

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 8
    .param p1, "animation"    # Z

    .prologue
    const/4 v4, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    if-eqz v3, :cond_34

    .line 204
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-virtual {v3}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 205
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_2d

    move-object v2, v1

    .line 206
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 207
    .local v2, "wlp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_3c

    const v0, 0x10304e7

    .line 209
    .local v0, "animationResID":I
    :goto_1d
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v3, v0, :cond_2d

    move-object v3, v1

    .line 210
    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 211
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-interface {v3, v5, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    .end local v0    # "animationResID":I
    .end local v2    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_2d
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-interface {v3, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 217
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_34
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    .line 218
    iput-boolean v4, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsShowing:Z

    .line 219
    iput-boolean v4, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsAirButtonClicked:Z

    .line 220
    return-void

    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v2    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_3c
    move v0, v4

    .line 207
    goto :goto_1d
.end method

.method public getIWindowManager()Landroid/view/IWindowManager;
    .registers 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_11

    .line 730
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIWindowManager:Landroid/view/IWindowManager;

    .line 733
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method public getRectInAnchor()Landroid/graphics/Rect;
    .registers 4

    .prologue
    .line 479
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 480
    .local v0, "r":Landroid/graphics/Rect;
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupXfromAnchor:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 481
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupYfromAnchor:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 482
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 483
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 485
    return-object v0
.end method

.method public isAirButtonClicked()Z
    .registers 2

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsAirButtonClicked:Z

    return v0
.end method

.method public isPointInPopup(FF)Z
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 495
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_19

    iget v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_19

    cmpl-float v0, p2, v1

    if-ltz v0, :cond_19

    iget v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_19

    .line 496
    const/4 v0, 0x1

    .line 498
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsShowing:Z

    return v0
.end method

.method public isStatusBarShowing()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 711
    invoke-virtual {p0}, Lcom/samsung/android/writingbuddy/PopupCue;->getIWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    .line 713
    .local v1, "wm":Landroid/view/IWindowManager;
    :try_start_5
    invoke-interface {v1}, Landroid/view/IWindowManager;->isStatusBarVisible()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_d

    move-result v3

    if-eqz v3, :cond_c

    .line 714
    const/4 v2, 0x1

    .line 721
    :cond_c
    :goto_c
    return v2

    .line 718
    :catch_d
    move-exception v0

    .line 719
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WritingBuddyPopupCue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnHoverListener;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mHoverListner:Landroid/view/View$OnHoverListener;

    .line 461
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    if-eqz v0, :cond_b

    .line 462
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 464
    :cond_b
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mTouchListner:Landroid/view/View$OnTouchListener;

    .line 449
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    if-eqz v0, :cond_b

    .line 450
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 452
    :cond_b
    return-void
.end method

.method public setPosition(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 430
    iput p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    .line 431
    iput p2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    .line 432
    return-void
.end method

.method public setSize(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 420
    iput p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    .line 421
    iput p2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    .line 422
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowToken:Landroid/os/IBinder;

    .line 440
    return-void
.end method

.method public show(ILandroid/view/MotionEvent;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "motionevent"    # Landroid/view/MotionEvent;

    .prologue
    .line 173
    iput p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mType:I

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsAirButtonClicked:Z

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v0

    if-nez v0, :cond_30

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/PopupCue;->createPopup()V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_1f

    .line 180
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    .line 182
    :cond_1f
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/writingbuddy/PopupCue;->computePosition(ILandroid/view/MotionEvent;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/PopupCue;->createPopupLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsShowing:Z

    .line 188
    :cond_30
    return-void
.end method

.method public switchCueButton(Z)V
    .registers 3
    .param p1, "isTouched"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->switchCueButton(Z)V

    .line 196
    return-void
.end method

.method public updatePopupPosition(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "motionevent"    # Landroid/view/MotionEvent;

    .prologue
    .line 400
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-virtual {v1}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 402
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    sget-boolean v1, Lcom/samsung/android/writingbuddy/PopupCue;->DEBUG:Z

    if-eqz v1, :cond_14

    .line 403
    const-string v1, "WritingBuddyPopupCue"

    const-string/jumbo v2, "updatePopupPosition()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_14
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mType:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/writingbuddy/PopupCue;->computePosition(ILandroid/view/MotionEvent;)V

    .line 408
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 409
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 410
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 411
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 413
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    return-void
.end method
