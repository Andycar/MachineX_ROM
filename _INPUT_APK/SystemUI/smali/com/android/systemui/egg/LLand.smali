.class public Lcom/android/systemui/egg/LLand;
.super Landroid/widget/FrameLayout;
.source "LLand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/egg/LLand$Star;,
        Lcom/android/systemui/egg/LLand$Cloud;,
        Lcom/android/systemui/egg/LLand$Building;,
        Lcom/android/systemui/egg/LLand$Scenery;,
        Lcom/android/systemui/egg/LLand$Stem;,
        Lcom/android/systemui/egg/LLand$Pop;,
        Lcom/android/systemui/egg/LLand$Obstacle;,
        Lcom/android/systemui/egg/LLand$Player;,
        Lcom/android/systemui/egg/LLand$GameView;,
        Lcom/android/systemui/egg/LLand$Params;
    }
.end annotation


# static fields
.field public static final AUTOSTART:Z = true

.field private static final DAY:I = 0x0

.field public static final DEBUG:Z

.field public static final DEBUG_DRAW:Z = false

.field public static final DEBUG_IDDQD:Z = false

.field public static final DEBUG_SPEED_MULTIPLIER:F = 1.0f

.field public static final HAVE_STARS:Z = true

.field private static final NIGHT:I = 0x1

.field private static PARAMS:Lcom/android/systemui/egg/LLand$Params; = null

