.class public Lcom/android/internal/app/AlertController$ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonBarLayout"
.end annotation


# instance fields
.field private prevMaxWindowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1089
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1072
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/internal/app/AlertController$ButtonBarLayout;->prevMaxWindowWidth:I

    .line 1090
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1085
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1072
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/internal/app/AlertController$ButtonBarLayout;->prevMaxWindowWidth:I

    .line 1086
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 1081
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1072
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/internal/app/AlertController$ButtonBarLayout;->prevMaxWindowWidth:I

    .line 1082
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1076
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1072
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/internal/app/AlertController$ButtonBarLayout;->prevMaxWindowWidth:I

    .line 1077
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1094
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1096
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v5, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1098
    .local v5, "maxWindowWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    .line 1099
    .local v9, "root":Landroid/view/View;
    move-object v7, p0

    .line 1100
    .local v7, "parent":Landroid/view/ViewParent;
    const/4 v6, 0x0

    .line 1101
    .local v6, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v8, 0x0

    .line 1102
    .local v8, "removeWidth":I
    :cond_14
    :goto_14
    if-eq v7, v9, :cond_43

    .line 1103
    instance-of v11, v7, Landroid/view/View;

    if-eqz v11, :cond_14

    move-object v11, v7

    .line 1104
    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    add-int v12, v8, v11

    move-object v11, v7

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    add-int v8, v12, v11

    move-object v11, v7

    .line 1105
    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1106
    .restart local v6    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v6, :cond_3e

    iget v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v11, v8

    iget v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v8, v11, v12

    .line 1107
    :cond_3e
    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    goto :goto_14

    .line 1110
    :cond_43
    sub-int v11, v5, v8

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    sub-int v10, v11, v12

    .line 1112
    .local v10, "width":I
    const/4 v1, 0x0

    .local v1, "beforeChildrenWidth":I
    const/4 v0, 0x0

    .line 1113
    .local v0, "afterChildrenWidth":I
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getChildCount()I

    move-result v3

    .line 1114
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_57
    if-ge v4, v3, :cond_89

    .line 1115
    invoke-virtual {p0, v4}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1116
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_86

    instance-of v11, v2, Landroid/widget/Space;

    if-nez v11, :cond_86

    .line 1117
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v1, v11

    .line 1118
    const/high16 v11, -0x80000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v2, v11, v12}, Landroid/view/View;->measure(II)V

    .line 1120
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v0, v11

    .line 1114
    :cond_86
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 1123
    .end local v2    # "child":Landroid/view/View;
    :cond_89
    if-ne v1, v0, :cond_99

    iget v11, p0, Lcom/android/internal/app/AlertController$ButtonBarLayout;->prevMaxWindowWidth:I

    if-ne v11, v5, :cond_99

    .line 1128
    :cond_8f
    :goto_8f
    iget v11, p0, Lcom/android/internal/app/AlertController$ButtonBarLayout;->prevMaxWindowWidth:I

    if-eq v11, v5, :cond_95

    iput v5, p0, Lcom/android/internal/app/AlertController$ButtonBarLayout;->prevMaxWindowWidth:I

    .line 1129
    :cond_95
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1130
    return-void

    .line 1124
    :cond_99
    if-lt v1, v0, :cond_9d

    if-ge v10, v0, :cond_a9

    .line 1125
    :cond_9d
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getOrientation()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_8f

    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->setOrientation(I)V

    goto :goto_8f

    .line 1126
    :cond_a9
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getOrientation()I

    move-result v11

    if-eqz v11, :cond_8f

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->setOrientation(I)V

    goto :goto_8f
.end method
