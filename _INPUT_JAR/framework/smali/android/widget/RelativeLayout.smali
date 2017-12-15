.class public Landroid/widget/RelativeLayout;
.super Landroid/view/ViewGroup;
.source "RelativeLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$1;,
        Landroid/widget/RelativeLayout$DependencyGraph;,
        Landroid/widget/RelativeLayout$LayoutParams;,
        Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;
    }
.end annotation


# static fields
.field public static final ABOVE:I = 0x2

.field public static final ALIGN_BASELINE:I = 0x4

.field public static final ALIGN_BOTTOM:I = 0x8

.field public static final ALIGN_END:I = 0x13

.field public static final ALIGN_LEFT:I = 0x5

.field public static final ALIGN_PARENT_BOTTOM:I = 0xc

.field public static final ALIGN_PARENT_END:I = 0x15

.field public static final ALIGN_PARENT_LEFT:I = 0x9

.field public static final ALIGN_PARENT_RIGHT:I = 0xb

.field public static final ALIGN_PARENT_START:I = 0x14

.field public static final ALIGN_PARENT_TOP:I = 0xa

.field public static final ALIGN_RIGHT:I = 0x7

.field public static final ALIGN_START:I = 0x12

.field public static final ALIGN_TOP:I = 0x6

.field public static final BELOW:I = 0x3

.field public static final CENTER_HORIZONTAL:I = 0xe

.field public static final CENTER_IN_PARENT:I = 0xd

.field public static final CENTER_VERTICAL:I = 0xf

.field private static final DEFAULT_WIDTH:I = 0x10000

.field public static final END_OF:I = 0x11

.field public static final LEFT_OF:I = 0x0

.field public static final RIGHT_OF:I = 0x1

