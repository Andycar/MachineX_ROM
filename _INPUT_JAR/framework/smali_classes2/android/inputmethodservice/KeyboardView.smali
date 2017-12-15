.class public Landroid/inputmethodservice/KeyboardView;
.super Landroid/view/View;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/KeyboardView$SwipeTracker;,
        Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    }
.end annotation


# static fields
.field private static final DEBOUNCE_TIME:I = 0x46

.field private static final DEBUG:Z = false

.field private static final DELAY_AFTER_PREVIEW:I = 0x46

.field private static final DELAY_BEFORE_PREVIEW:I = 0x0

.field private static final KEY_DELETE:[I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESSABLE_STATE_SET:[I

.field private static MAX_NEARBY_KEYS:I = 0x0

.field private static final MSG_LONGPRESS:I = 0x4

.field private static final MSG_REMOVE_PREVIEW:I = 0x2

.field private static final MSG_REPEAT:I = 0x3

.field private static final MSG_SHOW_PREVIEW:I = 0x1

.field private static final MULTITAP_INTERVAL:I = 0x320

.field private static final NOT_A_KEY:I = -0x1

.field private static final REPEAT_INTERVAL:I = 0x32

.field private static final REPEAT_START_DELAY:I = 0x190


# instance fields
.field private mAbortKey:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDimAmount:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClipRegion:Landroid/graphics/Rect;

.field private final mCoordinates:[I

.field private mCurrentKey:I

.field private mCurrentKeyIndex:I

.field private mCurrentKeyTime:J

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDisambiguateSwipe:Z

.field private mDistances:[I

.field private mDownKey:I

.field private mDownTime:J

.field private mDrawPending:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mHeadsetRequiredToHearPasswordsAnnounced:Z

.field private mInMultiTap:Z

.field private mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyIndices:[I

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field private mKeyboard:Landroid/inputmethodservice/Keyboard;

.field private mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

.field private mKeyboardChanged:Z

.field private mKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mLabelTextSize:I

.field private mLastCodeX:I

.field private mLastCodeY:I

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLastMoveTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field private mLastX:I

.field private mLastY:I

.field private mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

.field private mMiniKeyboardCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardContainer:Landroid/view/View;

.field private mMiniKeyboardOffsetX:I

.field private mMiniKeyboardOffsetY:I

.field private mMiniKeyboardOnScreen:Z

.field private mOldPointerCount:I

.field private mOldPointerX:F

.field private mOldPointerY:F

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPopupKeyboard:Landroid/widget/PopupWindow;

.field private mPopupLayout:I

.field private mPopupParent:Landroid/view/View;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field private mPopupX:I

.field private mPopupY:I

.field private mPossiblePoly:Z

.field private mPreviewCentered:Z

.field private mPreviewHeight:I

.field private mPreviewLabel:Ljava/lang/StringBuilder;

.field private mPreviewOffset:I

.field private mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTextSizeLarge:I

.field private mProximityCorrectOn:Z

.field private mProximityThreshold:I

.field private mRepeatKeyIndex:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShowPreview:Z

.field private mShowTouchPoints:Z

.field private mStartX:I

.field private mStartY:I

.field private mSwipeThreshold:I

.field private mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

.field private mTapCount:I

.field private mVerticalCorrection:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-array v0, v3, [I

    const/4 v1, -0x5

    aput v1, v0, v2

    sput-object v0, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    .line 133
    new-array v0, v3, [I

    const v1, 0x101023c

    aput v1, v0, v2

    sput-object v0, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    .line 225
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    .line 227
    const/16 v0, 0xc

    sput v0, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 279
    const v0, 0x101054e

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 284
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 287
    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 136
    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 150
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    .line 177
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    .line 178
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 179
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/inputmethodservice/KeyboardView;->mShowTouchPoints:Z

    .line 198
    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 199
    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    .line 202
    const/16 v11, 0xc

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    .line 206
    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 210
    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 212
    new-instance v11, Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>(Landroid/inputmethodservice/KeyboardView$1;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    .line 217
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    .line 228
    sget v11, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    .line 236
    new-instance v11, Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 241
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 255
    new-instance v11, Landroid/inputmethodservice/KeyboardView$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/inputmethodservice/KeyboardView$1;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 289
    sget-object v11, Landroid/R$styleable;->KeyboardView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 292
    .local v4, "a":Landroid/content/res/TypedArray;
    const-string v11, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 296
    .local v7, "inflate":Landroid/view/LayoutInflater;
    const/4 v10, 0x0

    .line 297
    .local v10, "previewLayout":I
    const/4 v8, 0x0

    .line 299
    .local v8, "keyTextSize":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v9

    .line 301
    .local v9, "n":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_96
    if-ge v6, v9, :cond_10f

    .line 302
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 304
    .local v5, "attr":I
    packed-switch v5, :pswitch_data_212

    .line 301
    :goto_9f
    add-int/lit8 v6, v6, 0x1

    goto :goto_96

    .line 306
    :pswitch_a2
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_9f

    .line 309
    :pswitch_ab
    const/4 v11, 0x0

    invoke-virtual {v4, v5, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    goto :goto_9f

    .line 312
    :pswitch_b5
    const/4 v11, 0x0

    invoke-virtual {v4, v5, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 313
    goto :goto_9f

    .line 315
    :pswitch_bb
    const/4 v11, 0x0

    invoke-virtual {v4, v5, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    goto :goto_9f

    .line 318
    :pswitch_c5
    const/16 v11, 0x50

    invoke-virtual {v4, v5, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    goto :goto_9f

    .line 321
    :pswitch_d0
    const/16 v11, 0x12

    invoke-virtual {v4, v5, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    goto :goto_9f

    .line 324
    :pswitch_db
    const/high16 v11, -0x1000000

    invoke-virtual {v4, v5, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    goto :goto_9f

    .line 327
    :pswitch_e6
    const/16 v11, 0xe

    invoke-virtual {v4, v5, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    goto :goto_9f

    .line 330
    :pswitch_f1
    const/4 v11, 0x0

    invoke-virtual {v4, v5, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    goto :goto_9f

    .line 333
    :pswitch_fb
    const/4 v11, 0x0

    invoke-virtual {v4, v5, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    goto :goto_9f

    .line 336
    :pswitch_105
    const/4 v11, 0x0

    invoke-virtual {v4, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    goto :goto_9f

    .line 341
    .end local v5    # "attr":I
    :cond_10f
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v11, v12}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 343
    const/4 v11, 0x2

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    .line 346
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 348
    new-instance v11, Landroid/widget/PopupWindow;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 349
    if-eqz v10, :cond_20a

    .line 350
    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 351
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getTextSize()F

    move-result v11

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    .line 352
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 358
    :goto_15f
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 360
    new-instance v11, Landroid/widget/PopupWindow;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 361
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 364
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 367
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 368
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 369
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    int-to-float v12, v8

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 370
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/16 v12, 0xff

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 373
    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 374
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    .line 375
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 377
    const/high16 v11, 0x43fa0000    # 500.0f

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    .line 378
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1120039

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    .line 381
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 382
    const-string v11, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mAudioManager:Landroid/media/AudioManager;

    .line 384
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 385
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->initGestureDetector()V

    .line 386
    return-void

    .line 355
    :cond_20a
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    goto/16 :goto_15f

    .line 304
    nop

    :pswitch_data_212
    .packed-switch 0x0
        :pswitch_fb
        :pswitch_105
        :pswitch_a2
        :pswitch_d0
        :pswitch_e6
        :pswitch_db
        :pswitch_b5
        :pswitch_bb
        :pswitch_c5
        :pswitch_ab
        :pswitch_f1
    .end packed-switch
.end method

.method static synthetic access$100(Landroid/inputmethodservice/KeyboardView;I)V
    .registers 2
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/inputmethodservice/KeyboardView;)I
    .registers 2
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    return v0
.end method

.method static synthetic access$1100(Landroid/inputmethodservice/KeyboardView;)I
    .registers 2
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    return v0
.end method

.method static synthetic access$1200(Landroid/inputmethodservice/KeyboardView;IIIJ)V
    .registers 6
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .prologue
    .line 69
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    return-void
.end method

.method static synthetic access$1300(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .registers 2
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/inputmethodservice/KeyboardView;)V
    .registers 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method static synthetic access$200(Landroid/inputmethodservice/KeyboardView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/inputmethodservice/KeyboardView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/inputmethodservice/KeyboardView;Landroid/view/MotionEvent;)Z
    .registers 3
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/inputmethodservice/KeyboardView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    return v0
.end method

.method static synthetic access$600(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;
    .registers 2
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    return-object v0
.end method

.method static synthetic access$700(Landroid/inputmethodservice/KeyboardView;)I
    .registers 2
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    return v0
.end method

.method static synthetic access$800(Landroid/inputmethodservice/KeyboardView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    return v0
.end method

.method static synthetic access$900(Landroid/inputmethodservice/KeyboardView;)I
    .registers 2
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    return v0
.end method

.method private adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 583
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_24

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 585
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 587
    :cond_24
    return-object p1
.end method

.method private checkMultiTap(JI)V
    .registers 13
    .param p1, "eventTime"    # J
    .param p3, "keyIndex"    # I

    .prologue
    const-wide/16 v6, 0x320

    const/4 v2, 0x1

    const/4 v4, -0x1

    .line 1453
    if-ne p3, v4, :cond_7

    .line 1469
    :cond_6
    :goto_6
    return-void

    .line 1454
    :cond_7
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v0, v1, p3

    .line 1455
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v1, v1

    if-le v1, v2, :cond_2b

    .line 1456
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    .line 1457
    iget-wide v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v2, v6

    cmp-long v1, p1, v2

    if-gez v1, :cond_28

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-ne p3, v1, :cond_28

    .line 1459
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    goto :goto_6

    .line 1462
    :cond_28
    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    goto :goto_6

    .line 1466
    :cond_2b
    iget-wide v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v2, v6

    cmp-long v1, p1, v2

    if-gtz v1, :cond_36

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-eq p3, v1, :cond_6

    .line 1467
    :cond_36
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    goto :goto_6
.end method

.method private computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V
    .registers 9
    .param p1, "keyboard"    # Landroid/inputmethodservice/Keyboard;

    .prologue
    .line 611
    if-nez p1, :cond_3

    .line 623
    :cond_2
    :goto_2
    return-void

    .line 612
    :cond_3
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 613
    .local v3, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v3, :cond_2

    .line 614
    array-length v4, v3

    .line 615
    .local v4, "length":I
    const/4 v0, 0x0

    .line 616
    .local v0, "dimensionSum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v4, :cond_1d

    .line 617
    aget-object v2, v3, v1

    .line 618
    .local v2, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget v5, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 616
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 620
    .end local v2    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_1d
    if-ltz v0, :cond_2

    if-eqz v4, :cond_2

    .line 621
    int-to-float v5, v0

    const v6, 0x3fb33333    # 1.4f

    mul-float/2addr v5, v6

    int-to-float v6, v4

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    .line 622
    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    mul-int/2addr v5, v6

    iput v5, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    goto :goto_2
.end method

.method private detectAndSendKey(IIIJ)V
    .registers 12
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 810
    if-eq p1, v5, :cond_21

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v3, v3

    if-ge p1, v3, :cond_21

    .line 811
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v3, p1

    .line 812
    .local v2, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_22

    .line 813
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 814
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v3, v5}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 833
    :goto_1d
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    .line 834
    iput-wide p4, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .line 836
    .end local v2    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_21
    return-void

    .line 816
    .restart local v2    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_22
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v3, v4

    .line 818
    .local v0, "code":I
    sget v3, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v1, v3, [I

    .line 819
    .local v1, "codes":[I
    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    .line 820
    invoke-direct {p0, p2, p3, v1}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    .line 822
    iget-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz v3, :cond_46

    .line 823
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-eq v3, v5, :cond_51

    .line 824
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 v4, -0x5

    sget-object v5, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    invoke-interface {v3, v4, v5}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 828
    :goto_40
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    aget v0, v3, v4

    .line 830
    :cond_46
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v3, v0, v1}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 831
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v3, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_1d

    .line 826
    :cond_51
    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    goto :goto_40
.end method

.method private dismissPopupKeyboard()V
    .registers 2

    .prologue
    .line 1430
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1431
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1432
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1433
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 1435
    :cond_13
    return-void
.end method

.method private getKeyIndices(II[I)I
    .registers 25
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "allKeys"    # [I

    .prologue
    .line 759
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 760
    .local v13, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    const/16 v16, -0x1

    .line 761
    .local v16, "primaryIndex":I
    const/4 v5, -0x1

    .line 762
    .local v5, "closestKey":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    move/from16 v17, v0

    add-int/lit8 v6, v17, 0x1

    .line 763
    .local v6, "closestKeyDist":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v17, v0

    const v18, 0x7fffffff

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->fill([II)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;->getNearestKeys(II)[I

    move-result-object v15

    .line 765
    .local v15, "nearestKeyIndices":[I
    array-length v12, v15

    .line 766
    .local v12, "keyCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2d
    if-ge v8, v12, :cond_f4

    .line 767
    aget v17, v15, v8

    aget-object v11, v13, v17

    .line 768
    .local v11, "key":Landroid/inputmethodservice/Keyboard$Key;
    const/4 v7, 0x0

    .line 769
    .local v7, "dist":I
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v9

    .line 770
    .local v9, "isInside":Z
    if-eqz v9, :cond_40

    .line 771
    aget v16, v15, v8

    .line 774
    :cond_40
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5a

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v7, v0, :cond_5c

    :cond_5a
    if-eqz v9, :cond_7a

    :cond_5c
    iget-object v0, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    const/16 v18, 0x20

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7a

    .line 779
    iget-object v0, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v14, v0

    .line 780
    .local v14, "nCodes":I
    if-ge v7, v6, :cond_78

    .line 781
    move v6, v7

    .line 782
    aget v5, v15, v8

    .line 785
    :cond_78
    if-nez p3, :cond_7d

    .line 766
    .end local v14    # "nCodes":I
    :cond_7a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 787
    .restart local v14    # "nCodes":I
    :cond_7d
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_7a

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v17, v0

    aget v17, v17, v10

    move/from16 v0, v17

    if-le v0, v7, :cond_f1

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v18, v0

    add-int v19, v10, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    sub-int v20, v20, v10

    sub-int v20, v20, v14

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v10, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 792
    add-int v17, v10, v14

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, v10

    sub-int v18, v18, v14

    move-object/from16 v0, p3

    move-object/from16 v1, p3

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v10, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 794
    const/4 v4, 0x0

    .local v4, "c":I
    :goto_d8
    if-ge v4, v14, :cond_7a

    .line 795
    add-int v17, v10, v4

    iget-object v0, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v18, v0

    aget v18, v18, v4

    aput v18, p3, v17

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v17, v0

    add-int v18, v10, v4

    aput v7, v17, v18

    .line 794
    add-int/lit8 v4, v4, 0x1

    goto :goto_d8

    .line 787
    .end local v4    # "c":I
    :cond_f1
    add-int/lit8 v10, v10, 0x1

    goto :goto_7e

    .line 803
    .end local v7    # "dist":I
    .end local v9    # "isInside":Z
    .end local v10    # "j":I
    .end local v11    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v14    # "nCodes":I
    :cond_f4
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_fe

    .line 804
    move/from16 v16, v5

    .line 806
    :cond_fe
    return v16
.end method

.method private getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    const/4 v0, 0x0

    .line 842
    iget-boolean v1, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz v1, :cond_22

    .line 844
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 845
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-gez v3, :cond_1f

    :goto_12
    aget v0, v2, v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 846
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 848
    :goto_1e
    return-object v0

    .line 845
    :cond_1f
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    goto :goto_12

    .line 848
    :cond_22
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1e
.end method

.method private initGestureDetector()V
    .registers 4

    .prologue
    .line 390
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/KeyboardView$2;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/KeyboardView$2;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 442
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 443
    return-void
.end method

.method private onBufferDraw()V
    .registers 27

    .prologue
    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v2, :cond_67

    .line 646
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_34

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v2, :cond_5f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_5f

    .line 649
    :cond_34
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 650
    .local v24, "width":I
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 651
    .local v13, "height":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v24

    invoke-static {v0, v13, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 652
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 654
    .end local v13    # "height":I
    .end local v24    # "width":I
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 655
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    .line 657
    :cond_67
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 658
    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v2, :cond_7b

    .line 756
    :goto_7a
    return-void

    .line 662
    :cond_7b
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 663
    .local v6, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    .line 664
    .local v19, "keyBackground":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 665
    .local v8, "clipRegion":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 666
    .local v23, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    move/from16 v16, v0

    .line 667
    .local v16, "kbdPaddingLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    move/from16 v17, v0

    .line 668
    .local v17, "kbdPaddingTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object/from16 v21, v0

    .line 669
    .local v21, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 671
    .local v15, "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 672
    const/4 v9, 0x0

    .line 673
    .local v9, "drawSingleKey":Z
    if-eqz v15, :cond_e4

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 675
    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int v2, v2, v16

    add-int/lit8 v2, v2, -0x1

    iget v3, v8, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_e4

    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int v2, v2, v17

    add-int/lit8 v2, v2, -0x1

    iget v3, v8, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_e4

    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    add-int v2, v2, v16

    add-int/lit8 v2, v2, 0x1

    iget v3, v8, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_e4

    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v2, v3

    add-int v2, v2, v17

    add-int/lit8 v2, v2, 0x1

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_e4

    .line 679
    const/4 v9, 0x1

    .line 682
    :cond_e4
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 683
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v20, v0

    .line 684
    .local v20, "keyCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_f0
    move/from16 v0, v20

    if-ge v14, v0, :cond_264

    .line 685
    aget-object v18, v21, v14

    .line 686
    .local v18, "key":Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v9, :cond_ff

    move-object/from16 v0, v18

    if-eq v15, v0, :cond_ff

    .line 684
    :goto_fc
    add-int/lit8 v14, v14, 0x1

    goto :goto_f0

    .line 689
    :cond_ff
    invoke-virtual/range {v18 .. v18}, Landroid/inputmethodservice/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v10

    .line 690
    .local v10, "drawableState":[I
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 693
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v2, :cond_1cf

    const/16 v22, 0x0

    .line 695
    .local v22, "label":Ljava/lang/String;
    :goto_110
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 696
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    if-ne v2, v3, :cond_124

    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_133

    .line 698
    :cond_124
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 700
    :cond_133
    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int v2, v2, v16

    int-to-float v2, v2

    move-object/from16 v0, v18

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int v3, v3, v17

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 701
    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 703
    if-eqz v22, :cond_1ee

    .line 705
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1df

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1df

    .line 706
    move-object/from16 v0, p0

    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 707
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 713
    :goto_167
    move-object/from16 v0, p0

    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 715
    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, v18

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, v22

    invoke-virtual {v1, v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 722
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 734
    :cond_1ba
    :goto_1ba
    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    neg-int v2, v2

    sub-int v2, v2, v16

    int-to-float v2, v2

    move-object/from16 v0, v18

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    neg-int v3, v3

    sub-int v3, v3, v17

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_fc

    .line 693
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v22    # "label":Ljava/lang/String;
    :cond_1cf
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_110

    .line 709
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v22    # "label":Ljava/lang/String;
    :cond_1df
    move-object/from16 v0, p0

    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 710
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_167

    .line 723
    :cond_1ee
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1ba

    .line 724
    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int v11, v2, v3

    .line 726
    .local v11, "drawableX":I
    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int v12, v2, v3

    .line 728
    .local v12, "drawableY":I
    int-to-float v2, v11

    int-to-float v3, v12

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 729
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 731
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 732
    neg-int v2, v11

    int-to-float v2, v2

    neg-int v3, v12

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_1ba

    .line 736
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v10    # "drawableState":[I
    .end local v11    # "drawableX":I
    .end local v12    # "drawableY":I
    .end local v18    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v22    # "label":Ljava/lang/String;
    :cond_264
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 738
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v2, :cond_28b

    .line 739
    move-object/from16 v0, p0

    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 740
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 754
    :cond_28b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_7a
.end method

.method private onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z
    .registers 15
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "possiblePoly"    # Z

    .prologue
    .line 1236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    sub-int v2, v0, v1

    .line 1237
    .local v2, "touchX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    sub-int v3, v0, v1

    .line 1238
    .local v3, "touchY":I
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    neg-int v0, v0

    if-lt v3, v0, :cond_1a

    .line 1239
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    add-int/2addr v3, v0

    .line 1240
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 1241
    .local v6, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 1242
    .local v4, "eventTime":J
    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    move-result v8

    .line 1243
    .local v8, "keyIndex":I
    iput-boolean p2, p0, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    .line 1246
    if-nez v6, :cond_30

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->clear()V

    .line 1247
    :cond_30
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1250
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-eqz v0, :cond_40

    if-eqz v6, :cond_40

    const/4 v0, 0x3

    if-eq v6, v0, :cond_40

    .line 1252
    const/4 v0, 0x1

    .line 1380
    :goto_3f
    return v0

    .line 1255
    :cond_40
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1256
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1257
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1258
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1259
    const/4 v0, 0x1

    goto :goto_3f

    .line 1264
    :cond_5a
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v0, :cond_63

    const/4 v0, 0x3

    if-eq v6, v0, :cond_63

    .line 1265
    const/4 v0, 0x1

    goto :goto_3f

    .line 1268
    :cond_63
    packed-switch v6, :pswitch_data_1e2

    .line 1378
    :goto_66
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    .line 1379
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    .line 1380
    const/4 v0, 0x1

    goto :goto_3f

    .line 1270
    :pswitch_6c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 1271
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    .line 1272
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    .line 1273
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1274
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 1275
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1276
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1277
    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1278
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1279
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    .line 1280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    .line 1281
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    .line 1282
    invoke-direct {p0, v4, v5, v8}, Landroid/inputmethodservice/KeyboardView;->checkMultiTap(JI)V

    .line 1283
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 v0, -0x1

    if-eq v8, v0, :cond_cf

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v0, v0, v8

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v10, 0x0

    aget v0, v0, v10

    :goto_a1
    invoke-interface {v1, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 1285
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz v0, :cond_d1

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    aget-object v0, v0, v1

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-eqz v0, :cond_d1

    .line 1286
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 1287
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1288
    .local v9, "msg":Landroid/os/Message;
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x190

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1289
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    .line 1291
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-eqz v0, :cond_d1

    .line 1292
    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    goto :goto_66

    .line 1283
    .end local v9    # "msg":Landroid/os/Message;
    :cond_cf
    const/4 v0, 0x0

    goto :goto_a1

    .line 1296
    :cond_d1
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e5

    .line 1297
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1298
    .restart local v9    # "msg":Landroid/os/Message;
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v10, v1

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1300
    .end local v9    # "msg":Landroid/os/Message;
    :cond_e5
    invoke-direct {p0, v8}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    goto/16 :goto_66

    .line 1304
    :pswitch_ea
    const/4 v7, 0x0

    .line 1305
    .local v7, "continueLongPress":Z
    const/4 v0, -0x1

    if-eq v8, v0, :cond_fb

    .line 1306
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11e

    .line 1307
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1308
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    sub-long v0, v4, v0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1325
    :cond_fb
    :goto_fb
    if-nez v7, :cond_115

    .line 1327
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1329
    const/4 v0, -0x1

    if-eq v8, v0, :cond_115

    .line 1330
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1331
    .restart local v9    # "msg":Landroid/os/Message;
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v10, v1

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1334
    .end local v9    # "msg":Landroid/os/Message;
    :cond_115
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1335
    iput-wide v4, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    goto/16 :goto_66

    .line 1310
    :cond_11e
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v8, v0, :cond_12d

    .line 1311
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long v10, v4, v10

    add-long/2addr v0, v10

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1312
    const/4 v7, 0x1

    goto :goto_fb

    .line 1313
    :cond_12d
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_fb

    .line 1314
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 1315
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1316
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1317
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 1318
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v0, v4

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v0, v10

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1320
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1321
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_fb

    .line 1339
    .end local v7    # "continueLongPress":Z
    :pswitch_150
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 1340
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v8, v0, :cond_1a2

    .line 1341
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long v10, v4, v10

    add-long/2addr v0, v10

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1349
    :goto_160
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    cmp-long v0, v0, v10

    if-gez v0, :cond_17d

    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    const-wide/16 v10, 0x46

    cmp-long v0, v0, v10

    if-gez v0, :cond_17d

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17d

    .line 1351
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1352
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1353
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 1355
    :cond_17d
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1356
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1358
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19a

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v0, :cond_19a

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-nez v0, :cond_19a

    .line 1359
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    .line 1361
    :cond_19a
    invoke-virtual {p0, v8}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 1362
    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    goto/16 :goto_66

    .line 1343
    :cond_1a2
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 1344
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1345
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v0, v4

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v0, v10

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1346
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1347
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_160

    .line 1366
    :pswitch_1b8
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1ce

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1ce

    .line 1368
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    .line 1371
    :cond_1ce
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 1372
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 1373
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 1374
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1375
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    goto/16 :goto_66

    .line 1268
    :pswitch_data_1e2
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_150
        :pswitch_ea
        :pswitch_1b8
    .end packed-switch
.end method

.method private openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1067
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    if-nez v2, :cond_6

    .line 1080
    :cond_5
    :goto_5
    return v1

    .line 1070
    :cond_6
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz v2, :cond_5

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 1074
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    aget-object v0, v2, v3

    .line 1075
    .local v0, "popupKey":Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v1

    .line 1076
    .local v1, "result":Z
    if-eqz v1, :cond_5

    .line 1077
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 1078
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    goto :goto_5
.end method

.method private removeMessages()V
    .registers 3

    .prologue
    .line 1418
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1419
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1420
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1421
    return-void
.end method

.method private repeatKey()Z
    .registers 8

    .prologue
    .line 1384
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    aget-object v6, v0, v1

    .line 1385
    .local v6, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget v2, v6, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, v6, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget-wide v4, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    .line 1386
    const/4 v0, 0x1

    return v0
.end method

.method private resetMultiTap()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1446
    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    .line 1447
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 1448
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .line 1449
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    .line 1450
    return-void
.end method

.method private sendAccessibilityEventForUnicodeCharacter(II)V
    .registers 9
    .param p1, "eventType"    # I
    .param p2, "code"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 981
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 982
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 983
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 984
    const/4 v2, 0x0

    .line 986
    .local v2, "text":Ljava/lang/String;
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "speak_password"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_22

    move v1, v3

    .line 990
    .local v1, "speakPassword":Z
    :cond_22
    if-nez v1, :cond_34

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v4

    if-nez v4, :cond_34

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 992
    :cond_34
    sparse-switch p2, :sswitch_data_ae

    .line 1015
    int-to-char v3, p2

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 1027
    :goto_3c
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1030
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "speakPassword":Z
    .end local v2    # "text":Ljava/lang/String;
    :cond_48
    return-void

    .line 994
    .restart local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v1    # "speakPassword":Z
    .restart local v2    # "text":Ljava/lang/String;
    :sswitch_49
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v4, 0x104058f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 995
    goto :goto_3c

    .line 997
    :sswitch_53
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v4, 0x1040590

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 998
    goto :goto_3c

    .line 1000
    :sswitch_5d
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v4, 0x1040591

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1001
    goto :goto_3c

    .line 1003
    :sswitch_67
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v4, 0x1040592

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1004
    goto :goto_3c

    .line 1006
    :sswitch_71
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v4, 0x1040593

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1007
    goto :goto_3c

    .line 1009
    :sswitch_7b
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v4, 0x1040594

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1010
    goto :goto_3c

    .line 1012
    :sswitch_85
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v4, 0x1040595

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1013
    goto :goto_3c

    .line 1017
    :cond_8f
    iget-boolean v4, p0, Landroid/inputmethodservice/KeyboardView;->mHeadsetRequiredToHearPasswordsAnnounced:Z

    if-nez v4, :cond_a3

    .line 1020
    const/16 v4, 0x100

    if-ne p1, v4, :cond_99

    .line 1021
    iput-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mHeadsetRequiredToHearPasswordsAnnounced:Z

    .line 1023
    :cond_99
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v4, 0x104059c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3c

    .line 1025
    :cond_a3
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v4, 0x104059d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3c

    .line 992
    nop

    :sswitch_data_ae
    .sparse-switch
        -0x6 -> :sswitch_49
        -0x5 -> :sswitch_5d
        -0x4 -> :sswitch_67
        -0x3 -> :sswitch_53
        -0x2 -> :sswitch_71
        -0x1 -> :sswitch_7b
        0xa -> :sswitch_85
    .end sparse-switch
.end method

.method private showKey(I)V
    .registers 16
    .param p1, "keyIndex"    # I

    .prologue
    const/4 v11, 0x2

    const-wide/high16 v12, 0x4004000000000000L    # 2.5

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 907
    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 908
    .local v5, "previewPopup":Landroid/widget/PopupWindow;
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 909
    .local v1, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    if-ltz p1, :cond_11

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v6, v6

    if-lt p1, v6, :cond_12

    .line 978
    :cond_11
    :goto_11
    return-void

    .line 910
    :cond_12
    aget-object v0, v1, p1

    .line 911
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_f6

    .line 912
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_f2

    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    :goto_20
    invoke-virtual {v7, v8, v8, v8, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 914
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    :goto_28
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 928
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 930
    .local v4, "popupWidth":I
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    .line 931
    .local v3, "popupHeight":I
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 932
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_5d

    .line 933
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 934
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 936
    :cond_5d
    iget-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    if-nez v6, :cond_133

    .line 937
    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 938
    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    sub-int/2addr v6, v3

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 944
    :goto_77
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 945
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    .line 946
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v6, v10

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    add-int/2addr v7, v8

    aput v7, v6, v10

    .line 947
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v6, v9

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    add-int/2addr v7, v8

    aput v7, v6, v9

    .line 950
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-eqz v6, :cond_14a

    sget-object v6, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    :goto_9f
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 952
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v7, v10

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 953
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v7, v9

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 956
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/KeyboardView;->getLocationOnScreen([I)V

    .line 957
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v7, v9

    add-int/2addr v6, v7

    if-gez v6, :cond_de

    .line 960
    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-gt v6, v7, :cond_14e

    .line 961
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v8, v7

    mul-double/2addr v8, v12

    double-to-int v7, v8

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 965
    :goto_d9
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    add-int/2addr v6, v3

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 968
    :cond_de
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_159

    .line 969
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v5, v6, v7, v4, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 977
    :goto_eb
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_11

    .line 912
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "popupHeight":I
    .end local v4    # "popupWidth":I
    :cond_f2
    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_20

    .line 916
    :cond_f6
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 917
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v6, v9, :cond_122

    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v6, v6

    if-ge v6, v11, :cond_122

    .line 919
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    int-to-float v7, v7

    invoke-virtual {v6, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 920
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_28

    .line 922
    :cond_122
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    int-to-float v7, v7

    invoke-virtual {v6, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 923
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_28

    .line 941
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "popupHeight":I
    .restart local v4    # "popupWidth":I
    :cond_133
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    rsub-int v6, v6, 0xa0

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 942
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    neg-int v6, v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    goto/16 :goto_77

    .line 950
    :cond_14a
    sget-object v6, Landroid/inputmethodservice/KeyboardView;->EMPTY_STATE_SET:[I

    goto/16 :goto_9f

    .line 963
    :cond_14e
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v8, v7

    mul-double/2addr v8, v12

    double-to-int v7, v8

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    goto :goto_d9

    .line 972
    :cond_159
    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 973
    invoke-virtual {v5, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 974
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v5, v6, v10, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_eb
.end method

.method private showPreview(I)V
    .registers 15
    .param p1, "keyIndex"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v12, -0x1

    .line 853
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 854
    .local v4, "oldKeyIndex":I
    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 856
    .local v5, "previewPopup":Landroid/widget/PopupWindow;
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 858
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 859
    .local v1, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v4, v6, :cond_53

    .line 860
    if-eq v4, v12, :cond_2f

    array-length v6, v1

    if-le v6, v4, :cond_2f

    .line 861
    aget-object v3, v1, v4

    .line 862
    .local v3, "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-ne v6, v12, :cond_8a

    move v6, v7

    :goto_1b
    invoke-virtual {v3, v6}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 863
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 864
    iget-object v6, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v6, v8

    .line 865
    .local v0, "keyCode":I
    const/16 v6, 0x100

    invoke-direct {p0, v6, v0}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 868
    const/high16 v6, 0x10000

    invoke-direct {p0, v6, v0}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 871
    .end local v0    # "keyCode":I
    .end local v3    # "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_2f
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v6, v12, :cond_53

    array-length v6, v1

    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-le v6, v9, :cond_53

    .line 872
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    aget-object v2, v1, v6

    .line 873
    .local v2, "newKey":Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {v2}, Landroid/inputmethodservice/Keyboard$Key;->onPressed()V

    .line 874
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 875
    iget-object v6, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v6, v8

    .line 876
    .restart local v0    # "keyCode":I
    const/16 v6, 0x80

    invoke-direct {p0, v6, v0}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 879
    const v6, 0x8000

    invoke-direct {p0, v6, v0}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 884
    .end local v0    # "keyCode":I
    .end local v2    # "newKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_53
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v4, v6, :cond_89

    iget-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    if-eqz v6, :cond_89

    .line 885
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 886
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_76

    .line 887
    if-ne p1, v12, :cond_76

    .line 888
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x46

    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 893
    :cond_76
    if-eq p1, v12, :cond_89

    .line 894
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_8c

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8c

    .line 896
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    .line 904
    :cond_89
    :goto_89
    return-void

    .restart local v3    # "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_8a
    move v6, v8

    .line 862
    goto :goto_1b

    .line 898
    .end local v3    # "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_8c
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v7, p1, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_89
.end method


# virtual methods
.method public closing()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1406
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1407
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1409
    :cond_e
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 1411
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 1412
    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1413
    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 1414
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1415
    return-void
.end method

.method public getKeyboard()Landroid/inputmethodservice/Keyboard;
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method protected getOnKeyboardActionListener()Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method public handleBack()Z
    .registers 2

    .prologue
    .line 1438
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1439
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 1440
    const/4 v0, 0x1

    .line 1442
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public invalidateAllKeys()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1039
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1040
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    .line 1041
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidate()V

    .line 1042
    return-void
.end method

.method public invalidateKey(I)V
    .registers 9
    .param p1, "keyIndex"    # I

    .prologue
    .line 1052
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-nez v1, :cond_5

    .line 1063
    :cond_4
    :goto_4
    return-void

    .line 1053
    :cond_5
    if-ltz p1, :cond_4

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v1, v1

    if-ge p1, v1, :cond_4

    .line 1056
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v0, v1, p1

    .line 1057
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 1058
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 1060
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    .line 1061
    iget v1, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/inputmethodservice/KeyboardView;->invalidate(IIII)V

    goto :goto_4
.end method

.method public isPreviewEnabled()Z
    .registers 2

    .prologue
    .line 539
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .registers 2

    .prologue
    .line 571
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    return v0
.end method

.method public isShifted()Z
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_b

    .line 518
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    .line 520
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 579
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 580
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 1425
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1426
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->closing()V

    .line 1427
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 637
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 638
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v0, :cond_13

    .line 639
    :cond_10
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    .line 641
    :cond_13
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 642
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 1168
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v1, :cond_1a

    .line 1169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1170
    .local v0, "action":I
    packed-switch v0, :pswitch_data_32

    .line 1188
    :goto_16
    :pswitch_16
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1190
    .end local v0    # "action":I
    :cond_1a
    return v1

    .line 1172
    .restart local v0    # "action":I
    :pswitch_1b
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_16

    .line 1175
    :pswitch_20
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_16

    .line 1179
    :pswitch_25
    iget-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v2, :cond_2d

    .line 1180
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_16

    .line 1182
    :cond_2d
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_16

    .line 1170
    :pswitch_data_32
    .packed-switch 0x7
        :pswitch_20
        :pswitch_16
        :pswitch_1b
        :pswitch_25
    .end packed-switch
.end method

.method protected onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .registers 16
    .param p1, "popupKey"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    const v4, 0x1020026

    const/high16 v13, -0x80000000

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1091
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 1093
    .local v2, "popupKeyboardId":I
    if-eqz v2, :cond_112

    .line 1094
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1095
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    if-nez v1, :cond_11e

    .line 1096
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1098
    .local v7, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1099
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/KeyboardView;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 1101
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v3, 0x1020027

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1103
    .local v6, "closeButton":Landroid/view/View;
    if-eqz v6, :cond_46

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1104
    :cond_46
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    new-instance v3, Landroid/inputmethodservice/KeyboardView$3;

    invoke-direct {v3, p0}, Landroid/inputmethodservice/KeyboardView$3;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 1128
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v1, :cond_113

    .line 1129
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v4, -0x1

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingRight()I

    move-result v12

    add-int/2addr v5, v12

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 1134
    .local v0, "keyboard":Landroid/inputmethodservice/Keyboard;
    :goto_69
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 1135
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, p0}, Landroid/inputmethodservice/KeyboardView;->setPopupParent(Landroid/view/View;)V

    .line 1136
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v3

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v4

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1140
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    .end local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    .end local v6    # "closeButton":Landroid/view/View;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :goto_8f
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    .line 1146
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    .line 1147
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    .line 1148
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    .line 1149
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    .line 1150
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v3, v3, v10

    add-int v8, v1, v3

    .line 1151
    .local v8, "x":I
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v3, v3, v11

    add-int v9, v1, v3

    .line 1152
    .local v9, "y":I
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    if-gez v8, :cond_12a

    move v1, v10

    :goto_de
    invoke-virtual {v3, v1, v9}, Landroid/inputmethodservice/KeyboardView;->setPopupOffset(II)V

    .line 1153
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    .line 1154
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1155
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1156
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1157
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, v10, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1158
    iput-boolean v11, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1160
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    move v10, v11

    .line 1163
    .end local v8    # "x":I
    .end local v9    # "y":I
    :cond_112
    return v10

    .line 1132
    .restart local v6    # "closeButton":Landroid/view/View;
    .restart local v7    # "inflater":Landroid/view/LayoutInflater;
    :cond_113
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .restart local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    goto/16 :goto_69

    .line 1142
    .end local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    .end local v6    # "closeButton":Landroid/view/View;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :cond_11e
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/KeyboardView;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    goto/16 :goto_8f

    .restart local v8    # "x":I
    .restart local v9    # "y":I
    :cond_12a
    move v1, v8

    .line 1152
    goto :goto_de
.end method

.method public onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 593
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v1, :cond_12

    .line 594
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingBottom:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    .line 602
    :goto_11
    return-void

    .line 596
    :cond_12
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v1

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingRight:I

    add-int v0, v1, v2

    .line 597
    .local v0, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_2b

    .line 598
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 600
    :cond_2b
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingBottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    goto :goto_11
.end method

.method public onSizeChanged(IIII)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 627
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 628
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_c

    .line 629
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/Keyboard;->resize(II)V

    .line 632
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 633
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    .line 1197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 1198
    .local v10, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1199
    .local v8, "action":I
    const/4 v11, 0x0

    .line 1200
    .local v11, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 1202
    .local v0, "now":J
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    if-eq v10, v2, :cond_4c

    .line 1203
    if-ne v10, v13, :cond_36

    .line 1205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 1207
    .local v9, "down":Landroid/view/MotionEvent;
    invoke-direct {p0, v9, v4}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 1208
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 1210
    if-ne v8, v13, :cond_33

    .line 1211
    invoke-direct {p0, p1, v13}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 1230
    .end local v9    # "down":Landroid/view/MotionEvent;
    :cond_33
    :goto_33
    iput v10, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    .line 1232
    return v11

    .line 1215
    :cond_36
    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    move v4, v13

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .line 1217
    .local v12, "up":Landroid/view/MotionEvent;
    invoke-direct {p0, v12, v13}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 1218
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_33

    .line 1221
    .end local v12    # "up":Landroid/view/MotionEvent;
    :cond_4c
    if-ne v10, v13, :cond_5f

    .line 1222
    invoke-direct {p0, p1, v4}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 1223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    .line 1224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    goto :goto_33

    .line 1227
    :cond_5f
    const/4 v11, 0x1

    goto :goto_33
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .registers 5
    .param p1, "keyboard"    # Landroid/inputmethodservice/Keyboard;

    .prologue
    const/4 v2, 0x1

    .line 465
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v1, :cond_9

    .line 466
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 469
    :cond_9
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 470
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 471
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 472
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 473
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->requestLayout()V

    .line 475
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    .line 476
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 477
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V

    .line 478
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 481
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 482
    return-void
.end method

.method public setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .prologue
    .line 446
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 447
    return-void
.end method

.method public setPopupOffset(II)V
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 550
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    .line 551
    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    .line 552
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 553
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 555
    :cond_11
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 546
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 547
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .registers 2
    .param p1, "previewEnabled"    # Z

    .prologue
    .line 530
    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 531
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 564
    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    .line 565
    return-void
.end method

.method public setShifted(Z)Z
    .registers 3
    .param p1, "shifted"    # Z

    .prologue
    .line 500
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_11

    .line 501
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 503
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 504
    const/4 v0, 0x1

    .line 507
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public setVerticalCorrection(I)V
    .registers 2
    .param p1, "verticalOffset"    # I

    .prologue
    .line 544
    return-void
.end method

.method protected swipeDown()V
    .registers 2

    .prologue
    .line 1402
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeDown()V

    .line 1403
    return-void
.end method

.method protected swipeLeft()V
    .registers 2

    .prologue
    .line 1394
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeLeft()V

    .line 1395
    return-void
.end method

.method protected swipeRight()V
    .registers 2

    .prologue
    .line 1390
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeRight()V

    .line 1391
    return-void
.end method

.method protected swipeUp()V
    .registers 2

    .prologue
    .line 1398
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeUp()V

    .line 1399
    return-void
.end method
