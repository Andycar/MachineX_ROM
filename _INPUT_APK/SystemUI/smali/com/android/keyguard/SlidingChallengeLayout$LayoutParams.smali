.class public Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SlidingChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/SlidingChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final CHILD_TYPE_CHALLENGE:I = 0x2

.field public static final CHILD_TYPE_EXPAND_CHALLENGE_HANDLE:I = 0x6

.field public static final CHILD_TYPE_NONE:I = 0x0

.field public static final CHILD_TYPE_SCRIM:I = 0x4

.field public static final CHILD_TYPE_WIDGETS:I = 0x5


# instance fields
.field public childType:I

.field public maxHeight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1267
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(II)V

    .line 1268
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1271
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1257
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1272
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 1289
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1257
    iput v2, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1291
    sget-object v1, Lcom/android/keyguard/R$styleable;->SlidingChallengeLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1293
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/android/keyguard/R$styleable;->SlidingChallengeLayout_Layout_layout_childType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1295
    sget v1, Lcom/android/keyguard/R$styleable;->SlidingChallengeLayout_Layout_layout_maxHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->maxHeight:I

    .line 1297
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1298
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1275
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1257
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1276
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1279
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1257
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1280
    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    .prologue
    .line 1283
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1257
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1285
    iget v0, p1, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    iput v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1286
    return-void
.end method