.field private static final RULES_HORIZONTAL:[I

.field private static final RULES_VERTICAL:[I

.field public static final START_OF:I = 0x10

.field public static final TRUE:I = -0x1

.field private static final VALUE_NOT_SET:I = -0x80000000

.field private static final VERB_COUNT:I = 0x16


# instance fields
.field private mAllowBrokenMeasureSpecs:Z

.field private mBaselineView:Landroid/view/View;

.field private final mContentBounds:Landroid/graphics/Rect;

.field private mDirtyHierarchy:Z

.field private final mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

.field private mGravity:I

.field private mHasBaselineAlignedChild:Z

.field private mIgnoreGravity:I

.field private mMeasureVerticalWithPaddingMargin:Z

.field private final mSelfBounds:Landroid/graphics/Rect;

.field private mSortedHorizontalChildren:[Landroid/view/View;

.field private mSortedVerticalChildren:[Landroid/view/View;

.field private mTopToBottomLeftToRightSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 191
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    .line 195
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    return-void

    .line 191
    :array_12
    .array-data 4
        0x2
        0x3
        0x4
        0x6
        0x8
    .end array-data

    .line 195
    :array_20
    .array-data 4
        0x0
        0x1
        0x5
        0x7
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 249
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 204
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 207
    const v0, 0x800033

    iput v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 208
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 212
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 217
    new-instance v0, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$1;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 222
    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 226
    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 250
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 251
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;->queryCompatibilityModes(Landroid/content/Context;)V

    .line 252
    return-void
.end method

.method private alignBaseline(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    const/4 v8, 0x4

    const/4 v9, -0x1

    .line 649
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v4

    .line 650
    .local v4, "layoutDirection":I
    invoke-virtual {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v7

    .line 651
    .local v7, "rules":[I
    invoke-direct {p0, v7, v8}, Landroid/widget/RelativeLayout;->getRelatedViewBaseline([II)I

    move-result v0

    .line 653
    .local v0, "anchorBaseline":I
    if-eq v0, v9, :cond_38

    .line 654
    invoke-direct {p0, v7, v8}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 655
    .local v1, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_38

    .line 656
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v8

    add-int v6, v8, v0

    .line 657
    .local v6, "offset":I
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 658
    .local v2, "baseline":I
    if-eq v2, v9, :cond_23

    .line 659
    sub-int/2addr v6, v2

    .line 661
    :cond_23
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v8

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v9

    sub-int v3, v8, v9

    .line 662
    .local v3, "height":I
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 663
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v8

    add-int/2addr v8, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 667
    .end local v1    # "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "baseline":I
    .end local v3    # "height":I
    .end local v6    # "offset":I
    :cond_38
    iget-object v8, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-nez v8, :cond_3f

    .line 668
    iput-object p1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 675
    :cond_3e
    :goto_3e
    return-void

    .line 670
    :cond_3f
    iget-object v8, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 671
    .local v5, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v8

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v5}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v9

    if-lt v8, v9, :cond_65

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v8

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v5}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v9

    if-ne v8, v9, :cond_3e

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v8

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v5}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v9

    if-ge v8, v9, :cond_3e

    .line 672
    :cond_65
    iput-object p1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    goto :goto_3e
.end method

.method private applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V
    .registers 11
    .param p1, "childParams"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myWidth"    # I
    .param p3, "rules"    # [I

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v1, -0x80000000

    .line 906
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 907
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 909
    invoke-direct {p0, p3, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 910
    .local v0, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_73

    .line 911
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 919
    :cond_1f
    :goto_1f
    invoke-direct {p0, p3, v4}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 920
    if-eqz v0, :cond_88

    .line 921
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 927
    :cond_32
    :goto_32
    invoke-direct {p0, p3, v5}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 928
    if-eqz v0, :cond_99

    .line 929
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 934
    :cond_42
    :goto_42
    invoke-direct {p0, p3, v6}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 935
    if-eqz v0, :cond_aa

    .line 936
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 943
    :cond_52
    :goto_52
    const/16 v1, 0x9

    aget v1, p3, v1

    if-eqz v1, :cond_60

    .line 944
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 947
    :cond_60
    const/16 v1, 0xb

    aget v1, p3, v1

    if-eqz v1, :cond_72

    .line 948
    if-ltz p2, :cond_72

    .line 949
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 952
    :cond_72
    return-void

    .line 913
    :cond_73
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_1f

    aget v1, p3, v2

    if-eqz v1, :cond_1f

    .line 914
    if-ltz p2, :cond_1f

    .line 915
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1f

    .line 923
    :cond_88
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_32

    aget v1, p3, v4

    if-eqz v1, :cond_32

    .line 924
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_32

    .line 930
    :cond_99
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_42

    aget v1, p3, v5

    if-eqz v1, :cond_42

    .line 931
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_42

    .line 937
    :cond_aa
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_52

    aget v1, p3, v6

    if-eqz v1, :cond_52

    .line 938
    if-ltz p2, :cond_52

    .line 939
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_52
.end method

.method private applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 11
    .param p1, "childParams"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myHeight"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/high16 v2, -0x80000000

    .line 955
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 958
    .local v1, "rules":[I
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 959
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 961
    invoke-direct {p0, v1, v3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 962
    .local v0, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_80

    .line 963
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 971
    :cond_24
    :goto_24
    invoke-direct {p0, v1, v5}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 972
    if-eqz v0, :cond_95

    .line 973
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 979
    :cond_37
    :goto_37
    invoke-direct {p0, v1, v6}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 980
    if-eqz v0, :cond_a6

    .line 981
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 986
    :cond_47
    :goto_47
    invoke-direct {p0, v1, v7}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 987
    if-eqz v0, :cond_b7

    .line 988
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 995
    :cond_57
    :goto_57
    const/16 v2, 0xa

    aget v2, v1, v2

    if-eqz v2, :cond_65

    .line 996
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 999
    :cond_65
    const/16 v2, 0xc

    aget v2, v1, v2

    if-eqz v2, :cond_77

    .line 1000
    if-ltz p2, :cond_77

    .line 1001
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1005
    :cond_77
    const/4 v2, 0x4

    aget v2, v1, v2

    if-eqz v2, :cond_7f

    .line 1006
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mHasBaselineAlignedChild:Z

    .line 1008
    :cond_7f
    return-void

    .line 965
    :cond_80
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_24

    aget v2, v1, v3

    if-eqz v2, :cond_24

    .line 966
    if-ltz p2, :cond_24

    .line 967
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_24

    .line 975
    :cond_95
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_37

    aget v2, v1, v5

    if-eqz v2, :cond_37

    .line 976
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_37

    .line 982
    :cond_a6
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_47

    aget v2, v1, v6

    if-eqz v2, :cond_47

    .line 983
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_47

    .line 989
    :cond_b7
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_57

    aget v2, v1, v7

    if-eqz v2, :cond_57

    .line 990
    if-ltz p2, :cond_57

    .line 991
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_57
.end method

.method private static centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 6
    .param p0, "child"    # Landroid/view/View;
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myWidth"    # I

    .prologue
    .line 1051
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1052
    .local v0, "childWidth":I
    sub-int v2, p2, v0

    div-int/lit8 v1, v2, 0x2

    .line 1054
    .local v1, "left":I
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1055
    add-int v2, v1, v0

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1056
    return-void
.end method

.method private static centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 6
    .param p0, "child"    # Landroid/view/View;
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myHeight"    # I

    .prologue
    .line 1059
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1060
    .local v0, "childHeight":I
    sub-int v2, p2, v0

    div-int/lit8 v1, v2, 0x2

    .line 1062
    .local v1, "top":I
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1063
    add-int v2, v1, v0

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1064
    return-void
.end method

.method private getChildMeasureSpec(IIIIIIII)I
    .registers 16
    .param p1, "childStart"    # I
    .param p2, "childEnd"    # I
    .param p3, "childSize"    # I
    .param p4, "startMargin"    # I
    .param p5, "endMargin"    # I
    .param p6, "startPadding"    # I
    .param p7, "endPadding"    # I
    .param p8, "mySize"    # I

    .prologue
    const/high16 v6, -0x80000000

    .line 750
    const/4 v0, 0x0

    .line 751
    .local v0, "childSpecMode":I
    const/4 v1, 0x0

    .line 756
    .local v1, "childSpecSize":I
    if-gez p8, :cond_25

    iget-boolean v5, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-nez v5, :cond_25

    .line 757
    if-eq p1, v6, :cond_1c

    if-eq p2, v6, :cond_1c

    .line 759
    const/4 v5, 0x0

    sub-int v6, p2, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 760
    const/high16 v0, 0x40000000    # 2.0f

    .line 771
    :goto_17
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 828
    :goto_1b
    return v5

    .line 761
    :cond_1c
    if-ltz p3, :cond_22

    .line 763
    move v1, p3

    .line 764
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_17

    .line 767
    :cond_22
    const/4 v1, 0x0

    .line 768
    const/4 v0, 0x0

    goto :goto_17

    .line 775
    :cond_25
    move v4, p1

    .line 776
    .local v4, "tempStart":I
    move v3, p2

    .line 780
    .local v3, "tempEnd":I
    if-ne v4, v6, :cond_2b

    .line 781
    add-int v4, p6, p4

    .line 783
    :cond_2b
    if-ne v3, v6, :cond_31

    .line 784
    sub-int v5, p8, p7

    sub-int v3, v5, p5

    .line 788
    :cond_31
    sub-int v2, v3, v4

    .line 790
    .local v2, "maxAvailable":I
    if-eq p1, v6, :cond_3f

    if-eq p2, v6, :cond_3f

    .line 792
    const/high16 v0, 0x40000000    # 2.0f

    .line 793
    move v1, v2

    .line 828
    :cond_3a
    :goto_3a
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_1b

    .line 795
    :cond_3f
    if-ltz p3, :cond_4c

    .line 797
    const/high16 v0, 0x40000000    # 2.0f

    .line 799
    if-ltz v2, :cond_4a

    .line 801
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3a

    .line 804
    :cond_4a
    move v1, p3

    goto :goto_3a

    .line 806
    :cond_4c
    const/4 v5, -0x1

    if-ne p3, v5, :cond_53

    .line 809
    const/high16 v0, 0x40000000    # 2.0f

    .line 810
    move v1, v2

    goto :goto_3a

    .line 811
    :cond_53
    const/4 v5, -0x2

    if-ne p3, v5, :cond_3a

    .line 815
    if-ltz v2, :cond_5c

    .line 817
    const/high16 v0, -0x80000000

    .line 818
    move v1, v2

    goto :goto_3a

    .line 822
    :cond_5c
    const/4 v0, 0x0

    .line 823
    const/4 v1, 0x0

    goto :goto_3a
.end method

.method private getRelatedView([II)Landroid/view/View;
    .registers 9
    .param p1, "rules"    # [I
    .param p2, "relation"    # I

    .prologue
    const/4 v4, 0x0

    .line 1011
    aget v0, p1, p2

    .line 1012
    .local v0, "id":I
    if-eqz v0, :cond_42

    .line 1013
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    # getter for: Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/widget/RelativeLayout$DependencyGraph;->access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1014
    .local v1, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v1, :cond_15

    move-object v2, v4

    .line 1028
    .end local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_14
    :goto_14
    return-object v2

    .line 1015
    .restart local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_15
    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 1018
    .local v2, "v":Landroid/view/View;
    :goto_17
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_14

    .line 1019
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object p1

    .line 1020
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    # getter for: Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/widget/RelativeLayout$DependencyGraph;->access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v3

    aget v5, p1, p2

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1021
    .restart local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v1, :cond_3f

    move-object v2, v4

    goto :goto_14

    .line 1022
    :cond_3f
    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    goto :goto_17

    .end local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v2    # "v":Landroid/view/View;
    :cond_42
    move-object v2, v4

    .line 1028
    goto :goto_14
.end method

.method private getRelatedViewBaseline([II)I
    .registers 5
    .param p1, "rules"    # [I
    .param p2, "relation"    # I

    .prologue
    .line 1043
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v0

    .line 1044
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 1045
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 1047
    :goto_a
    return v1

    :cond_b
    const/4 v1, -0x1

    goto :goto_a
.end method

.method private getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 6
    .param p1, "rules"    # [I
    .param p2, "relation"    # I

    .prologue
    .line 1032
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v1

    .line 1033
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_15

    .line 1034
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1035
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_15

    .line 1036
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1039
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_14
    return-object v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 256
    sget-object v1, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 258
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 259
    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 260
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 261
    return-void
.end method

.method private measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .registers 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "myHeight"    # I

    .prologue
    .line 688
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v10

    .line 693
    .local v10, "childWidthMeasureSpec":I
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    move-object v0, p0

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v9

    .line 698
    .local v9, "childHeightMeasureSpec":I
    invoke-virtual {p1, v10, v9}, Landroid/view/View;->measure(II)V

    .line 699
    return-void
.end method

.method private measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .registers 17
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "myHeight"    # I

    .prologue
    .line 702
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v10

    .line 707
    .local v10, "childWidthMeasureSpec":I
    move/from16 v11, p4

    .line 708
    .local v11, "maxHeight":I
    iget-boolean v0, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    if-eqz v0, :cond_30

    .line 709
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    sub-int v1, p4, v1

    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 713
    :cond_30
    if-gez p4, :cond_4d

    iget-boolean v0, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-nez v0, :cond_4d

    .line 714
    iget v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-ltz v0, :cond_46

    .line 715
    iget v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 728
    .local v9, "childHeightMeasureSpec":I
    :goto_42
    invoke-virtual {p1, v10, v9}, Landroid/view/View;->measure(II)V

    .line 729
    return-void

    .line 721
    .end local v9    # "childHeightMeasureSpec":I
    :cond_46
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .restart local v9    # "childHeightMeasureSpec":I
    goto :goto_42

    .line 723
    .end local v9    # "childHeightMeasureSpec":I
    :cond_4d
    iget v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_59

    .line 724
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .restart local v9    # "childHeightMeasureSpec":I
    goto :goto_42

    .line 726
    .end local v9    # "childHeightMeasureSpec":I
    :cond_59
    const/high16 v0, -0x80000000

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .restart local v9    # "childHeightMeasureSpec":I
    goto :goto_42
.end method

.method private positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "wrapContent"    # Z

    .prologue
    const/4 v2, 0x1

    const/high16 v4, -0x80000000

    .line 834
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v0

    .line 835
    .local v0, "layoutDirection":I
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v1

    .line 837
    .local v1, "rules":[I
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_2a

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-eq v3, v4, :cond_2a

    .line 839
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 865
    :cond_23
    :goto_23
    const/16 v3, 0x15

    aget v3, v1, v3

    if-eqz v3, :cond_a9

    :goto_29
    return v2

    .line 840
    :cond_2a
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-eq v3, v4, :cond_43

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_43

    .line 842
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_23

    .line 843
    :cond_43
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_23

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_23

    .line 845
    const/16 v3, 0xd

    aget v3, v1, v3

    if-nez v3, :cond_5b

    const/16 v3, 0xe

    aget v3, v1, v3

    if-eqz v3, :cond_76

    .line 846
    :cond_5b
    if-nez p4, :cond_61

    .line 847
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_29

    .line 849
    :cond_61
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 850
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_29

    .line 856
    :cond_76
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 857
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v3, p3, v3

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 858
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_23

    .line 860
    :cond_93
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 861
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto/16 :goto_23

    .line 865
    :cond_a9
    const/4 v2, 0x0

    goto/16 :goto_29
.end method

.method private positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myHeight"    # I
    .param p4, "wrapContent"    # Z

    .prologue
    const/4 v1, 0x1

    const/high16 v3, -0x80000000

    .line 871
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 873
    .local v0, "rules":[I
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v3, :cond_26

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-eq v2, v3, :cond_26

    .line 875
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 894
    :cond_1f
    :goto_1f
    const/16 v2, 0xc

    aget v2, v0, v2

    if-eqz v2, :cond_87

    :goto_25
    return v1

    .line 876
    :cond_26
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-eq v2, v3, :cond_3f

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v3, :cond_3f

    .line 878
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1f

    .line 879
    :cond_3f
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v3, :cond_1f

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v3, :cond_1f

    .line 881
    const/16 v2, 0xd

    aget v2, v0, v2

    if-nez v2, :cond_57

    const/16 v2, 0xf

    aget v2, v0, v2

    if-eqz v2, :cond_72

    .line 882
    :cond_57
    if-nez p4, :cond_5d

    .line 883
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_25

    .line 885
    :cond_5d
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 886
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_25

    .line 890
    :cond_72
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 891
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1f

    .line 894
    :cond_87
    const/4 v1, 0x0

    goto :goto_25
.end method

.method private queryCompatibilityModes(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 265
    .local v0, "version":I
    const/16 v1, 0x11

    if-gt v0, v1, :cond_16

    move v1, v2

    :goto_d
    iput-boolean v1, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 266
    const/16 v1, 0x12

    if-lt v0, v1, :cond_18

    :goto_13
    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 267
    return-void

    :cond_16
    move v1, v3

    .line 265
    goto :goto_d

    :cond_18
    move v2, v3

    .line 266
    goto :goto_13
.end method

.method private sortChildren()V
    .registers 6

    .prologue
    .line 366
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 367
    .local v0, "count":I
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    if-eqz v3, :cond_d

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    array-length v3, v3

    if-eq v3, v0, :cond_11

    .line 368
    :cond_d
    new-array v3, v0, [Landroid/view/View;

    iput-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 371
    :cond_11
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    array-length v3, v3

    if-eq v3, v0, :cond_1e

    .line 372
    :cond_1a
    new-array v3, v0, [Landroid/view/View;

    iput-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 375
    :cond_1e
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 376
    .local v1, "graph":Landroid/widget/RelativeLayout$DependencyGraph;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$DependencyGraph;->clear()V

    .line 378
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    if-ge v2, v0, :cond_30

    .line 379
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->add(Landroid/view/View;)V

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 382
    :cond_30
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    sget-object v4, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 383
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    sget-object v4, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 384
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1100
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1110
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    if-nez v4, :cond_11

    .line 1111
    new-instance v4, Ljava/util/TreeSet;

    new-instance v5, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$1;)V

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 1115
    :cond_11
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_16
    if-ge v1, v0, :cond_24

    .line 1116
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1115
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1119
    :cond_24
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1120
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2a

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1122
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    .line 1123
    const/4 v4, 0x1

    .line 1128
    .end local v3    # "view":Landroid/view/View;
    :goto_48
    return v4

    .line 1127
    :cond_49
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    .line 1128
    const/4 v4, 0x0

    goto :goto_48
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 1094
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1105
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1084
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getBaseline()I
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_a
.end method

.method public getGravity()I
    .registers 2

    .prologue
    .line 301
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1133
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1134
    const-class v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1135
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1139
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1140
    const-class v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1141
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1070
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 1072
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_2f

    .line 1073
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1074
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2c

    .line 1075
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1077
    .local v3, "st":Landroid/widget/RelativeLayout$LayoutParams;
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v5

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1072
    .end local v3    # "st":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1080
    .end local v0    # "child":Landroid/view/View;
    :cond_2f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 46
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 388
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    if-eqz v4, :cond_e

    .line 389
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 390
    invoke-direct/range {p0 .. p0}, Landroid/widget/RelativeLayout;->sortChildren()V

    .line 393
    :cond_e
    const/16 v27, -0x1

    .line 394
    .local v27, "myWidth":I
    const/16 v26, -0x1

    .line 396
    .local v26, "myHeight":I
    const/16 v39, 0x0

    .line 397
    .local v39, "width":I
    const/16 v16, 0x0

    .line 399
    .local v16, "height":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v40

    .line 400
    .local v40, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 401
    .local v17, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v41

    .line 402
    .local v41, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 405
    .local v18, "heightSize":I
    if-eqz v40, :cond_2a

    .line 406
    move/from16 v27, v41

    .line 409
    :cond_2a
    if-eqz v17, :cond_2e

    .line 410
    move/from16 v26, v18

    .line 413
    :cond_2e
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v40

    if-ne v0, v4, :cond_36

    .line 414
    move/from16 v39, v27

    .line 417
    :cond_36
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-ne v0, v4, :cond_3e

    .line 418
    move/from16 v16, v26

    .line 421
    :cond_3e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/RelativeLayout;->mHasBaselineAlignedChild:Z

    .line 423
    const/16 v22, 0x0

    .line 424
    .local v22, "ignore":Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    const v5, 0x800007

    and-int v15, v4, v5

    .line 425
    .local v15, "gravity":I
    const v4, 0x800003

    if-eq v15, v4, :cond_f7

    if-eqz v15, :cond_f7

    const/16 v19, 0x1

    .line 426
    .local v19, "horizontalGravity":Z
    :goto_57
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v15, v4, 0x70

    .line 427
    const/16 v4, 0x30

    if-eq v15, v4, :cond_fb

    if-eqz v15, :cond_fb

    const/16 v36, 0x1

    .line 429
    .local v36, "verticalGravity":Z
    :goto_65
    const v25, 0x7fffffff

    .line 430
    .local v25, "left":I
    const v35, 0x7fffffff

    .line 431
    .local v35, "top":I
    const/high16 v32, -0x80000000

    .line 432
    .local v32, "right":I
    const/high16 v10, -0x80000000

    .line 434
    .local v10, "bottom":I
    const/16 v28, 0x0

    .line 435
    .local v28, "offsetHorizontalAxis":Z
    const/16 v29, 0x0

    .line 437
    .local v29, "offsetVerticalAxis":Z
    if-nez v19, :cond_77

    if-eqz v36, :cond_88

    :cond_77
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_88

    .line 438
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 441
    :cond_88
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v40

    if-eq v0, v4, :cond_ff

    const/16 v24, 0x1

    .line 442
    .local v24, "isWrapContentWidth":Z
    :goto_90
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-eq v0, v4, :cond_102

    const/16 v23, 0x1

    .line 449
    .local v23, "isWrapContentHeight":Z
    :goto_98
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v9

    .line 450
    .local v9, "layoutDirection":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_a9

    const/4 v4, -0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_a9

    .line 451
    const/high16 v27, 0x10000

    .line 454
    :cond_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    move-object/from16 v38, v0

    .line 455
    .local v38, "views":[Landroid/view/View;
    move-object/from16 v0, v38

    array-length v14, v0

    .line 457
    .local v14, "count":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_b4
    move/from16 v0, v21

    if-ge v0, v14, :cond_105

    .line 458
    aget-object v11, v38, v21

    .line 459
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_f4

    .line 460
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/widget/RelativeLayout$LayoutParams;

    .line 461
    .local v31, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v33

    .line 463
    .local v33, "rules":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v27

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V

    .line 464
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v27

    move/from16 v3, v26

    invoke-direct {v0, v11, v1, v2, v3}, Landroid/widget/RelativeLayout;->measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 466
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v27

    move/from16 v3, v24

    invoke-direct {v0, v11, v1, v2, v3}, Landroid/widget/RelativeLayout;->positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 467
    const/16 v28, 0x1

    .line 457
    .end local v31    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v33    # "rules":[I
    :cond_f4
    add-int/lit8 v21, v21, 0x1

    goto :goto_b4

    .line 425
    .end local v9    # "layoutDirection":I
    .end local v10    # "bottom":I
    .end local v11    # "child":Landroid/view/View;
    .end local v14    # "count":I
    .end local v19    # "horizontalGravity":Z
    .end local v21    # "i":I
    .end local v23    # "isWrapContentHeight":Z
    .end local v24    # "isWrapContentWidth":Z
    .end local v25    # "left":I
    .end local v28    # "offsetHorizontalAxis":Z
    .end local v29    # "offsetVerticalAxis":Z
    .end local v32    # "right":I
    .end local v35    # "top":I
    .end local v36    # "verticalGravity":Z
    .end local v38    # "views":[Landroid/view/View;
    :cond_f7
    const/16 v19, 0x0

    goto/16 :goto_57

    .line 427
    .restart local v19    # "horizontalGravity":Z
    :cond_fb
    const/16 v36, 0x0

    goto/16 :goto_65

    .line 441
    .restart local v10    # "bottom":I
    .restart local v25    # "left":I
    .restart local v28    # "offsetHorizontalAxis":Z
    .restart local v29    # "offsetVerticalAxis":Z
    .restart local v32    # "right":I
    .restart local v35    # "top":I
    .restart local v36    # "verticalGravity":Z
    :cond_ff
    const/16 v24, 0x0

    goto :goto_90

    .line 442
    .restart local v24    # "isWrapContentWidth":Z
    :cond_102
    const/16 v23, 0x0

    goto :goto_98

    .line 472
    .restart local v9    # "layoutDirection":I
    .restart local v14    # "count":I
    .restart local v21    # "i":I
    .restart local v23    # "isWrapContentHeight":Z
    .restart local v38    # "views":[Landroid/view/View;
    :cond_105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    move-object/from16 v38, v0

    .line 473
    move-object/from16 v0, v38

    array-length v14, v0

    .line 474
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v34, v0

    .line 476
    .local v34, "targetSdkVersion":I
    const/16 v21, 0x0

    :goto_11c
    move/from16 v0, v21

    if-ge v0, v14, :cond_20f

    .line 477
    aget-object v11, v38, v21

    .line 478
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1c6

    .line 479
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/widget/RelativeLayout$LayoutParams;

    .line 481
    .restart local v31    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout;->applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 482
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v27

    move/from16 v3, v26

    invoke-direct {v0, v11, v1, v2, v3}, Landroid/widget/RelativeLayout;->measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 483
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v26

    move/from16 v3, v23

    invoke-direct {v0, v11, v1, v2, v3}, Landroid/widget/RelativeLayout;->positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v4

    if-eqz v4, :cond_154

    .line 484
    const/16 v29, 0x1

    .line 487
    :cond_154
    if-eqz v24, :cond_16e

    .line 488
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_1dc

    .line 489
    const/16 v4, 0x13

    move/from16 v0, v34

    if-ge v0, v4, :cond_1ca

    .line 490
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static/range {v31 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    sub-int v4, v27, v4

    move/from16 v0, v39

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v39

    .line 503
    :cond_16e
    :goto_16e
    if-eqz v23, :cond_180

    .line 504
    const/16 v4, 0x13

    move/from16 v0, v34

    if-ge v0, v4, :cond_1fe

    .line 505
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static/range {v31 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move/from16 v0, v16

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 511
    :cond_180
    :goto_180
    move-object/from16 v0, v22

    if-ne v11, v0, :cond_186

    if-eqz v36, :cond_1a4

    .line 512
    :cond_186
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static/range {v31 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v31

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v25

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 513
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static/range {v31 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v31

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v35

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v35

    .line 516
    :cond_1a4
    move-object/from16 v0, v22

    if-ne v11, v0, :cond_1aa

    if-eqz v19, :cond_1c6

    .line 517
    :cond_1aa
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static/range {v31 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v31

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v32

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 518
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static/range {v31 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v31

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 476
    .end local v31    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1c6
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_11c

    .line 492
    .restart local v31    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1ca
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static/range {v31 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    sub-int v4, v27, v4

    move-object/from16 v0, v31

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v39

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v39

    goto :goto_16e

    .line 495
    :cond_1dc
    const/16 v4, 0x13

    move/from16 v0, v34

    if-ge v0, v4, :cond_1ed

    .line 496
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static/range {v31 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move/from16 v0, v39

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v39

    goto :goto_16e

    .line 498
    :cond_1ed
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static/range {v31 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v31

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v39

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v39

    goto/16 :goto_16e

    .line 507
    :cond_1fe
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static/range {v31 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v31

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v16

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    goto/16 :goto_180

    .line 523
    .end local v11    # "child":Landroid/view/View;
    .end local v31    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_20f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/RelativeLayout;->mHasBaselineAlignedChild:Z

    if-eqz v4, :cond_281

    .line 524
    const/16 v21, 0x0

    :goto_217
    move/from16 v0, v21

    if-ge v0, v14, :cond_281

    .line 525
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 526
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_27e

    .line 527
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/widget/RelativeLayout$LayoutParams;

    .line 528
    .restart local v31    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v11, v1}, Landroid/widget/RelativeLayout;->alignBaseline(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 530
    move-object/from16 v0, v22

    if-ne v11, v0, :cond_23e

    if-eqz v36, :cond_25c

    .line 531
    :cond_23e
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static/range {v31 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v31

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v25

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 532
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static/range {v31 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v31

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v35

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v35

    .line 535
    :cond_25c
    move-object/from16 v0, v22

    if-ne v11, v0, :cond_262

    if-eqz v19, :cond_27e

    .line 536
    :cond_262
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static/range {v31 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v31

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v32

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 537
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static/range {v31 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v31

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 524
    .end local v31    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_27e
    add-int/lit8 v21, v21, 0x1

    goto :goto_217

    .line 543
    .end local v11    # "child":Landroid/view/View;
    :cond_281
    if-eqz v24, :cond_310

    .line 546
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    add-int v39, v39, v4

    .line 548
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v4, :cond_2a3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_2a3

    .line 549
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, v39

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v39

    .line 552
    :cond_2a3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumWidth()I

    move-result v4

    move/from16 v0, v39

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v39

    .line 553
    move/from16 v0, v39

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v39

    .line 555
    if-eqz v28, :cond_310

    .line 556
    const/16 v21, 0x0

    :goto_2b9
    move/from16 v0, v21

    if-ge v0, v14, :cond_310

    .line 557
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 558
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2ec

    .line 559
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/widget/RelativeLayout$LayoutParams;

    .line 560
    .restart local v31    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v33

    .line 561
    .restart local v33    # "rules":[I
    const/16 v4, 0xd

    aget v4, v33, v4

    if-nez v4, :cond_2e5

    const/16 v4, 0xe

    aget v4, v33, v4

    if-eqz v4, :cond_2ef

    .line 562
    :cond_2e5
    move-object/from16 v0, v31

    move/from16 v1, v39

    invoke-static {v11, v0, v1}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 556
    .end local v31    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v33    # "rules":[I
    :cond_2ec
    :goto_2ec
    add-int/lit8 v21, v21, 0x1

    goto :goto_2b9

    .line 563
    .restart local v31    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v33    # "rules":[I
    :cond_2ef
    const/16 v4, 0xb

    aget v4, v33, v4

    if-eqz v4, :cond_2ec

    .line 564
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 565
    .local v13, "childWidth":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v4, v39, v4

    sub-int/2addr v4, v13

    move-object/from16 v0, v31

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 566
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static/range {v31 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v4, v13

    move-object/from16 v0, v31

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2ec

    .line 573
    .end local v11    # "child":Landroid/view/View;
    .end local v13    # "childWidth":I
    .end local v31    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v33    # "rules":[I
    :cond_310
    if-eqz v23, :cond_39f

    .line 576
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    add-int v16, v16, v4

    .line 578
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v4, :cond_332

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_332

    .line 579
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v0, v16

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 582
    :cond_332
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumHeight()I

    move-result v4

    move/from16 v0, v16

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 583
    move/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v16

    .line 585
    if-eqz v29, :cond_39f

    .line 586
    const/16 v21, 0x0

    :goto_348
    move/from16 v0, v21

    if-ge v0, v14, :cond_39f

    .line 587
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 588
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_37b

    .line 589
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/widget/RelativeLayout$LayoutParams;

    .line 590
    .restart local v31    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v33

    .line 591
    .restart local v33    # "rules":[I
    const/16 v4, 0xd

    aget v4, v33, v4

    if-nez v4, :cond_374

    const/16 v4, 0xf

    aget v4, v33, v4

    if-eqz v4, :cond_37e

    .line 592
    :cond_374
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-static {v11, v0, v1}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 586
    .end local v31    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v33    # "rules":[I
    :cond_37b
    :goto_37b
    add-int/lit8 v21, v21, 0x1

    goto :goto_348

    .line 593
    .restart local v31    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v33    # "rules":[I
    :cond_37e
    const/16 v4, 0xc

    aget v4, v33, v4

    if-eqz v4, :cond_37b

    .line 594
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 595
    .local v12, "childHeight":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v4, v16, v4

    sub-int/2addr v4, v12

    move-object/from16 v0, v31

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 596
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static/range {v31 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v4, v12

    move-object/from16 v0, v31

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_37b

    .line 603
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "childHeight":I
    .end local v31    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v33    # "rules":[I
    :cond_39f
    if-nez v19, :cond_3a3

    if-eqz v36, :cond_420

    .line 604
    :cond_3a3
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 605
    .local v7, "selfBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v6, v39, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    move/from16 v42, v0

    sub-int v42, v16, v42

    move/from16 v0, v42

    invoke-virtual {v7, v4, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 608
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 609
    .local v8, "contentBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    sub-int v5, v32, v25

    sub-int v6, v10, v35

    invoke-static/range {v4 .. v9}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 612
    iget v4, v8, Landroid/graphics/Rect;->left:I

    sub-int v20, v4, v25

    .line 613
    .local v20, "horizontalOffset":I
    iget v4, v8, Landroid/graphics/Rect;->top:I

    sub-int v37, v4, v35

    .line 614
    .local v37, "verticalOffset":I
    if-nez v20, :cond_3dd

    if-eqz v37, :cond_420

    .line 615
    :cond_3dd
    const/16 v21, 0x0

    :goto_3df
    move/from16 v0, v21

    if-ge v0, v14, :cond_420

    .line 616
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 617
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_41d

    move-object/from16 v0, v22

    if-eq v11, v0, :cond_41d

    .line 618
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/widget/RelativeLayout$LayoutParams;

    .line 619
    .restart local v31    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v19, :cond_40d

    .line 620
    move-object/from16 v0, v31

    move/from16 v1, v20

    # += operator for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$112(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 621
    move-object/from16 v0, v31

    move/from16 v1, v20

    # += operator for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$212(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 623
    :cond_40d
    if-eqz v36, :cond_41d

    .line 624
    move-object/from16 v0, v31

    move/from16 v1, v37

    # += operator for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$412(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 625
    move-object/from16 v0, v31

    move/from16 v1, v37

    # += operator for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$312(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 615
    .end local v31    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_41d
    add-int/lit8 v21, v21, 0x1

    goto :goto_3df

    .line 632
    .end local v7    # "selfBounds":Landroid/graphics/Rect;
    .end local v8    # "contentBounds":Landroid/graphics/Rect;
    .end local v11    # "child":Landroid/view/View;
    .end local v20    # "horizontalOffset":I
    .end local v37    # "verticalOffset":I
    :cond_420
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_455

    .line 633
    sub-int v30, v27, v39

    .line 634
    .local v30, "offsetWidth":I
    const/16 v21, 0x0

    :goto_42a
    move/from16 v0, v21

    if-ge v0, v14, :cond_455

    .line 635
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 636
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_452

    .line 637
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/widget/RelativeLayout$LayoutParams;

    .line 638
    .restart local v31    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v31

    move/from16 v1, v30

    # -= operator for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$120(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 639
    move-object/from16 v0, v31

    move/from16 v1, v30

    # -= operator for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$220(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 634
    .end local v31    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_452
    add-int/lit8 v21, v21, 0x1

    goto :goto_42a

    .line 645
    .end local v11    # "child":Landroid/view/View;
    .end local v30    # "offsetWidth":I
    :cond_455
    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    .line 646
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 361
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 363
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 322
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    if-eq v0, p1, :cond_19

    .line 323
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    .line 324
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 327
    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    .line 328
    or-int/lit8 p1, p1, 0x30

    .line 331
    :cond_14
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 332
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 334
    :cond_19
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 5
    .param p1, "horizontalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const v2, 0x800007

    .line 338
    and-int v0, p1, v2

    .line 339
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_16

    .line 340
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 341
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 343
    :cond_16
    return-void
.end method

.method public setIgnoreGravity(I)V
    .registers 2
    .param p1, "viewId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 287
    iput p1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 288
    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 4
    .param p1, "verticalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 347
    and-int/lit8 v0, p1, 0x70

    .line 348
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_12

    .line 349
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 350
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 352
    :cond_12
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method
