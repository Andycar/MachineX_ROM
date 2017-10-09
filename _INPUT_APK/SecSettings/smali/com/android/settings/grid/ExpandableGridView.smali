.class public Lcom/android/settings/grid/ExpandableGridView;
.super Landroid/widget/LinearLayout;
.source "ExpandableGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-object p1, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput-object p1, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public collapse(Landroid/view/View;I)V
    .locals 9
    .param p1, "category"    # Landroid/view/View;
    .param p2, "childePos"    # I

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 80
    const v1, 0x7f1001aa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 81
    .local v8, "title":Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getExpandableListDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->getExpandStateDesc(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 82
    const v1, 0x7f1001ab

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 83
    .local v7, "icon":Landroid/widget/ImageView;
    const v1, 0x7f0200cb

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x43340000    # 180.0f

    const/4 v2, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 85
    .local v0, "anim":Landroid/view/animation/RotateAnimation;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 86
    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 87
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    .line 88
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 89
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 90
    invoke-virtual {p0, p2}, Lcom/android/settings/grid/ExpandableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    return-void
.end method

.method public collapseAll()V
    .locals 6

    .prologue
    .line 106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/grid/ExpandableGridView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/settings/grid/ExpandableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;

    .line 108
    .local v0, "holder":Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;
    if-eqz v0, :cond_0

    .line 109
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    .line 110
    iget-object v2, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v4, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-boolean v3, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    invoke-static {v2, v4, v5, v3}, Lcom/android/settings/Utils;->saveExpandstate(Landroid/content/Context;JZ)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/android/settings/grid/ExpandableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/android/settings/grid/ExpandableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/grid/ExpandableGridView;->collapse(Landroid/view/View;I)V

    .line 106
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 115
    .end local v0    # "holder":Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;
    :cond_1
    return-void
.end method

.method public expand(Landroid/view/View;I)V
    .locals 9
    .param p1, "category"    # Landroid/view/View;
    .param p2, "childePos"    # I

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 65
    const v1, 0x7f1001aa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 66
    .local v8, "title":Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getExpandableListDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getExpandStateDesc(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 67
    const v1, 0x7f1001ab

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 68
    .local v7, "icon":Landroid/widget/ImageView;
    const v1, 0x7f0200ca

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 70
    .local v0, "anim":Landroid/view/animation/RotateAnimation;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 71
    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 72
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    .line 73
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 74
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 76
    invoke-virtual {p0, p2}, Lcom/android/settings/grid/ExpandableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    return-void
.end method

.method public expandAll()V
    .locals 6

    .prologue
    .line 94
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/grid/ExpandableGridView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 95
    invoke-virtual {p0, v1}, Lcom/android/settings/grid/ExpandableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;

    .line 96
    .local v0, "holder":Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;
    if-eqz v0, :cond_0

    .line 97
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    .line 98
    iget-object v2, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v4, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-boolean v3, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    invoke-static {v2, v4, v5, v3}, Lcom/android/settings/Utils;->saveExpandstate(Landroid/content/Context;JZ)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/android/settings/grid/ExpandableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0, v1}, Lcom/android/settings/grid/ExpandableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/grid/ExpandableGridView;->expand(Landroid/view/View;I)V

    .line 94
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 103
    .end local v0    # "holder":Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/settings/grid/ExpandableGridView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 48
    .local v1, "pos":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;

    .line 49
    .local v0, "holder":Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;
    iget-boolean v2, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    .line 50
    iget-object v2, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v4, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-boolean v3, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    invoke-static {v2, v4, v5, v3}, Lcom/android/settings/Utils;->saveExpandstate(Landroid/content/Context;JZ)V

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-boolean v2, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    if-eqz v2, :cond_1

    .line 53
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/grid/ExpandableGridView;->expand(Landroid/view/View;I)V

    .line 57
    :goto_1
    iget-object v2, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 62
    :goto_2
    return-void

    .line 49
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 55
    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/grid/ExpandableGridView;->collapse(Landroid/view/View;I)V

    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/grid/ExpandableGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/grid/ExpandableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_2
.end method