.field static final POPS:[I

.field private static final SKIES:[[I

.field private static final SUNSET:I = 0x3

.field public static final TAG:Ljava/lang/String; = "LLand"

.field private static final TWILIGHT:I = 0x2

.field static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private dt:F

.field final hsv:[F

.field private mAnim:Landroid/animation/TimeAnimator;

.field private mAnimating:Z

.field private mDroid:Lcom/android/systemui/egg/LLand$Player;

.field private mFlipped:Z

.field private mFrozen:Z

.field private mHeight:I

.field private mLastPipeTime:F

.field private mObstaclesInPlay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/egg/LLand$Obstacle;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaying:Z

.field private mScore:I

.field private mScoreField:Landroid/widget/TextView;

.field private mSplash:Landroid/view/View;

.field private mTimeOfDay:I

.field private mWidth:I

.field private t:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 51
    const-string v0, "LLand"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/egg/LLand;->DEBUG:Z

    .line 66
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/egg/LLand;->POPS:[I

    .line 142
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/egg/LLand;->SKIES:[[I

    .line 676
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/egg/LLand;->sTmpRect:Landroid/graphics/Rect;

    return-void

    .line 66
    :array_0
    .array-data 4
        0x7f020259
        0x0
        0x7f02025a
        0x0
        0x7f02025b
        0x1
        0x7f02025c
        0x0
        0x7f02025d
        0x1
        0x7f02025e
        0x1
        0x7f02025f
        0x1
    .end array-data

    .line 142
    :array_1
    .array-data 4
        -0x3f3f01
        -0x5f5f01
    .end array-data

    :array_2
    .array-data 4
        -0xfffff0
        -0x1000000
    .end array-data

    :array_3
    .array-data 4
        -0xffffc0
        -0xfffff0
    .end array-data

    :array_4
    .array-data 4
        -0x5f7fe0
        -0xdfbf80
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/egg/LLand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/egg/LLand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    .line 199
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/egg/LLand;->hsv:[F

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/LLand;->setFocusable(Z)V

    .line 162
    new-instance v0, Lcom/android/systemui/egg/LLand$Params;

    invoke-virtual {p0}, Lcom/android/systemui/egg/LLand;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/egg/LLand$Params;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    .line 163
    const/4 v0, 0x0

    sget-object v1, Lcom/android/systemui/egg/LLand;->SKIES:[[I

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/android/systemui/egg/LLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand;->mTimeOfDay:I

    .line 164
    return-void

    .line 199
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static final varargs L(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/systemui/egg/LLand;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "LLand"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/egg/LLand;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/egg/LLand;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/egg/LLand;->step(JJ)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/egg/LLand;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/egg/LLand;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/egg/LLand;->mFrozen:Z

    return p1
.end method

.method static synthetic access$200()Lcom/android/systemui/egg/LLand$Params;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    return-object v0
.end method

.method private addScore(I)V
    .locals 1
    .param p1, "incr"    # I

    .prologue
    .line 320
    iget v0, p0, Lcom/android/systemui/egg/LLand;->mScore:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/LLand;->setScore(I)V

    .line 321
    return-void
.end method

.method public static final clamp(F)F
    .locals 3
    .param p0, "f"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 382
    cmpg-float v2, p0, v0

    if-gez v2, :cond_1

    move p0, v0

    .end local p0    # "f":F
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "f":F
    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    move p0, v1

    goto :goto_0
.end method

.method public static final frand()F
    .locals 2

    .prologue
    .line 386
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static final frand(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 390
    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v0

    invoke-static {v0, p0, p1}, Lcom/android/systemui/egg/LLand;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public static final irand(II)I
    .locals 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 394
    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v0

    int-to-float v1, p0

    int-to-float v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/egg/LLand;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static final lerp(FFF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "a"    # F
    .param p2, "b"    # F

    .prologue
    .line 374
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private poke()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 605
    const-string v0, "poke"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    iget-boolean v0, p0, Lcom/android/systemui/egg/LLand;->mFrozen:Z

    if-eqz v0, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/egg/LLand;->mAnimating:Z

    if-nez v0, :cond_3

    .line 608
    invoke-direct {p0}, Lcom/android/systemui/egg/LLand;->reset()V

    .line 609
    invoke-direct {p0, v2}, Lcom/android/systemui/egg/LLand;->start(Z)V

    .line 613
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    invoke-virtual {v0}, Lcom/android/systemui/egg/LLand$Player;->boost()V

    .line 614
    sget-boolean v0, Lcom/android/systemui/egg/LLand;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    iget v1, v0, Lcom/android/systemui/egg/LLand$Player;->dv:F

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/egg/LLand$Player;->dv:F

    .line 616
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    invoke-virtual {v0}, Lcom/android/systemui/egg/LLand$Player;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 610
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/egg/LLand;->mPlaying:Z

    if-nez v0, :cond_2

    .line 611
    invoke-direct {p0, v2}, Lcom/android/systemui/egg/LLand;->start(Z)V

    goto :goto_1
.end method

.method private reset()V
    .locals 26

    .prologue
    .line 202
    const-string v21, "reset"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    new-instance v17, Landroid/graphics/drawable/GradientDrawable;

    sget-object v21, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v22, Lcom/android/systemui/egg/LLand;->SKIES:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mTimeOfDay:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 207
    .local v17, "sky":Landroid/graphics/drawable/Drawable;
    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 208
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 210
    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v21

    const/high16 v22, 0x3f000000    # 0.5f

    cmpl-float v21, v21, v22

    if-lez v21, :cond_1

    const/16 v21, 0x1

    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/egg/LLand;->mFlipped:Z

    .line 211
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/egg/LLand;->mFlipped:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    const/high16 v21, -0x40800000    # -1.0f

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand;->setScaleX(F)V

    .line 213
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/egg/LLand;->setScore(I)V

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getChildCount()I

    move-result v8

    .local v8, "i":I
    move v9, v8

    .line 216
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_2
    add-int/lit8 v8, v9, -0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    if-lez v9, :cond_3

    .line 217
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui/egg/LLand;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 218
    .local v19, "v":Landroid/view/View;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/systemui/egg/LLand$GameView;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 219
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui/egg/LLand;->removeViewAt(I)V

    :cond_0
    move v9, v8

    .line 221
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_2

    .line 210
    .end local v9    # "i":I
    .end local v19    # "v":Landroid/view/View;
    :cond_1
    const/16 v21, 0x0

    goto :goto_0

    .line 211
    :cond_2
    const/high16 v21, 0x3f800000    # 1.0f

    goto :goto_1

    .line 223
    .restart local v8    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getWidth()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/egg/LLand;->mWidth:I

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getHeight()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/egg/LLand;->mHeight:I

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mTimeOfDay:I

    move/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mTimeOfDay:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    :cond_4
    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3fd0000000000000L    # 0.25

    cmpl-double v21, v22, v24

    if-lez v21, :cond_a

    const/16 v16, 0x1

    .line 229
    .local v16, "showingSun":Z
    :goto_3
    if-eqz v16, :cond_5

    .line 230
    new-instance v18, Lcom/android/systemui/egg/LLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/LLand$Star;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;)V

    .line 231
    .local v18, "sun":Lcom/android/systemui/egg/LLand$Star;
    const v21, 0x7f020529

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand$Star;->setBackgroundResource(I)V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b03b1

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 233
    .local v20, "w":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v20

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/systemui/egg/LLand;->frand(FF)F

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand$Star;->setTranslationX(F)V

    .line 234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mTimeOfDay:I

    move/from16 v21, v0

    if-nez v21, :cond_b

    .line 235
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x3f28f5c3    # 0.66f

    mul-float v22, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/android/systemui/egg/LLand;->frand(FF)F

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand$Star;->setTranslationY(F)V

    .line 236
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/egg/LLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 243
    :goto_4
    new-instance v21, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    .end local v18    # "sun":Lcom/android/systemui/egg/LLand$Star;
    .end local v20    # "w":I
    :cond_5
    if-nez v16, :cond_9

    .line 246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mTimeOfDay:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mTimeOfDay:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    :cond_6
    const/4 v6, 0x1

    .line 247
    .local v6, "dark":Z
    :goto_5
    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v7

    .line 248
    .local v7, "ff":F
    if-eqz v6, :cond_7

    const/high16 v21, 0x3f400000    # 0.75f

    cmpg-float v21, v7, v21

    if-ltz v21, :cond_8

    :cond_7
    const/high16 v21, 0x3f000000    # 0.5f

    cmpg-float v21, v7, v21

    if-gez v21, :cond_9

    .line 249
    :cond_8
    new-instance v12, Lcom/android/systemui/egg/LLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v12, v0, v1}, Lcom/android/systemui/egg/LLand$Star;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;)V

    .line 250
    .local v12, "moon":Lcom/android/systemui/egg/LLand$Star;
    const v21, 0x7f020217

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/systemui/egg/LLand$Star;->setBackgroundResource(I)V

    .line 251
    invoke-virtual {v12}, Lcom/android/systemui/egg/LLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    if-eqz v6, :cond_d

    const/16 v21, 0xff

    :goto_6
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 252
    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    cmpl-double v21, v22, v24

    if-lez v21, :cond_e

    const/high16 v21, -0x40800000    # -1.0f

    :goto_7
    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/systemui/egg/LLand$Star;->setScaleX(F)V

    .line 253
    invoke-virtual {v12}, Lcom/android/systemui/egg/LLand$Star;->getScaleX()F

    move-result v21

    const/high16 v22, 0x40a00000    # 5.0f

    const/high16 v23, 0x41f00000    # 30.0f

    invoke-static/range {v22 .. v23}, Lcom/android/systemui/egg/LLand;->frand(FF)F

    move-result v22

    mul-float v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/systemui/egg/LLand$Star;->setRotation(F)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b03b1

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 255
    .restart local v20    # "w":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v20

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/systemui/egg/LLand;->frand(FF)F

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/systemui/egg/LLand$Star;->setTranslationX(F)V

    .line 256
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    move/from16 v22, v0

    sub-int v22, v22, v20

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/systemui/egg/LLand;->frand(FF)F

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/systemui/egg/LLand$Star;->setTranslationY(F)V

    .line 257
    new-instance v21, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/systemui/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    .end local v6    # "dark":Z
    .end local v7    # "ff":F
    .end local v12    # "moon":Lcom/android/systemui/egg/LLand$Star;
    .end local v20    # "w":I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    move/from16 v21, v0

    div-int/lit8 v11, v21, 0x6

    .line 262
    .local v11, "mh":I
    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3fd0000000000000L    # 0.25

    cmpg-double v21, v22, v24

    if-gez v21, :cond_f

    const/4 v5, 0x1

    .line 263
    .local v5, "cloudless":Z
    :goto_8
    const/16 v4, 0x14

    .line 264
    .local v4, "N":I
    const/4 v8, 0x0

    :goto_9
    const/16 v21, 0x14

    move/from16 v0, v21

    if-ge v8, v0, :cond_14

    .line 265
    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v14

    .line 267
    .local v14, "r1":F
    float-to-double v0, v14

    move-wide/from16 v22, v0

    const-wide v24, 0x3fd3333333333333L    # 0.3

    cmpg-double v21, v22, v24

    if-gez v21, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mTimeOfDay:I

    move/from16 v21, v0

    if-eqz v21, :cond_10

    .line 268
    new-instance v15, Lcom/android/systemui/egg/LLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/systemui/egg/LLand$Star;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;)V

    .line 283
    .local v15, "s":Lcom/android/systemui/egg/LLand$Scenery;
    :goto_a
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v15, Lcom/android/systemui/egg/LLand$Scenery;->w:I

    move/from16 v21, v0

    iget v0, v15, Lcom/android/systemui/egg/LLand$Scenery;->h:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v10, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 284
    .local v10, "lp":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v0, v15, Lcom/android/systemui/egg/LLand$Building;

    move/from16 v21, v0

    if-eqz v21, :cond_12

    .line 285
    const/16 v21, 0x50

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 296
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v10}, Lcom/android/systemui/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mWidth:I

    move/from16 v22, v0

    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/systemui/egg/LLand;->frand(FF)F

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/systemui/egg/LLand$Scenery;->setTranslationX(F)V

    .line 264
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 228
    .end local v4    # "N":I
    .end local v5    # "cloudless":Z
    .end local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "mh":I
    .end local v14    # "r1":F
    .end local v15    # "s":Lcom/android/systemui/egg/LLand$Scenery;
    .end local v16    # "showingSun":Z
    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 238
    .restart local v16    # "showingSun":Z
    .restart local v18    # "sun":Lcom/android/systemui/egg/LLand$Star;
    .restart local v20    # "w":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3f28f5c3    # 0.66f

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    move/from16 v22, v0

    sub-int v22, v22, v20

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/systemui/egg/LLand;->frand(FF)F

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand$Star;->setTranslationY(F)V

    .line 239
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/egg/LLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 240
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/egg/LLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    const v22, -0x3f008000    # -7.984375f

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/16 :goto_4

    .line 246
    .end local v18    # "sun":Lcom/android/systemui/egg/LLand$Star;
    .end local v20    # "w":I
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 251
    .restart local v6    # "dark":Z
    .restart local v7    # "ff":F
    .restart local v12    # "moon":Lcom/android/systemui/egg/LLand$Star;
    :cond_d
    const/16 v21, 0x80

    goto/16 :goto_6

    .line 252
    :cond_e
    const/high16 v21, 0x3f800000    # 1.0f

    goto/16 :goto_7

    .line 262
    .end local v6    # "dark":Z
    .end local v7    # "ff":F
    .end local v12    # "moon":Lcom/android/systemui/egg/LLand$Star;
    .restart local v11    # "mh":I
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 269
    .restart local v4    # "N":I
    .restart local v5    # "cloudless":Z
    .restart local v14    # "r1":F
    :cond_10
    float-to-double v0, v14

    move-wide/from16 v22, v0

    const-wide v24, 0x3fe3333333333333L    # 0.6

    cmpg-double v21, v22, v24

    if-gez v21, :cond_11

    if-nez v5, :cond_11

    .line 270
    new-instance v15, Lcom/android/systemui/egg/LLand$Cloud;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/systemui/egg/LLand$Cloud;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;)V

    .restart local v15    # "s":Lcom/android/systemui/egg/LLand$Scenery;
    goto/16 :goto_a

    .line 272
    .end local v15    # "s":Lcom/android/systemui/egg/LLand$Scenery;
    :cond_11
    new-instance v15, Lcom/android/systemui/egg/LLand$Building;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/systemui/egg/LLand$Building;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;)V

    .line 274
    .restart local v15    # "s":Lcom/android/systemui/egg/LLand$Scenery;
    int-to-float v0, v8

    move/from16 v21, v0

    const/high16 v22, 0x41a00000    # 20.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v15, Lcom/android/systemui/egg/LLand$Scenery;->z:F

    .line 275
    sget-object v21, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/systemui/egg/LLand$Params;->SCENERY_Z:F

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    iget v0, v15, Lcom/android/systemui/egg/LLand$Scenery;->z:F

    move/from16 v23, v0

    add-float v22, v22, v23

    mul-float v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/systemui/egg/LLand$Scenery;->setTranslationZ(F)V

    .line 276
    const v21, 0x3f59999a    # 0.85f

    iget v0, v15, Lcom/android/systemui/egg/LLand$Scenery;->z:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v15, Lcom/android/systemui/egg/LLand$Scenery;->v:F

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/LLand;->hsv:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x432f0000    # 175.0f

    aput v23, v21, v22

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/LLand;->hsv:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/high16 v23, 0x3e800000    # 0.25f

    aput v23, v21, v22

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/LLand;->hsv:[F

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/high16 v23, 0x3f800000    # 1.0f

    iget v0, v15, Lcom/android/systemui/egg/LLand$Scenery;->z:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    aput v23, v21, v22

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/LLand;->hsv:[F

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/systemui/egg/LLand$Scenery;->setBackgroundColor(I)V

    .line 281
    sget-object v21, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/systemui/egg/LLand$Params;->BUILDING_HEIGHT_MIN:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v11}, Lcom/android/systemui/egg/LLand;->irand(II)I

    move-result v21

    move/from16 v0, v21

    iput v0, v15, Lcom/android/systemui/egg/LLand$Scenery;->h:I

    goto/16 :goto_a

    .line 287
    .restart local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_12
    const/16 v21, 0x30

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 288
    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v13

    .line 289
    .local v13, "r":F
    instance-of v0, v15, Lcom/android/systemui/egg/LLand$Star;

    move/from16 v21, v0

    if-eqz v21, :cond_13

    .line 290
    mul-float v21, v13, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_b

    .line 292
    :cond_13
    const/high16 v21, 0x3f800000    # 1.0f

    mul-float v22, v13, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_b

    .line 300
    .end local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v13    # "r":F
    .end local v14    # "r1":F
    .end local v15    # "s":Lcom/android/systemui/egg/LLand$Scenery;
    :cond_14
    new-instance v21, Lcom/android/systemui/egg/LLand$Player;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/LLand$Player;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/egg/LLand$Player;->setX(F)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/egg/LLand$Player;->setY(F)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    move-object/from16 v21, v0

    new-instance v22, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v23, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/egg/LLand$Params;->PLAYER_SIZE:I

    move/from16 v23, v0

    sget-object v24, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/egg/LLand$Params;->PLAYER_SIZE:I

    move/from16 v24, v0

    invoke-direct/range {v22 .. v24}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    new-instance v21, Landroid/animation/TimeAnimator;

    invoke-direct/range {v21 .. v21}, Landroid/animation/TimeAnimator;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/egg/LLand;->mAnim:Landroid/animation/TimeAnimator;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/LLand;->mAnim:Landroid/animation/TimeAnimator;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/systemui/egg/LLand$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/egg/LLand$1;-><init>(Lcom/android/systemui/egg/LLand;)V

    invoke-virtual/range {v21 .. v22}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 312
    return-void
.end method

.method public static final rlerp(FFF)F
    .locals 2
    .param p0, "v"    # F
    .param p1, "a"    # F
    .param p2, "b"    # F

    .prologue
    .line 378
    sub-float v0, p0, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    return v0
.end method

.method private setScore(I)V
    .locals 2
    .param p1, "score"    # I

    .prologue
    .line 315
    iput p1, p0, Lcom/android/systemui/egg/LLand;->mScore:I

    .line 316
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mScoreField:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mScoreField:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :cond_0
    return-void
.end method

.method private start(Z)V
    .locals 7
    .param p1, "startPlaying"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 324
    const-string v1, "start(startPlaying=%s)"

    new-array v2, v5, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    const-string v0, "true"

    :goto_0
    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    if-eqz p1, :cond_3

    .line 326
    iput-boolean v5, p0, Lcom/android/systemui/egg/LLand;->mPlaying:Z

    .line 328
    iput v4, p0, Lcom/android/systemui/egg/LLand;->t:F

    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/egg/LLand;->getGameTime()F

    move-result v0

    sget-object v1, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v1, v1, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_PERIOD:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/egg/LLand;->mLastPipeTime:F

    .line 332
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mSplash:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mSplash:Landroid/view/View;

    sget-object v1, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v1, v1, Lcom/android/systemui/egg/LLand$Params;->HUD_Z:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 334
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 336
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mScoreField:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mScoreField:Landroid/widget/TextView;

    const v1, -0x555556

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mScoreField:Landroid/widget/TextView;

    const v1, 0x7f020298

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 343
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    invoke-virtual {v0, v6}, Lcom/android/systemui/egg/LLand$Player;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    iget v1, p0, Lcom/android/systemui/egg/LLand;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand$Player;->setX(F)V

    .line 345
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    iget v1, p0, Lcom/android/systemui/egg/LLand;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand$Player;->setY(F)V

    .line 349
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/egg/LLand;->mAnimating:Z

    if-nez v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 351
    iput-boolean v5, p0, Lcom/android/systemui/egg/LLand;->mAnimating:Z

    .line 353
    :cond_1
    return-void

    .line 324
    :cond_2
    const-string v0, "false"

    goto/16 :goto_0

    .line 347
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand$Player;->setVisibility(I)V

    goto :goto_1
.end method

.method private step(JJ)V
    .locals 27
    .param p1, "t_ms"    # J
    .param p3, "dt_ms"    # J

    .prologue
    .line 398
    move-wide/from16 v0, p1

    long-to-float v3, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/LLand;->t:F

    .line 399
    move-wide/from16 v0, p3

    long-to-float v3, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/LLand;->dt:F

    .line 401
    sget-boolean v3, Lcom/android/systemui/egg/LLand;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 402
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->t:F

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/LLand;->t:F

    .line 403
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->dt:F

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/LLand;->dt:F

    .line 407
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getChildCount()I

    move-result v2

    .line 408
    .local v2, "N":I
    const/4 v12, 0x0

    .line 409
    .local v12, "i":I
    :goto_0
    if-ge v12, v2, :cond_2

    .line 410
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/egg/LLand;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 411
    .local v25, "v":Landroid/view/View;
    move-object/from16 v0, v25

    instance-of v3, v0, Lcom/android/systemui/egg/LLand$GameView;

    if-eqz v3, :cond_1

    move-object/from16 v3, v25

    .line 412
    check-cast v3, Lcom/android/systemui/egg/LLand$GameView;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/egg/LLand;->t:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/egg/LLand;->dt:F

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v3 .. v9}, Lcom/android/systemui/egg/LLand$GameView;->step(JJFF)V

    .line 409
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 417
    .end local v25    # "v":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/egg/LLand;->mPlaying:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/egg/LLand$Player;->below(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 421
    const-string v3, "player hit the floor"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->stop()V

    .line 427
    :cond_3
    const/16 v21, 0x0

    .line 428
    .local v21, "passedBarrier":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, "j":I
    move/from16 v16, v15

    .end local v15    # "j":I
    .local v16, "j":I
    :goto_1
    add-int/lit8 v15, v16, -0x1

    .end local v16    # "j":I
    .restart local v15    # "j":I
    if-lez v16, :cond_7

    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/egg/LLand$Obstacle;

    .line 430
    .local v17, "ob":Lcom/android/systemui/egg/LLand$Obstacle;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/egg/LLand;->mPlaying:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->intersects(Lcom/android/systemui/egg/LLand$Player;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 431
    const-string v3, "player hit an obstacle"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->stop()V

    :cond_4
    :goto_2
    move/from16 v16, v15

    .line 437
    .end local v15    # "j":I
    .restart local v16    # "j":I
    goto :goto_1

    .line 433
    .end local v16    # "j":I
    .restart local v15    # "j":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->cleared(Lcom/android/systemui/egg/LLand$Player;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 434
    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/android/systemui/egg/LLand$Stem;

    if-eqz v3, :cond_6

    const/16 v21, 0x1

    .line 435
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 439
    .end local v17    # "ob":Lcom/android/systemui/egg/LLand$Obstacle;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/egg/LLand;->mPlaying:Z

    if-eqz v3, :cond_8

    if-eqz v21, :cond_8

    .line 440
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/egg/LLand;->addScore(I)V

    :cond_8
    move v13, v12

    .line 445
    .end local v12    # "i":I
    .local v13, "i":I
    :goto_3
    add-int/lit8 v12, v13, -0x1

    .end local v13    # "i":I
    .restart local v12    # "i":I
    if-lez v13, :cond_b

    .line 446
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/egg/LLand;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 447
    .restart local v25    # "v":Landroid/view/View;
    move-object/from16 v0, v25

    instance-of v3, v0, Lcom/android/systemui/egg/LLand$Obstacle;

    if-eqz v3, :cond_a

    .line 448
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9

    .line 449
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/egg/LLand;->removeViewAt(I)V

    :cond_9
    :goto_4
    move v13, v12

    .line 457
    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto :goto_3

    .line 451
    .end local v13    # "i":I
    .restart local v12    # "i":I
    :cond_a
    move-object/from16 v0, v25

    instance-of v3, v0, Lcom/android/systemui/egg/LLand$Scenery;

    if-eqz v3, :cond_9

    move-object/from16 v22, v25

    .line 452
    check-cast v22, Lcom/android/systemui/egg/LLand$Scenery;

    .line 453
    .local v22, "s":Lcom/android/systemui/egg/LLand$Scenery;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTranslationX()F

    move-result v3

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/systemui/egg/LLand$Scenery;->w:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_4

    .line 460
    .end local v22    # "s":Lcom/android/systemui/egg/LLand$Scenery;
    .end local v25    # "v":Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/egg/LLand;->mPlaying:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->t:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/LLand;->mLastPipeTime:F

    sub-float/2addr v3, v4

    sget-object v4, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_PERIOD:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_c

    .line 461
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->t:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/LLand;->mLastPipeTime:F

    .line 462
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    sget-object v6, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v6, v6, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_MIN:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    sget-object v6, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v6, v6, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_GAP:I

    sub-int/2addr v3, v6

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    sget-object v4, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_MIN:I

    add-int v18, v3, v4

    .line 465
    .local v18, "obstacley":I
    sget-object v3, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    sget-object v4, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_STEM_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v14, v3, 0x2

    .line 466
    .local v14, "inset":I
    sget-object v3, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    div-int/lit8 v26, v3, 0x2

    .line 468
    .local v26, "yinset":I
    const/4 v3, 0x0

    const/16 v4, 0xfa

    invoke-static {v3, v4}, Lcom/android/systemui/egg/LLand;->irand(II)I

    move-result v10

    .line 469
    .local v10, "d1":I
    new-instance v23, Lcom/android/systemui/egg/LLand$Stem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v3

    sub-int v4, v18, v26

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/systemui/egg/LLand$Stem;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;FZ)V

    .line 470
    .local v23, "s1":Lcom/android/systemui/egg/LLand$Obstacle;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_STEM_WIDTH:I

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/systemui/egg/LLand$Obstacle;->h:F

    float-to-int v5, v5

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->mWidth:I

    add-int/2addr v3, v14

    int-to-float v3, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationX(F)V

    .line 475
    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/systemui/egg/LLand$Obstacle;->h:F

    neg-float v3, v3

    move/from16 v0, v26

    int-to-float v4, v0

    sub-float/2addr v3, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationY(F)V

    .line 476
    sget-object v3, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_Z:F

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationZ(F)V

    .line 477
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/egg/LLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v10

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 481
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    new-instance v19, Lcom/android/systemui/egg/LLand$Pop;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/egg/LLand$Pop;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;F)V

    .line 484
    .local v19, "p1":Lcom/android/systemui/egg/LLand$Obstacle;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    sget-object v5, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->mWidth:I

    int-to-float v3, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationX(F)V

    .line 489
    sget-object v3, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationY(F)V

    .line 490
    sget-object v3, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_Z:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationZ(F)V

    .line 491
    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setScaleX(F)V

    .line 492
    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setScaleY(F)V

    .line 493
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/egg/LLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/systemui/egg/LLand$Obstacle;->h:F

    int-to-float v5, v14

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v10

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    const/4 v3, 0x0

    const/16 v4, 0xfa

    invoke-static {v3, v4}, Lcom/android/systemui/egg/LLand;->irand(II)I

    move-result v11

    .line 502
    .local v11, "d2":I
    new-instance v24, Lcom/android/systemui/egg/LLand$Stem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    sub-int v4, v4, v18

    sget-object v5, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_GAP:I

    sub-int/2addr v4, v5

    sub-int v4, v4, v26

    int-to-float v4, v4

    const/4 v5, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/systemui/egg/LLand$Stem;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;FZ)V

    .line 505
    .local v24, "s2":Lcom/android/systemui/egg/LLand$Obstacle;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_STEM_WIDTH:I

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/systemui/egg/LLand$Obstacle;->h:F

    float-to-int v5, v5

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->mWidth:I

    add-int/2addr v3, v14

    int-to-float v3, v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationX(F)V

    .line 510
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    add-int v3, v3, v26

    int-to-float v3, v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationY(F)V

    .line 511
    sget-object v3, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_Z:F

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationZ(F)V

    .line 512
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/egg/LLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/systemui/egg/LLand$Obstacle;->h:F

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v11

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 516
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    new-instance v20, Lcom/android/systemui/egg/LLand$Pop;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/egg/LLand$Pop;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;F)V

    .line 519
    .local v20, "p2":Lcom/android/systemui/egg/LLand$Obstacle;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    sget-object v5, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->mWidth:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationX(F)V

    .line 524
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationY(F)V

    .line 525
    sget-object v3, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_Z:F

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationZ(F)V

    .line 526
    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setScaleX(F)V

    .line 527
    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setScaleY(F)V

    .line 528
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/egg/LLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/systemui/egg/LLand$Obstacle;->h:F

    sub-float/2addr v4, v5

    move/from16 v0, v26

    int-to-float v5, v0

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v11

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    .end local v10    # "d1":I
    .end local v11    # "d2":I
    .end local v14    # "inset":I
    .end local v18    # "obstacley":I
    .end local v19    # "p1":Lcom/android/systemui/egg/LLand$Obstacle;
    .end local v20    # "p2":Lcom/android/systemui/egg/LLand$Obstacle;
    .end local v23    # "s1":Lcom/android/systemui/egg/LLand$Obstacle;
    .end local v24    # "s2":Lcom/android/systemui/egg/LLand$Obstacle;
    .end local v26    # "yinset":I
    :cond_c
    return-void
.end method

.method private stop()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 356
    iget-boolean v0, p0, Lcom/android/systemui/egg/LLand;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/egg/LLand;->mAnim:Landroid/animation/TimeAnimator;

    .line 359
    iput-boolean v2, p0, Lcom/android/systemui/egg/LLand;->mAnimating:Z

    .line 360
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mScoreField:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mScoreField:Landroid/widget/TextView;

    const v1, 0x7f020299

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 362
    sget-object v0, Lcom/android/systemui/egg/LLand;->SKIES:[[I

    array-length v0, v0

    invoke-static {v2, v0}, Lcom/android/systemui/egg/LLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand;->mTimeOfDay:I

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/egg/LLand;->mFrozen:Z

    .line 364
    new-instance v0, Lcom/android/systemui/egg/LLand$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/egg/LLand$2;-><init>(Lcom/android/systemui/egg/LLand;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/egg/LLand;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 371
    :cond_0
    return-void
.end method

.method private unpoke()V
    .locals 2

    .prologue
    .line 621
    const-string v0, "unboost"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    iget-boolean v0, p0, Lcom/android/systemui/egg/LLand;->mFrozen:Z

    if-eqz v0, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/egg/LLand;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    invoke-virtual {v0}, Lcom/android/systemui/egg/LLand$Player;->unboost()V

    goto :goto_0
.end method


# virtual methods
.method public getGameHeight()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/android/systemui/egg/LLand;->mHeight:I

    return v0
.end method

.method public getGameTime()F
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/android/systemui/egg/LLand;->t:F

    return v0
.end method

.method public getGameWidth()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/systemui/egg/LLand;->mWidth:I

    return v0
.end method

.method public getLastTimeStep()F
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/android/systemui/egg/LLand;->dt:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 629
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 631
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 600
    sget-boolean v0, Lcom/android/systemui/egg/LLand;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "generic: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    :cond_0
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 570
    sget-boolean v2, Lcom/android/systemui/egg/LLand;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "keyDown: %d"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 580
    :goto_0
    return v0

    .line 577
    :sswitch_0
    invoke-direct {p0}, Lcom/android/systemui/egg/LLand;->poke()V

    goto :goto_0

    .line 571
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 585
    sget-boolean v2, Lcom/android/systemui/egg/LLand;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "keyDown: %d"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 595
    :goto_0
    return v0

    .line 592
    :sswitch_0
    invoke-direct {p0}, Lcom/android/systemui/egg/LLand;->unpoke()V

    goto :goto_0

    .line 586
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/systemui/egg/LLand;->stop()V

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/egg/LLand;->reset()V

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/LLand;->start(Z)V

    .line 197
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 542
    sget-boolean v2, Lcom/android/systemui/egg/LLand;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "touch: %s"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 551
    :goto_0
    return v0

    .line 545
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/egg/LLand;->poke()V

    goto :goto_0

    .line 548
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/egg/LLand;->unpoke()V

    goto :goto_0

    .line 543
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 556
    sget-boolean v2, Lcom/android/systemui/egg/LLand;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "trackball: %s"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 565
    :goto_0
    return v0

    .line 559
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/egg/LLand;->poke()V

    goto :goto_0

    .line 562
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/egg/LLand;->unpoke()V

    goto :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setScoreField(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/systemui/egg/LLand;->mScoreField:Landroid/widget/TextView;

    .line 178
    if-eqz p1, :cond_1

    .line 179
    sget-object v0, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v0, v0, Lcom/android/systemui/egg/LLand$Params;->HUD_Z:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationZ(F)V

    .line 180
    iget-boolean v0, p0, Lcom/android/systemui/egg/LLand;->mAnimating:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/egg/LLand;->mPlaying:Z

    if-nez v0, :cond_1

    .line 181
    :cond_0
    const/high16 v0, -0x3c060000    # -500.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 184
    :cond_1
    return-void
.end method

.method public setSplash(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/systemui/egg/LLand;->mSplash:Landroid/view/View;

    .line 188
    return-void
.end method

.method public willNotDraw()Z
    .locals 1

    .prologue
    .line 168
    sget-boolean v0, Lcom/android/systemui/egg/LLand;->DEBUG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
