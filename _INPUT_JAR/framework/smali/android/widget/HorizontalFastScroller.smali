.class Landroid/widget/HorizontalFastScroller;
.super Ljava/lang/Object;
.source "HorizontalFastScroller.java"


# static fields
.field private static final ATTRS:[I

.field private static BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_CROSS_FADE:I = 0x32

.field private static final DURATION_FADE_IN:I = 0x96

.field private static final DURATION_FADE_OUT:I = 0x12c

.field private static final DURATION_RESIZE:I = 0x64

.field private static final FADE_TIMEOUT:J = 0x5dcL

.field private static LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_PAGES:I = 0x4

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final OVERLAY_POSITION:I = 0x5

.field private static final PREVIEW_BACKGROUND_LEFT:I = 0x3

.field private static final PREVIEW_BACKGROUND_RIGHT:I = 0x4

.field private static final PREVIEW_LEFT:I = 0x0

.field private static final PREVIEW_RIGHT:I = 0x1

.field private static RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAP_TIMEOUT:J

.field private static final TEXT_COLOR:I = 0x0

.field private static final THUMB_DRAWABLE:I = 0x1

.field private static TOP:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRACK_DRAWABLE:I = 0x2


# instance fields
.field private mAlwaysShow:Z

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private final mDeferStartDrag:Ljava/lang/Runnable;

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mHasPendingDrag:Z

.field private final mHasTrackImage:Z

.field private mHeaderCount:I

.field private final mHeight:I

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private final mList:Landroid/widget/AbsHorizontalListView;

.field private mListAdapter:Landroid/widget/BaseAdapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/widget/ImageView;

.field private final mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private final mThumbImage:Landroid/widget/ImageView;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mUpdatingLayout:Z

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_36

    sput-object v0, Landroid/widget/HorizontalFastScroller;->ATTRS:[I

    .line 106
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/widget/HorizontalFastScroller;->TAP_TIMEOUT:J

    .line 1472
    new-instance v0, Landroid/widget/HorizontalFastScroller$4;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroid/widget/HorizontalFastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/HorizontalFastScroller;->LEFT:Landroid/util/Property;

    .line 1488
    new-instance v0, Landroid/widget/HorizontalFastScroller$5;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Landroid/widget/HorizontalFastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/HorizontalFastScroller;->TOP:Landroid/util/Property;

    .line 1504
    new-instance v0, Landroid/widget/HorizontalFastScroller$6;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Landroid/widget/HorizontalFastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/HorizontalFastScroller;->RIGHT:Landroid/util/Property;

    .line 1520
    new-instance v0, Landroid/widget/HorizontalFastScroller$7;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroid/widget/HorizontalFastScroller$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/HorizontalFastScroller;->BOTTOM:Landroid/util/Property;

    return-void

    .line 80
    :array_36
    .array-data 4
        0x1010359
        0x1010336
        0x1010339
        0x1010337
        0x1010338
        0x101033a
    .end array-data
.end method

.method public constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .registers 21
    .param p1, "listView"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 251
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 109
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 110
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 124
    const/4 v15, 0x2

    new-array v15, v15, [I

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPreviewResId:[I

    .line 160
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/HorizontalFastScroller;->mCurrentSection:I

    .line 163
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/HorizontalFastScroller;->mScrollbarPosition:I

    .line 217
    new-instance v15, Landroid/widget/HorizontalFastScroller$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/HorizontalFastScroller$1;-><init>(Landroid/widget/HorizontalFastScroller;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    .line 234
    new-instance v15, Landroid/widget/HorizontalFastScroller$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/HorizontalFastScroller$2;-><init>(Landroid/widget/HorizontalFastScroller;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 244
    new-instance v15, Landroid/widget/HorizontalFastScroller$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/HorizontalFastScroller$3;-><init>(Landroid/widget/HorizontalFastScroller;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 252
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsHorizontalListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 256
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/HorizontalFastScroller;->mScaledTouchSlop:I

    .line 258
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 259
    .local v7, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v15

    sget-object v16, Landroid/widget/HorizontalFastScroller;->ATTRS:[I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 261
    .local v8, "ta":Landroid/content/res/TypedArray;
    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 262
    .local v13, "trackImage":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 264
    const/4 v14, 0x0

    .line 265
    .local v14, "width":I
    const/4 v3, 0x0

    .line 268
    .local v3, "height":I
    const/4 v15, 0x2

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 269
    .local v12, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_229

    .line 270
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/HorizontalFastScroller;->mHasTrackImage:Z

    .line 271
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v15, v13}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 273
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 274
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 279
    :goto_ad
    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 280
    .local v11, "thumbImage":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 283
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 284
    .local v10, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_d9

    if-eqz v12, :cond_d9

    .line 285
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v15, v11}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 287
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 288
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 292
    :cond_d9
    if-eqz v10, :cond_10a

    .line 293
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    if-lez v15, :cond_e7

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    if-gtz v15, :cond_10a

    .line 294
    :cond_e7
    const v15, 0x1050152

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 295
    .local v5, "minWidth":I
    const v15, 0x1050153

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 296
    .local v4, "minHeight":I
    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 297
    const v15, 0x1050153

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 299
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 300
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 304
    .end local v4    # "minHeight":I
    .end local v5    # "minWidth":I
    :cond_10a
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/HorizontalFastScroller;->mWidth:I

    .line 305
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/HorizontalFastScroller;->mHeight:I

    .line 307
    const v15, 0x105014f

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 308
    .local v6, "previewSize":I
    new-instance v15, Landroid/widget/ImageView;

    invoke-direct {v15, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 309
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v15, v6}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v15, v6}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 312
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 314
    const v15, 0x1050151

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/HorizontalFastScroller;->mPreviewPadding:I

    .line 316
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalFastScroller;->mPreviewPadding:I

    move/from16 v16, v0

    sub-int v16, v6, v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 317
    .local v9, "textMinSize":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Landroid/widget/HorizontalFastScroller;->createPreviewTextView(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 318
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 321
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Landroid/widget/HorizontalFastScroller;->createPreviewTextView(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 322
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 323
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPreviewResId:[I

    const/16 v16, 0x0

    const/16 v17, 0x3

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    aput v17, v15, v16

    .line 327
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPreviewResId:[I

    const/16 v16, 0x1

    const/16 v17, 0x4

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    aput v17, v15, v16

    .line 328
    const/4 v15, 0x5

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/HorizontalFastScroller;->mOverlayPosition:I

    .line 329
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsHorizontalListView;->getScrollBarStyle()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/HorizontalFastScroller;->mScrollBarStyle:I

    .line 332
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/HorizontalFastScroller;->mScrollCompleted:Z

    .line 333
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/HorizontalFastScroller;->mState:I

    .line 334
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v16, 0xb

    move/from16 v0, v16

    if-lt v15, v0, :cond_230

    const/4 v15, 0x1

    :goto_1ff
    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/HorizontalFastScroller;->mMatchDragPosition:Z

    .line 337
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalFastScroller;->getSectionsFromIndexer()V

    .line 338
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalFastScroller;->refreshDrawablePressedState()V

    .line 339
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsHorizontalListView;->getCount()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Landroid/widget/HorizontalFastScroller;->updateLongList(II)V

    .line 340
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v15}, Landroid/widget/AbsHorizontalListView;->getVerticalScrollbarPosition()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/HorizontalFastScroller;->setScrollbarPosition(I)V

    .line 341
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalFastScroller;->postAutoHide()V

    .line 342
    return-void

    .line 276
    .end local v6    # "previewSize":I
    .end local v9    # "textMinSize":I
    .end local v10    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    .end local v11    # "thumbImage":Landroid/widget/ImageView;
    :cond_229
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/HorizontalFastScroller;->mHasTrackImage:Z

    goto/16 :goto_ad

    .line 334
    .restart local v6    # "previewSize":I
    .restart local v9    # "textMinSize":I
    .restart local v10    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "thumbImage":Landroid/widget/ImageView;
    :cond_230
    const/4 v15, 0x0

    goto :goto_1ff
.end method

.method static synthetic access$000(Landroid/widget/HorizontalFastScroller;)Landroid/widget/AbsHorizontalListView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalFastScroller;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/HorizontalFastScroller;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/HorizontalFastScroller;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->beginDrag()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/HorizontalFastScroller;)F
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalFastScroller;

    .prologue
    .line 51
    iget v0, p0, Landroid/widget/HorizontalFastScroller;->mInitialTouchY:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/HorizontalFastScroller;F)F
    .registers 3
    .param p0, "x0"    # Landroid/widget/HorizontalFastScroller;
    .param p1, "x1"    # F

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/HorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/widget/HorizontalFastScroller;F)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalFastScroller;
    .param p1, "x1"    # F

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/HorizontalFastScroller;->scrollTo(F)V

    return-void
.end method

.method static synthetic access$502(Landroid/widget/HorizontalFastScroller;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalFastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Landroid/widget/HorizontalFastScroller;->mHasPendingDrag:Z

    return p1
.end method

.method static synthetic access$600(Landroid/widget/HorizontalFastScroller;I)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalFastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/HorizontalFastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/HorizontalFastScroller;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalFastScroller;

    .prologue
    .line 51
    iget-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$702(Landroid/widget/HorizontalFastScroller;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalFastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Landroid/widget/HorizontalFastScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .registers 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 1465
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .registers 11
    .param p0, "v"    # Landroid/view/View;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1536
    sget-object v4, Landroid/widget/HorizontalFastScroller;->LEFT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1537
    .local v1, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/HorizontalFastScroller;->TOP:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1538
    .local v3, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/HorizontalFastScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1539
    .local v2, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/HorizontalFastScroller;->BOTTOM:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1540
    .local v0, "bottom":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v7

    aput-object v3, v4, v8

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4
.end method

.method private static animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .registers 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "target"    # F

    .prologue
    .line 1458
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 552
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 553
    iget-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_19

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 554
    return-void

    .line 553
    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private beginDrag()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1257
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/widget/HorizontalFastScroller;->setState(I)V

    .line 1259
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    if-eqz v0, :cond_10

    .line 1260
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->getSectionsFromIndexer()V

    .line 1263
    :cond_10
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    if-eqz v0, :cond_1e

    .line 1264
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1265
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 1268
    :cond_1e
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->cancelFling()V

    .line 1269
    return-void
.end method

.method private cancelFling()V
    .registers 10

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 1229
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1231
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    if-eqz v0, :cond_14

    .line 1232
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsHorizontalListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1233
    :cond_14
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1234
    return-void
.end method

.method private cancelPendingDrag()V
    .registers 3

    .prologue
    .line 1242
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    if-eqz v0, :cond_b

    .line 1243
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1244
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mHasPendingDrag:Z

    .line 1245
    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ta"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 488
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 490
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 491
    .local v2, "res":Landroid/content/res/Resources;
    const v6, 0x105014f

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 492
    .local v0, "minSize":I
    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 493
    .local v3, "textColor":Landroid/content/res/ColorStateList;
    const v6, 0x1050150

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v4, v6

    .line 494
    .local v4, "textSize":F
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 495
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 497
    invoke-virtual {v5, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 498
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 499
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 500
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 501
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 504
    iget-object v6, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6}, Landroid/widget/AbsHorizontalListView;->getLayoutDirection()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 506
    return-object v5
.end method

.method private getPosFromItemCount(III)F
    .registers 19
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 1157
    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v13, :cond_8

    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v13, :cond_b

    .line 1158
    :cond_8
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->getSectionsFromIndexer()V

    .line 1161
    :cond_b
    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v13, :cond_28

    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v13, :cond_28

    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mSections:[Ljava/lang/Object;

    array-length v13, v13

    if-lez v13, :cond_28

    const/4 v2, 0x1

    .line 1163
    .local v2, "hasSections":Z
    :goto_19
    if-eqz v2, :cond_1f

    iget-boolean v13, p0, Landroid/widget/HorizontalFastScroller;->mMatchDragPosition:Z

    if-nez v13, :cond_2a

    .line 1164
    :cond_1f
    move/from16 v0, p1

    int-to-float v13, v0

    sub-int v14, p3, p2

    int-to-float v14, v14

    div-float v9, v13, v14

    .line 1221
    :cond_27
    :goto_27
    return v9

    .line 1161
    .end local v2    # "hasSections":Z
    :cond_28
    const/4 v2, 0x0

    goto :goto_19

    .line 1168
    .restart local v2    # "hasSections":Z
    :cond_2a
    iget v13, p0, Landroid/widget/HorizontalFastScroller;->mHeaderCount:I

    sub-int p1, p1, v13

    .line 1169
    if-gez p1, :cond_32

    .line 1170
    const/4 v9, 0x0

    goto :goto_27

    .line 1172
    :cond_32
    iget v13, p0, Landroid/widget/HorizontalFastScroller;->mHeaderCount:I

    sub-int p3, p3, v13

    .line 1175
    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1177
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v13

    if-nez v13, :cond_a1

    .line 1178
    :cond_45
    const/4 v3, 0x0

    .line 1184
    .local v3, "incrementalPos":F
    :goto_46
    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v10

    .line 1185
    .local v10, "section":I
    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v13, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    .line 1186
    .local v12, "sectionPos":I
    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mSections:[Ljava/lang/Object;

    array-length v11, v13

    .line 1188
    .local v11, "sectionCount":I
    add-int/lit8 v13, v11, -0x1

    if-ge v10, v13, :cond_b8

    .line 1190
    add-int/lit8 v13, v10, 0x1

    if-ge v13, v11, :cond_b5

    .line 1191
    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v14, v10, 0x1

    invoke-interface {v13, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v6

    .line 1195
    .local v6, "nextSectionPos":I
    :goto_67
    sub-int v8, v6, v12

    .line 1202
    .end local v6    # "nextSectionPos":I
    .local v8, "positionsInSection":I
    :goto_69
    if-nez v8, :cond_bb

    .line 1203
    const/4 v7, 0x0

    .line 1209
    .local v7, "posWithinSection":F
    :goto_6c
    int-to-float v13, v10

    add-float/2addr v13, v7

    int-to-float v14, v11

    div-float v9, v13, v14

    .line 1214
    .local v9, "result":F
    if-lez p1, :cond_27

    add-int v13, p1, p2

    move/from16 v0, p3

    if-ne v13, v0, :cond_27

    .line 1215
    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    add-int/lit8 v14, p2, -0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1216
    .local v4, "lastChild":Landroid/view/View;
    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v13}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v13

    iget-object v14, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v14}, Landroid/widget/AbsHorizontalListView;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v5, v13, v14

    .line 1218
    .local v5, "lastItemVisible":F
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v9

    mul-float/2addr v13, v5

    add-float/2addr v9, v13

    goto :goto_27

    .line 1180
    .end local v3    # "incrementalPos":F
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastItemVisible":F
    .end local v7    # "posWithinSection":F
    .end local v8    # "positionsInSection":I
    .end local v9    # "result":F
    .end local v10    # "section":I
    .end local v11    # "sectionCount":I
    .end local v12    # "sectionPos":I
    :cond_a1
    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v13}, Landroid/widget/AbsHorizontalListView;->getPaddingTop()I

    move-result v13

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v3, v13, v14

    .restart local v3    # "incrementalPos":F
    goto :goto_46

    .line 1193
    .restart local v10    # "section":I
    .restart local v11    # "sectionCount":I
    .restart local v12    # "sectionPos":I
    :cond_b5
    add-int/lit8 v6, p3, -0x1

    .restart local v6    # "nextSectionPos":I
    goto :goto_67

    .line 1197
    .end local v6    # "nextSectionPos":I
    :cond_b8
    sub-int v8, p3, v12

    .restart local v8    # "positionsInSection":I
    goto :goto_69

    .line 1205
    :cond_bb
    move/from16 v0, p1

    int-to-float v13, v0

    add-float/2addr v13, v3

    int-to-float v14, v12

    sub-float/2addr v13, v14

    int-to-float v14, v8

    div-float v7, v13, v14

    .restart local v7    # "posWithinSection":F
    goto :goto_6c
.end method

.method private getPosFromMotionEvent(F)F
    .registers 13
    .param p1, "y"    # F

    .prologue
    const/4 v8, 0x0

    .line 1136
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1137
    .local v1, "container":Landroid/graphics/Rect;
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 1138
    .local v6, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1140
    .local v0, "bottom":I
    iget-object v7, p0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 1141
    .local v7, "trackImage":Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getTop()I

    move-result v9

    int-to-float v3, v9

    .line 1142
    .local v3, "min":F
    invoke-virtual {v7}, Landroid/widget/ImageView;->getBottom()I

    move-result v9

    int-to-float v2, v9

    .line 1143
    .local v2, "max":F
    move v4, v3

    .line 1144
    .local v4, "offset":F
    sub-float v5, v2, v3

    .line 1148
    .local v5, "range":F
    cmpg-float v9, v5, v8

    if-gtz v9, :cond_1b

    .line 1152
    :goto_1a
    return v8

    :cond_1b
    sub-float v9, p1, v4

    div-float/2addr v9, v5

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v8, v10}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v8

    goto :goto_1a
.end method

.method private getSectionsFromIndexer()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 874
    iput-object v3, p0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 876
    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 877
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v2, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_1c

    move-object v2, v0

    .line 878
    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Landroid/widget/HorizontalFastScroller;->mHeaderCount:I

    .line 879
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 882
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_1c
    instance-of v2, v0, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_3c

    move-object v2, v0

    .line 883
    check-cast v2, Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 885
    .local v1, "expAdapter":Landroid/widget/ExpandableListAdapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3b

    .line 886
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1    # "expAdapter":Landroid/widget/ExpandableListAdapter;
    iput-object v1, p0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 887
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/HorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 888
    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/HorizontalFastScroller;->mSections:[Ljava/lang/Object;

    .line 898
    :cond_3b
    :goto_3b
    return-void

    .line 890
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_3c
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_52

    move-object v2, v0

    .line 891
    check-cast v2, Landroid/widget/BaseAdapter;

    iput-object v2, p0, Landroid/widget/HorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 892
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 893
    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/HorizontalFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_3b

    .line 895
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_52
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/HorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 896
    iput-object v3, p0, Landroid/widget/HorizontalFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_3b
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .registers 10
    .param p1, "value"    # F
    .param p2, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 1439
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1440
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .line 1442
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_9
    if-ltz v3, :cond_24

    .line 1443
    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1444
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_20

    .line 1445
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1442
    :goto_1d
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 1447
    :cond_20
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1d

    .line 1451
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_24
    return-object v1
.end method

.method private isPointInside(FF)Z
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1409
    invoke-direct {p0, p1}, Landroid/widget/HorizontalFastScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mHasTrackImage:Z

    if-nez v0, :cond_10

    invoke-direct {p0, p2}, Landroid/widget/HorizontalFastScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isPointInsideX(F)Z
    .registers 5
    .param p1, "x"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1413
    iget-boolean v2, p0, Landroid/widget/HorizontalFastScroller;->mLayoutFromRight:Z

    if-eqz v2, :cond_14

    .line 1414
    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_12

    .line 1416
    :cond_11
    :goto_11
    return v0

    :cond_12
    move v0, v1

    .line 1414
    goto :goto_11

    .line 1416
    :cond_14
    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-lez v2, :cond_11

    move v0, v1

    goto :goto_11
.end method

.method private isPointInsideY(F)Z
    .registers 6
    .param p1, "y"    # F

    .prologue
    .line 1421
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    .line 1422
    .local v1, "offset":F
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float v2, v3, v1

    .line 1423
    .local v2, "top":F
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    int-to-float v3, v3

    add-float v0, v3, v1

    .line 1424
    .local v0, "bottom":F
    cmpl-float v3, p1, v2

    if-ltz v3, :cond_22

    cmpg-float v3, p1, v0

    if-gtz v3, :cond_22

    const/4 v3, 0x1

    :goto_21
    return v3

    :cond_22
    const/4 v3, 0x0

    goto :goto_21
.end method

.method private layoutThumb()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 708
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 709
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/widget/HorizontalFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 710
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/widget/HorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 711
    return-void
.end method

.method private layoutTrack()V
    .registers 15

    .prologue
    const/4 v4, 0x0

    .line 718
    iget-object v9, p0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 719
    .local v9, "track":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 720
    .local v6, "thumb":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 721
    .local v1, "container":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 722
    .local v2, "containerWidth":I
    const/high16 v12, -0x80000000

    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 723
    .local v11, "widthMeasureSpec":I
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 724
    .local v3, "heightMeasureSpec":I
    invoke-virtual {v9, v11, v3}, Landroid/view/View;->measure(II)V

    .line 726
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 727
    .local v10, "trackWidth":I
    if-nez v6, :cond_2f

    move v7, v4

    .line 728
    .local v7, "thumbHalfHeight":I
    :goto_1f
    if-nez v6, :cond_36

    .line 729
    .local v4, "left":I
    :goto_21
    add-int v5, v4, v10

    .line 730
    .local v5, "right":I
    iget v12, v1, Landroid/graphics/Rect;->top:I

    add-int v8, v12, v7

    .line 731
    .local v8, "top":I
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v12, v7

    .line 732
    .local v0, "bottom":I
    invoke-virtual {v9, v4, v8, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 733
    return-void

    .line 727
    .end local v0    # "bottom":I
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v7    # "thumbHalfHeight":I
    .end local v8    # "top":I
    :cond_2f
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v7, v12, 0x2

    goto :goto_1f

    .line 728
    .restart local v7    # "thumbHalfHeight":I
    :cond_36
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v13

    sub-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    add-int v4, v12, v13

    goto :goto_21
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 21
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 644
    if-nez p2, :cond_4c

    .line 645
    const/4 v8, 0x0

    .line 646
    .local v8, "marginLeft":I
    const/4 v10, 0x0

    .line 647
    .local v10, "marginTop":I
    const/4 v9, 0x0

    .line 654
    .local v9, "marginRight":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 655
    .local v3, "container":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 656
    .local v5, "containerWidth":I
    sub-int v15, v5, v8

    sub-int v1, v15, v9

    .line 657
    .local v1, "adjMaxWidth":I
    const/high16 v15, -0x80000000

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 658
    .local v14, "widthMeasureSpec":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 659
    .local v6, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v6}, Landroid/view/View;->measure(II)V

    .line 662
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 663
    .local v4, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 664
    .local v13, "width":I
    div-int/lit8 v15, v4, 0xa

    add-int/2addr v15, v10

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v12, v15, v16

    .line 665
    .local v12, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int v2, v12, v15

    .line 666
    .local v2, "bottom":I
    sub-int v15, v5, v13

    div-int/lit8 v15, v15, 0x2

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v7, v15, v16

    .line 667
    .local v7, "left":I
    add-int v11, v7, v13

    .line 668
    .local v11, "right":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v12, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 669
    return-void

    .line 649
    .end local v1    # "adjMaxWidth":I
    .end local v2    # "bottom":I
    .end local v3    # "container":Landroid/graphics/Rect;
    .end local v4    # "containerHeight":I
    .end local v5    # "containerWidth":I
    .end local v6    # "heightMeasureSpec":I
    .end local v7    # "left":I
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    .end local v10    # "marginTop":I
    .end local v11    # "right":I
    .end local v12    # "top":I
    .end local v13    # "width":I
    .end local v14    # "widthMeasureSpec":I
    :cond_4c
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 650
    .restart local v8    # "marginLeft":I
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 651
    .restart local v10    # "marginTop":I
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .restart local v9    # "marginRight":I
    goto :goto_5
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 566
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 567
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_26

    .line 568
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 569
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 570
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 571
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 574
    :cond_26
    iget v1, p0, Landroid/widget/HorizontalFastScroller;->mOverlayPosition:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    .line 575
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/HorizontalFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 579
    :goto_30
    return-void

    .line 577
    :cond_31
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/HorizontalFastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_30
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 596
    if-nez p3, :cond_45

    .line 597
    const/4 v7, 0x0

    .line 598
    .local v7, "marginLeft":I
    const/4 v9, 0x0

    .line 599
    .local v9, "marginTop":I
    const/4 v8, 0x0

    .line 606
    .local v8, "marginRight":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 607
    .local v3, "container":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 609
    .local v4, "containerWidth":I
    if-nez p2, :cond_52

    .line 610
    move v10, v4

    .line 617
    .local v10, "maxWidth":I
    :goto_10
    sub-int v15, v10, v7

    sub-int v1, v15, v8

    .line 618
    .local v1, "adjMaxWidth":I
    const/high16 v15, -0x80000000

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 619
    .local v14, "widthMeasureSpec":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 620
    .local v5, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v5}, Landroid/view/View;->measure(II)V

    .line 623
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 626
    .local v13, "width":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/HorizontalFastScroller;->mLayoutFromRight:Z

    if-eqz v15, :cond_69

    .line 627
    if-nez p2, :cond_64

    iget v15, v3, Landroid/graphics/Rect;->right:I

    :goto_34
    sub-int v11, v15, v8

    .line 628
    .local v11, "right":I
    sub-int v6, v11, v13

    .line 635
    .local v6, "left":I
    :goto_38
    move v12, v9

    .line 636
    .local v12, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int v2, v12, v15

    .line 637
    .local v2, "bottom":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v12, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 638
    return-void

    .line 601
    .end local v1    # "adjMaxWidth":I
    .end local v2    # "bottom":I
    .end local v3    # "container":Landroid/graphics/Rect;
    .end local v4    # "containerWidth":I
    .end local v5    # "heightMeasureSpec":I
    .end local v6    # "left":I
    .end local v7    # "marginLeft":I
    .end local v8    # "marginRight":I
    .end local v9    # "marginTop":I
    .end local v10    # "maxWidth":I
    .end local v11    # "right":I
    .end local v12    # "top":I
    .end local v13    # "width":I
    .end local v14    # "widthMeasureSpec":I
    :cond_45
    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 602
    .restart local v7    # "marginLeft":I
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 603
    .restart local v9    # "marginTop":I
    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->right:I

    .restart local v8    # "marginRight":I
    goto :goto_5

    .line 611
    .restart local v3    # "container":Landroid/graphics/Rect;
    .restart local v4    # "containerWidth":I
    :cond_52
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/HorizontalFastScroller;->mLayoutFromRight:Z

    if-eqz v15, :cond_5d

    .line 612
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v10

    .restart local v10    # "maxWidth":I
    goto :goto_10

    .line 614
    .end local v10    # "maxWidth":I
    :cond_5d
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int v10, v4, v15

    .restart local v10    # "maxWidth":I
    goto :goto_10

    .line 627
    .restart local v1    # "adjMaxWidth":I
    .restart local v5    # "heightMeasureSpec":I
    .restart local v13    # "width":I
    .restart local v14    # "widthMeasureSpec":I
    :cond_64
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    goto :goto_34

    .line 630
    :cond_69
    if-nez p2, :cond_72

    iget v15, v3, Landroid/graphics/Rect;->left:I

    :goto_6d
    add-int v6, v15, v7

    .line 631
    .restart local v6    # "left":I
    add-int v11, v6, v13

    .restart local v11    # "right":I
    goto :goto_38

    .line 630
    .end local v6    # "left":I
    .end local v11    # "right":I
    :cond_72
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v15

    goto :goto_6d
.end method

.method private onStateDependencyChanged()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 396
    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 397
    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 398
    invoke-direct {p0, v1}, Landroid/widget/HorizontalFastScroller;->setState(I)V

    .line 406
    :cond_10
    :goto_10
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView;->resolvePadding()V

    .line 407
    return-void

    .line 399
    :cond_16
    iget v0, p0, Landroid/widget/HorizontalFastScroller;->mState:I

    if-ne v0, v1, :cond_10

    .line 400
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->postAutoHide()V

    goto :goto_10

    .line 403
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->stop()V

    goto :goto_10
.end method

.method private postAutoHide()V
    .registers 5

    .prologue
    .line 843
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    if-eqz v0, :cond_14

    .line 844
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 845
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 847
    :cond_14
    return-void
.end method

.method private refreshDrawablePressedState()V
    .registers 4

    .prologue
    .line 769
    iget v1, p0, Landroid/widget/HorizontalFastScroller;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    const/4 v0, 0x1

    .line 770
    .local v0, "isPressed":Z
    :goto_6
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 771
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 772
    return-void

    .line 769
    .end local v0    # "isPressed":Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private scrollTo(F)V
    .registers 25
    .param p1, "position"    # F

    .prologue
    .line 909
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HorizontalFastScroller;->mScrollCompleted:Z

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/AbsHorizontalListView;->getCount()I

    move-result v3

    .line 912
    .local v3, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 913
    .local v16, "sections":[Ljava/lang/Object;
    if-nez v16, :cond_a1

    const/4 v14, 0x0

    .line 915
    .local v14, "sectionCount":I
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14d

    if-eqz v16, :cond_14d

    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v14, v0, :cond_14d

    .line 916
    int-to-float v0, v14

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    add-int/lit8 v22, v14, -0x1

    invoke-static/range {v20 .. v22}, Landroid/util/MathUtils;->constrain(III)I

    move-result v4

    .line 918
    .local v4, "exactSection":I
    move/from16 v19, v4

    .line 919
    .local v19, "targetSection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    .line 920
    .local v18, "targetIndex":I
    move/from16 v15, v19

    .line 928
    .local v15, "sectionIndex":I
    move v7, v3

    .line 929
    .local v7, "nextIndex":I
    move/from16 v11, v18

    .line 930
    .local v11, "prevIndex":I
    move/from16 v13, v19

    .line 931
    .local v13, "prevSection":I
    add-int/lit8 v10, v19, 0x1

    .line 934
    .local v10, "nextSection":I
    add-int/lit8 v20, v14, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_6a

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    add-int/lit8 v21, v19, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 939
    :cond_6a
    move/from16 v0, v18

    if-ne v7, v0, :cond_88

    .line 941
    :cond_6e
    if-lez v19, :cond_88

    .line 942
    add-int/lit8 v19, v19, -0x1

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .line 944
    move/from16 v0, v18

    if-eq v11, v0, :cond_a6

    .line 945
    move/from16 v13, v19

    .line 946
    move/from16 v15, v19

    .line 962
    :cond_88
    :goto_88
    add-int/lit8 v8, v10, 0x1

    .line 963
    .local v8, "nextNextSection":I
    :goto_8a
    if-ge v8, v14, :cond_aa

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v20

    move/from16 v0, v20

    if-ne v0, v7, :cond_aa

    .line 965
    add-int/lit8 v8, v8, 0x1

    .line 966
    add-int/lit8 v10, v10, 0x1

    goto :goto_8a

    .line 913
    .end local v4    # "exactSection":I
    .end local v7    # "nextIndex":I
    .end local v8    # "nextNextSection":I
    .end local v10    # "nextSection":I
    .end local v11    # "prevIndex":I
    .end local v13    # "prevSection":I
    .end local v14    # "sectionCount":I
    .end local v15    # "sectionIndex":I
    .end local v18    # "targetIndex":I
    .end local v19    # "targetSection":I
    :cond_a1
    move-object/from16 v0, v16

    array-length v14, v0

    goto/16 :goto_1b

    .line 948
    .restart local v4    # "exactSection":I
    .restart local v7    # "nextIndex":I
    .restart local v10    # "nextSection":I
    .restart local v11    # "prevIndex":I
    .restart local v13    # "prevSection":I
    .restart local v14    # "sectionCount":I
    .restart local v15    # "sectionIndex":I
    .restart local v18    # "targetIndex":I
    .restart local v19    # "targetSection":I
    :cond_a6
    if-nez v19, :cond_6e

    .line 951
    const/4 v15, 0x0

    .line 952
    goto :goto_88

    .line 973
    .restart local v8    # "nextNextSection":I
    :cond_aa
    int-to-float v0, v13

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v12, v20, v21

    .line 974
    .local v12, "prevPosition":F
    int-to-float v0, v10

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v9, v20, v21

    .line 975
    .local v9, "nextPosition":F
    if-nez v3, :cond_11c

    const v17, 0x7f7fffff    # Float.MAX_VALUE

    .line 976
    .local v17, "snapThreshold":F
    :goto_bf
    if-ne v13, v4, :cond_124

    sub-float v20, p1, v12

    cmpg-float v20, v20, v17

    if-gez v20, :cond_124

    .line 977
    move/from16 v18, v11

    .line 984
    :goto_c9
    const/16 v20, 0x0

    add-int/lit8 v21, v3, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v18

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/HorizontalListView;

    move/from16 v20, v0

    if-eqz v20, :cond_13b

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/HorizontalListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v18

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/widget/HorizontalListView;->setSelectionFromTop(II)V

    .line 1003
    .end local v4    # "exactSection":I
    .end local v7    # "nextIndex":I
    .end local v8    # "nextNextSection":I
    .end local v9    # "nextPosition":F
    .end local v10    # "nextSection":I
    .end local v11    # "prevIndex":I
    .end local v12    # "prevPosition":F
    .end local v13    # "prevSection":I
    .end local v17    # "snapThreshold":F
    .end local v18    # "targetIndex":I
    .end local v19    # "targetSection":I
    :goto_fa
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalFastScroller;->mCurrentSection:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v15, :cond_11b

    .line 1004
    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/HorizontalFastScroller;->mCurrentSection:I

    .line 1006
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/widget/HorizontalFastScroller;->transitionPreviewLayout(I)Z

    move-result v5

    .line 1007
    .local v5, "hasPreview":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalFastScroller;->mShowingPreview:Z

    move/from16 v20, v0

    if-nez v20, :cond_197

    if-eqz v5, :cond_197

    .line 1008
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalFastScroller;->transitionToDragging()V

    .line 1013
    .end local v5    # "hasPreview":Z
    :cond_11b
    :goto_11b
    return-void

    .line 975
    .restart local v4    # "exactSection":I
    .restart local v7    # "nextIndex":I
    .restart local v8    # "nextNextSection":I
    .restart local v9    # "nextPosition":F
    .restart local v10    # "nextSection":I
    .restart local v11    # "prevIndex":I
    .restart local v12    # "prevPosition":F
    .restart local v13    # "prevSection":I
    .restart local v18    # "targetIndex":I
    .restart local v19    # "targetSection":I
    :cond_11c
    const/high16 v20, 0x3e000000    # 0.125f

    int-to-float v0, v3

    move/from16 v21, v0

    div-float v17, v20, v21

    goto :goto_bf

    .line 979
    .restart local v17    # "snapThreshold":F
    :cond_124
    sub-int v20, v7, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v21, p1, v12

    mul-float v20, v20, v21

    sub-float v21, v9, v12

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v18, v11, v20

    goto :goto_c9

    .line 989
    :cond_13b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v18

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsHorizontalListView;->setSelection(I)V

    goto :goto_fa

    .line 992
    .end local v4    # "exactSection":I
    .end local v7    # "nextIndex":I
    .end local v8    # "nextNextSection":I
    .end local v9    # "nextPosition":F
    .end local v10    # "nextSection":I
    .end local v11    # "prevIndex":I
    .end local v12    # "prevPosition":F
    .end local v13    # "prevSection":I
    .end local v15    # "sectionIndex":I
    .end local v17    # "snapThreshold":F
    .end local v18    # "targetIndex":I
    .end local v19    # "targetSection":I
    :cond_14d
    int-to-float v0, v3

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    add-int/lit8 v22, v3, -0x1

    invoke-static/range {v20 .. v22}, Landroid/util/MathUtils;->constrain(III)I

    move-result v6

    .line 994
    .local v6, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/HorizontalListView;

    move/from16 v20, v0

    if-eqz v20, :cond_185

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/HorizontalListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v6

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/widget/HorizontalListView;->setSelectionFromTop(II)V

    .line 1000
    :goto_182
    const/4 v15, -0x1

    .restart local v15    # "sectionIndex":I
    goto/16 :goto_fa

    .line 997
    .end local v15    # "sectionIndex":I
    :cond_185
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsHorizontalListView;->setSelection(I)V

    goto :goto_182

    .line 1009
    .end local v6    # "index":I
    .restart local v5    # "hasPreview":Z
    .restart local v15    # "sectionIndex":I
    :cond_197
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalFastScroller;->mShowingPreview:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11b

    if-nez v5, :cond_11b

    .line 1010
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalFastScroller;->transitionToVisible()V

    goto/16 :goto_11b
.end method

.method private setState(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 736
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    if-eqz v0, :cond_b

    .line 737
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 739
    :cond_b
    iget-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_12

    if-nez p1, :cond_12

    .line 740
    const/4 p1, 0x1

    .line 743
    :cond_12
    iget v0, p0, Landroid/widget/HorizontalFastScroller;->mState:I

    if-ne p1, v0, :cond_17

    .line 766
    :goto_16
    return-void

    .line 747
    :cond_17
    packed-switch p1, :pswitch_data_38

    .line 763
    :goto_1a
    iput p1, p0, Landroid/widget/HorizontalFastScroller;->mState:I

    .line 765
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->refreshDrawablePressedState()V

    goto :goto_16

    .line 749
    :pswitch_20
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->transitionToHidden()V

    goto :goto_1a

    .line 752
    :pswitch_24
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->transitionToVisible()V

    goto :goto_1a

    .line 755
    :pswitch_28
    iget v0, p0, Landroid/widget/HorizontalFastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Landroid/widget/HorizontalFastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 756
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->transitionToDragging()V

    goto :goto_1a

    .line 758
    :cond_34
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->transitionToVisible()V

    goto :goto_1a

    .line 747
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_20
        :pswitch_24
        :pswitch_28
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .registers 23
    .param p1, "position"    # F

    .prologue
    .line 1107
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1108
    .local v3, "container":Landroid/graphics/Rect;
    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    .line 1109
    .local v17, "top":I
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 1111
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    .line 1112
    .local v18, "trackImage":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 1113
    .local v15, "thumbImage":Landroid/widget/ImageView;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getTop()I

    move-result v19

    move/from16 v0, v19

    int-to-float v6, v0

    .line 1114
    .local v6, "min":F
    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getBottom()I

    move-result v19

    move/from16 v0, v19

    int-to-float v4, v0

    .line 1115
    .local v4, "max":F
    move v8, v6

    .line 1116
    .local v8, "offset":F
    sub-float v14, v4, v6

    .line 1117
    .local v14, "range":F
    mul-float v19, p1, v14

    add-float v16, v19, v8

    .line 1118
    .local v16, "thumbMiddle":F
    invoke-virtual {v15}, Landroid/widget/ImageView;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v16, v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1120
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalFastScroller;->mOverlayPosition:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_88

    move/from16 v12, v16

    .line 1123
    .local v12, "previewPos":F
    :goto_4b
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 1124
    .local v10, "previewImage":Landroid/widget/ImageView;
    invoke-virtual {v10}, Landroid/widget/ImageView;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v9, v19, v20

    .line 1125
    .local v9, "previewHalfHeight":F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v7, v19, v9

    .line 1126
    .local v7, "minP":F
    int-to-float v0, v2

    move/from16 v19, v0

    sub-float v5, v19, v9

    .line 1127
    .local v5, "maxP":F
    invoke-static {v12, v7, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v11

    .line 1128
    .local v11, "previewMiddle":F
    sub-float v13, v11, v9

    .line 1129
    .local v13, "previewTop":F
    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1133
    return-void

    .line 1120
    .end local v5    # "maxP":F
    .end local v7    # "minP":F
    .end local v9    # "previewHalfHeight":F
    .end local v10    # "previewImage":Landroid/widget/ImageView;
    .end local v11    # "previewMiddle":F
    .end local v12    # "previewPos":F
    .end local v13    # "previewTop":F
    :cond_88
    const/4 v12, 0x0

    goto :goto_4b
.end method

.method private startPendingDrag()V
    .registers 5

    .prologue
    .line 1252
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mHasPendingDrag:Z

    .line 1253
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    sget-wide v2, Landroid/widget/HorizontalFastScroller;->TAP_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1254
    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .registers 26
    .param p1, "sectionIndex"    # I

    .prologue
    .line 1024
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalFastScroller;->mSections:[Ljava/lang/Object;

    .line 1025
    .local v13, "sections":[Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1026
    .local v19, "text":Ljava/lang/String;
    if-eqz v13, :cond_1b

    if-ltz p1, :cond_1b

    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ge v0, v1, :cond_1b

    .line 1027
    aget-object v12, v13, p1

    .line 1028
    .local v12, "section":Ljava/lang/Object;
    if-eqz v12, :cond_1b

    .line 1029
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1033
    .end local v12    # "section":Ljava/lang/Object;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1034
    .local v4, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 1037
    .local v7, "preview":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalFastScroller;->mShowingPrimary:Z

    move/from16 v20, v0

    if-eqz v20, :cond_180

    .line 1038
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1039
    .local v15, "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 1046
    .local v17, "target":Landroid/widget/TextView;
    :goto_35
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Landroid/widget/HorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1048
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Landroid/widget/HorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5b

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1055
    :cond_5b
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/widget/HorizontalFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v14

    .line 1056
    .local v14, "showTarget":Landroid/animation/Animator;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v15, v0}, Landroid/widget/HorizontalFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    .line 1057
    .local v6, "hideShowing":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1060
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 1061
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 1062
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 1063
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1064
    invoke-static {v7, v4}, Landroid/widget/HorizontalFastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v9

    .line 1065
    .local v9, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v20, 0x64

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1067
    new-instance v20, Landroid/animation/AnimatorSet;

    invoke-direct/range {v20 .. v20}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    .line 1069
    .local v5, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1073
    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v20

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v21

    sub-int v8, v20, v21

    .line 1078
    .local v8, "previewWidth":I
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getWidth()I

    move-result v18

    .line 1079
    .local v18, "targetWidth":I
    move/from16 v0, v18

    if-le v0, v8, :cond_18c

    .line 1080
    int-to-float v0, v8

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1081
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/widget/HorizontalFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1082
    .local v11, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1088
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :goto_147
    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v16

    .line 1089
    .local v16, "showingWidth":I
    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_16e

    .line 1090
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v20, v21

    .line 1091
    .local v10, "scale":F
    invoke-static {v15, v10}, Landroid/widget/HorizontalFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1092
    .restart local v11    # "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1095
    .end local v10    # "scale":F
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :cond_16e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->start()V

    .line 1097
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_196

    const/16 v20, 0x1

    :goto_17f
    return v20

    .line 1041
    .end local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v6    # "hideShowing":Landroid/animation/Animator;
    .end local v8    # "previewWidth":I
    .end local v9    # "resizePreview":Landroid/animation/Animator;
    .end local v14    # "showTarget":Landroid/animation/Animator;
    .end local v15    # "showing":Landroid/widget/TextView;
    .end local v16    # "showingWidth":I
    .end local v17    # "target":Landroid/widget/TextView;
    .end local v18    # "targetWidth":I
    :cond_180
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1042
    .restart local v15    # "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .restart local v17    # "target":Landroid/widget/TextView;
    goto/16 :goto_35

    .line 1084
    .restart local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .restart local v6    # "hideShowing":Landroid/animation/Animator;
    .restart local v8    # "previewWidth":I
    .restart local v9    # "resizePreview":Landroid/animation/Animator;
    .restart local v14    # "showTarget":Landroid/animation/Animator;
    .restart local v18    # "targetWidth":I
    :cond_18c
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    goto :goto_147

    .line 1097
    .restart local v16    # "showingWidth":I
    :cond_196
    const/16 v20, 0x0

    goto :goto_17f
.end method

.method private transitionToDragging()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x96

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 825
    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_e

    .line 826
    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 829
    :cond_e
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/widget/HorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 832
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x0

    new-array v4, v8, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/widget/HorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 835
    .local v1, "slideIn":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 836
    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 837
    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 839
    iput-boolean v6, p0, Landroid/widget/HorizontalFastScroller;->mShowingPreview:Z

    .line 840
    return-void
.end method

.method private transitionToHidden()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x12c

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 778
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_e

    .line 779
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 782
    :cond_e
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x0

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/view/View;

    iget-object v6, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v8

    iget-object v6, p0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v6, v5, v9

    iget-object v6, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v6, v5, v10

    const/4 v6, 0x3

    iget-object v7, p0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/widget/HorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 786
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-boolean v3, p0, Landroid/widget/HorizontalFastScroller;->mLayoutFromRight:Z

    if-eqz v3, :cond_6b

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 787
    .local v1, "offset":F
    :goto_3d
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v10, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v9

    invoke-static {v3, v1, v4}, Landroid/widget/HorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 791
    .local v2, "slideOut":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 792
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v10, [Landroid/animation/Animator;

    aput-object v0, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 793
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 795
    iput-boolean v8, p0, Landroid/widget/HorizontalFastScroller;->mShowingPreview:Z

    .line 796
    return-void

    .line 786
    .end local v1    # "offset":F
    .end local v2    # "slideOut":Landroid/animation/Animator;
    :cond_6b
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v1, v3

    goto :goto_3d
.end method

.method private transitionToVisible()V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 802
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_e

    .line 803
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 806
    :cond_e
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v4, 0x3f800000    # 1.0f

    new-array v5, v9, [Landroid/view/View;

    iget-object v6, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v7

    iget-object v6, p0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/widget/HorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 808
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v11, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v5, v4, v8

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v4, v9

    invoke-static {v3, v10, v4}, Landroid/widget/HorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 811
    .local v1, "fadeOut":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v9, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    invoke-static {v3, v10, v4}, Landroid/widget/HorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 814
    .local v2, "slideIn":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 815
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v11, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 816
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 818
    iput-boolean v7, p0, Landroid/widget/HorizontalFastScroller;->mShowingPreview:Z

    .line 819
    return-void
.end method

.method private updateContainerRect()V
    .registers 8

    .prologue
    const/high16 v6, 0x1000000

    const/4 v4, 0x0

    .line 675
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    .line 676
    .local v1, "list":Landroid/widget/AbsHorizontalListView;
    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView;->resolvePadding()V

    .line 678
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 679
    .local v0, "container":Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 680
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 681
    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 682
    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 684
    iget v2, p0, Landroid/widget/HorizontalFastScroller;->mScrollBarStyle:I

    .line 685
    .local v2, "scrollbarStyle":I
    if-eq v2, v6, :cond_20

    if-nez v2, :cond_54

    .line 687
    :cond_20
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 688
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 689
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 690
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 693
    if-ne v2, v6, :cond_54

    .line 694
    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->getWidth()I

    move-result v3

    .line 695
    .local v3, "width":I
    iget v4, p0, Landroid/widget/HorizontalFastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_55

    .line 696
    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 702
    .end local v3    # "width":I
    :cond_54
    :goto_54
    return-void

    .line 698
    .restart local v3    # "width":I
    :cond_55
    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_54
.end method

.method private updateLongList(II)V
    .registers 6
    .param p1, "visibleItemCount"    # I
    .param p2, "totalItemCount"    # I

    .prologue
    .line 475
    if-lez p1, :cond_12

    div-int v1, p2, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_12

    const/4 v0, 0x1

    .line 477
    .local v0, "longList":Z
    :goto_8
    iget-boolean v1, p0, Landroid/widget/HorizontalFastScroller;->mLongList:Z

    if-eq v1, v0, :cond_11

    .line 478
    iput-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mLongList:Z

    .line 480
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->onStateDependencyChanged()V

    .line 482
    :cond_11
    return-void

    .line 475
    .end local v0    # "longList":Z
    :cond_12
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .prologue
    .line 456
    iget v0, p0, Landroid/widget/HorizontalFastScroller;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 452
    iget v0, p0, Landroid/widget/HorizontalFastScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .registers 2

    .prologue
    .line 389
    iget-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 370
    iget-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mEnabled:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mLongList:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1308
    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1320
    :cond_7
    :goto_7
    return v3

    .line 1312
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1313
    .local v0, "actionMasked":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_13

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    :cond_13
    iget v1, p0, Landroid/widget/HorizontalFastScroller;->mState:I

    if-nez v1, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalFastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1316
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/HorizontalFastScroller;->setState(I)V

    .line 1317
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->postAutoHide()V

    goto :goto_7
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 1272
    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1304
    :cond_7
    :goto_7
    return v0

    .line 1276
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_4c

    goto :goto_7

    .line 1278
    :pswitch_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalFastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1284
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView;->isInScrollingContainer()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1285
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->beginDrag()V

    .line 1286
    const/4 v0, 0x1

    goto :goto_7

    .line 1289
    :cond_2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalFastScroller;->mInitialTouchY:F

    .line 1290
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->startPendingDrag()V

    goto :goto_7

    .line 1294
    :pswitch_35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalFastScroller;->isPointInside(FF)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1295
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->cancelPendingDrag()V

    goto :goto_7

    .line 1300
    :pswitch_47
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->cancelPendingDrag()V

    goto :goto_7

    .line 1276
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_10
        :pswitch_47
        :pswitch_35
        :pswitch_47
    .end packed-switch
.end method

.method public onItemCountChanged(I)V
    .registers 7
    .param p1, "totalItemCount"    # I

    .prologue
    .line 464
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v2

    .line 465
    .local v2, "visibleItemCount":I
    sub-int v3, p1, v2

    if-lez v3, :cond_23

    const/4 v1, 0x1

    .line 466
    .local v1, "hasMoreItems":Z
    :goto_b
    if-eqz v1, :cond_1f

    iget v3, p0, Landroid/widget/HorizontalFastScroller;->mState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1f

    .line 467
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/AbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v0

    .line 468
    .local v0, "firstVisibleItem":I
    invoke-direct {p0, v0, v2, p1}, Landroid/widget/HorizontalFastScroller;->getPosFromItemCount(III)F

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/HorizontalFastScroller;->setThumbPos(F)V

    .line 471
    .end local v0    # "firstVisibleItem":I
    :cond_1f
    invoke-direct {p0, v2, p1}, Landroid/widget/HorizontalFastScroller;->updateLongList(II)V

    .line 472
    return-void

    .line 465
    .end local v1    # "hasMoreItems":Z
    :cond_23
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public onScroll(III)V
    .registers 8
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 850
    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_d

    .line 851
    invoke-direct {p0, v0}, Landroid/widget/HorizontalFastScroller;->setState(I)V

    .line 871
    :cond_c
    :goto_c
    return-void

    .line 855
    :cond_d
    sub-int v2, p3, p2

    if-lez v2, :cond_12

    move v0, v1

    .line 856
    .local v0, "hasMoreItems":Z
    :cond_12
    if-eqz v0, :cond_1f

    iget v2, p0, Landroid/widget/HorizontalFastScroller;->mState:I

    if-eq v2, v3, :cond_1f

    .line 857
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalFastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/HorizontalFastScroller;->setThumbPos(F)V

    .line 860
    :cond_1f
    iput-boolean v1, p0, Landroid/widget/HorizontalFastScroller;->mScrollCompleted:Z

    .line 862
    iget v2, p0, Landroid/widget/HorizontalFastScroller;->mFirstVisibleItem:I

    if-eq v2, p1, :cond_c

    .line 863
    iput p1, p0, Landroid/widget/HorizontalFastScroller;->mFirstVisibleItem:I

    .line 866
    iget v2, p0, Landroid/widget/HorizontalFastScroller;->mState:I

    if-eq v2, v3, :cond_c

    .line 867
    invoke-direct {p0, v1}, Landroid/widget/HorizontalFastScroller;->setState(I)V

    .line 868
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->postAutoHide()V

    goto :goto_c
.end method

.method public onSectionsChanged()V
    .registers 2

    .prologue
    .line 901
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 902
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 460
    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->updateLayout()V

    .line 461
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1324
    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1395
    :cond_9
    :goto_9
    return v1

    .line 1328
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_9a

    goto :goto_9

    .line 1330
    :pswitch_12
    iget-boolean v3, p0, Landroid/widget/HorizontalFastScroller;->mHasPendingDrag:Z

    if-eqz v3, :cond_2a

    .line 1332
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->beginDrag()V

    .line 1334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/HorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1335
    .local v0, "pos":F
    invoke-direct {p0, v0}, Landroid/widget/HorizontalFastScroller;->setThumbPos(F)V

    .line 1336
    invoke-direct {p0, v0}, Landroid/widget/HorizontalFastScroller;->scrollTo(F)V

    .line 1338
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->cancelPendingDrag()V

    .line 1342
    .end local v0    # "pos":F
    :cond_2a
    iget v3, p0, Landroid/widget/HorizontalFastScroller;->mState:I

    if-ne v3, v5, :cond_9

    .line 1343
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    if-eqz v3, :cond_3c

    .line 1347
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsHorizontalListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1348
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 1351
    :cond_3c
    invoke-direct {p0, v2}, Landroid/widget/HorizontalFastScroller;->setState(I)V

    .line 1352
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->postAutoHide()V

    move v1, v2

    .line 1354
    goto :goto_9

    .line 1359
    :pswitch_44
    iget-boolean v3, p0, Landroid/widget/HorizontalFastScroller;->mHasPendingDrag:Z

    if-eqz v3, :cond_7c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalFastScroller;->mInitialTouchY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalFastScroller;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7c

    .line 1360
    invoke-direct {p0, v5}, Landroid/widget/HorizontalFastScroller;->setState(I)V

    .line 1362
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v3, :cond_68

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    if-eqz v3, :cond_68

    .line 1363
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->getSectionsFromIndexer()V

    .line 1366
    :cond_68
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    if-eqz v3, :cond_76

    .line 1367
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsHorizontalListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1368
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 1371
    :cond_76
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->cancelFling()V

    .line 1372
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->cancelPendingDrag()V

    .line 1376
    :cond_7c
    iget v3, p0, Landroid/widget/HorizontalFastScroller;->mState:I

    if-ne v3, v5, :cond_9

    .line 1378
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/HorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1379
    .restart local v0    # "pos":F
    invoke-direct {p0, v0}, Landroid/widget/HorizontalFastScroller;->setThumbPos(F)V

    .line 1382
    iget-boolean v1, p0, Landroid/widget/HorizontalFastScroller;->mScrollCompleted:Z

    if-eqz v1, :cond_92

    .line 1383
    invoke-direct {p0, v0}, Landroid/widget/HorizontalFastScroller;->scrollTo(F)V

    :cond_92
    move v1, v2

    .line 1386
    goto/16 :goto_9

    .line 1391
    .end local v0    # "pos":F
    :pswitch_95
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->cancelPendingDrag()V

    goto/16 :goto_9

    .line 1328
    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_12
        :pswitch_44
        :pswitch_95
    .end packed-switch
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 348
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 349
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 350
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 351
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 352
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 353
    return-void
.end method

.method public setAlwaysShow(Z)V
    .registers 3
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 377
    iget-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_9

    .line 378
    iput-boolean p1, p0, Landroid/widget/HorizontalFastScroller;->mAlwaysShow:Z

    .line 380
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->onStateDependencyChanged()V

    .line 382
    :cond_9
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 359
    iget-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_9

    .line 360
    iput-boolean p1, p0, Landroid/widget/HorizontalFastScroller;->mEnabled:Z

    .line 362
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->onStateDependencyChanged()V

    .line 364
    :cond_9
    return-void
.end method

.method public setScrollBarStyle(I)V
    .registers 3
    .param p1, "style"    # I

    .prologue
    .line 410
    iget v0, p0, Landroid/widget/HorizontalFastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_9

    .line 411
    iput p1, p0, Landroid/widget/HorizontalFastScroller;->mScrollBarStyle:I

    .line 413
    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->updateLayout()V

    .line 415
    :cond_9
    return-void
.end method

.method public setScrollbarPosition(I)V
    .registers 10
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 425
    if-nez p1, :cond_d

    .line 426
    iget-object v4, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_4a

    move p1, v3

    .line 430
    :cond_d
    :goto_d
    iget v4, p0, Landroid/widget/HorizontalFastScroller;->mScrollbarPosition:I

    if-eq v4, p1, :cond_49

    .line 431
    iput p1, p0, Landroid/widget/HorizontalFastScroller;->mScrollbarPosition:I

    .line 432
    if-eq p1, v3, :cond_4c

    move v4, v3

    :goto_16
    iput-boolean v4, p0, Landroid/widget/HorizontalFastScroller;->mLayoutFromRight:Z

    .line 434
    iget-object v4, p0, Landroid/widget/HorizontalFastScroller;->mPreviewResId:[I

    iget-boolean v6, p0, Landroid/widget/HorizontalFastScroller;->mLayoutFromRight:Z

    if-eqz v6, :cond_4e

    :goto_1e
    aget v2, v4, v3

    .line 435
    .local v2, "previewResId":I
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 438
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 439
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_46

    .line 440
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 441
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 442
    iget v3, p0, Landroid/widget/HorizontalFastScroller;->mPreviewPadding:I

    iget v4, p0, Landroid/widget/HorizontalFastScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 443
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 447
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_46
    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->updateLayout()V

    .line 449
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v2    # "previewResId":I
    :cond_49
    return-void

    .line 426
    :cond_4a
    const/4 p1, 0x2

    goto :goto_d

    :cond_4c
    move v4, v5

    .line 432
    goto :goto_16

    :cond_4e
    move v3, v5

    .line 434
    goto :goto_1e
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 421
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/HorizontalFastScroller;->setState(I)V

    .line 422
    return-void
.end method

.method public updateLayout()V
    .registers 4

    .prologue
    .line 515
    iget-boolean v1, p0, Landroid/widget/HorizontalFastScroller;->mUpdatingLayout:Z

    if-eqz v1, :cond_5

    .line 542
    :goto_4
    return-void

    .line 519
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/HorizontalFastScroller;->mUpdatingLayout:Z

    .line 521
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->updateContainerRect()V

    .line 523
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->layoutThumb()V

    .line 524
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->layoutTrack()V

    .line 526
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 527
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/HorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 528
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/HorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 529
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/HorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 530
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/HorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 532
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_5c

    .line 534
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 535
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 536
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 537
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 538
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/widget/HorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 541
    :cond_5c
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/HorizontalFastScroller;->mUpdatingLayout:Z

    goto :goto_4
.end method
