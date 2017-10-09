.class public Lcom/android/settings/grid/GridSettingsFragment;
.super Landroid/app/Fragment;
.source "GridSettingsFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activity:Landroid/preference/PreferenceActivity;

.field private childList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private mContext:Landroid/content/Context;

.field private mFavoriteCnt:I

.field private mGridItemFocus:Z

.field public mGridType:I

.field private mGridarea:Lcom/android/settings/grid/ExpandableGridView;

.field private mOnGridListner:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

.field private root:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridItemFocus:Z

    .line 52
    return-void
.end method

.method private getCategoryView(Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;
    .locals 7
    .param p1, "h"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 270
    move-object v2, p1

    .line 272
    .local v2, "header":Landroid/preference/PreferenceActivity$Header;
    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400fe

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 275
    .local v0, "category":Landroid/view/View;
    new-instance v3, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;

    invoke-direct {v3}, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;-><init>()V

    .line 277
    .local v3, "holder":Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;
    const v4, 0x1020016

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 278
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 279
    iget-object v4, v3, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v2, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "contentDescription":Ljava/lang/String;
    iget-object v4, v3, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 284
    return-object v0
.end method

.method private setLayoutTransition()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 131
    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    .line 132
    .local v1, "transition":Landroid/animation/LayoutTransition;
    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    .line 133
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v1, v2, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 134
    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v2, v1}, Lcom/android/settings/grid/ExpandableGridView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 135
    return-void
.end method


# virtual methods
.method public addSections(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    .line 164
    .local v0, "cnt":I
    const/4 v2, 0x0

    .line 165
    .local v2, "headerPos":I
    const/4 v4, 0x0

    .line 167
    .local v4, "idx":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 168
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/GridSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v5

    if-nez v5, :cond_2

    .line 169
    if-nez v4, :cond_1

    .line 170
    const/4 v2, 0x0

    .line 171
    const/4 v0, 0x0

    .line 172
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 185
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 187
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_1
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    move v2, v4

    .line 177
    add-int/lit8 v0, v0, 0x1

    .line 178
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    :cond_2
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    .end local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_3
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v0}, Lcom/android/settings/grid/ExpandableGridView;->clearFocus()V

    .line 193
    :cond_0
    return-void
.end method

.method public collapseAll()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v0}, Lcom/android/settings/grid/ExpandableGridView;->collapseAll()V

    .line 199
    :cond_0
    return-void
.end method

.method public drawFrame()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    .line 102
    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v6

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    invoke-static {v5, v4}, Lcom/android/settings/Utils;->getCategoryView(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;

    move-result-object v2

    .line 106
    .local v2, "category":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v4, v2}, Lcom/android/settings/grid/ExpandableGridView;->addView(Landroid/view/View;)V

    .line 109
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v9, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 110
    .local v0, "a1":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 111
    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 112
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 113
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridType:I

    iget-object v8, p0, Lcom/android/settings/grid/GridSettingsFragment;->mOnGridListner:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    invoke-static {v5, v4, v6, v7, v8}, Lcom/android/settings/Utils;->getGridView(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/List;ILcom/android/settings/grid/GridViewAdapter$OnGridItemListener;)Lcom/android/settings/grid/GridContainer;

    move-result-object v3

    .line 114
    .local v3, "child":Lcom/android/settings/grid/GridContainer;
    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v4, v3}, Lcom/android/settings/grid/ExpandableGridView;->addView(Landroid/view/View;)V

    .line 116
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;

    iget-boolean v4, v4, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    if-eqz v4, :cond_2

    .line 117
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v9, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 118
    .local v1, "a2":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 119
    invoke-virtual {v3, v1}, Lcom/android/settings/grid/GridContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 123
    .end local v1    # "a2":Landroid/view/animation/AlphaAnimation;
    :goto_1
    invoke-virtual {v3, p0}, Lcom/android/settings/grid/GridContainer;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 125
    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridItemFocus:Z

    goto/16 :goto_0

    .line 121
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/settings/grid/GridContainer;->setVisibility(I)V

    goto :goto_1
.end method

.method public drawGridListFrame()V
    .locals 9

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 73
    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, "category":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v4}, Lcom/android/settings/grid/GridSettingsFragment;->getCategoryView(Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;

    move-result-object v1

    .line 80
    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v4, v1}, Lcom/android/settings/grid/ExpandableGridView;->addView(Landroid/view/View;)V

    .line 82
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 83
    .local v0, "a1":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 84
    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 85
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 87
    iget v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->mFavoriteCnt:I

    if-eqz v4, :cond_2

    .line 88
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridType:I

    iget-object v8, p0, Lcom/android/settings/grid/GridSettingsFragment;->mOnGridListner:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    invoke-static {v5, v4, v6, v7, v8}, Lcom/android/settings/Utils;->getGridView(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/List;ILcom/android/settings/grid/GridViewAdapter$OnGridItemListener;)Lcom/android/settings/grid/GridContainer;

    move-result-object v2

    .line 90
    .local v2, "child":Lcom/android/settings/grid/GridContainer;
    invoke-virtual {v2, p0}, Lcom/android/settings/grid/GridContainer;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 91
    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v4, v2}, Lcom/android/settings/grid/ExpandableGridView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 93
    .end local v2    # "child":Lcom/android/settings/grid/GridContainer;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    invoke-static {v5, v4, v6, v7}, Lcom/android/settings/Utils;->getGridListView(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/List;I)Lcom/android/settings/grid/GridListContainer;

    move-result-object v3

    .line 95
    .local v3, "child2":Lcom/android/settings/grid/GridListContainer;
    invoke-virtual {v3, p0}, Lcom/android/settings/grid/GridListContainer;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v4, v3}, Lcom/android/settings/grid/ExpandableGridView;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public expandAll()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v0}, Lcom/android/settings/grid/ExpandableGridView;->expandAll()V

    .line 205
    :cond_0
    return-void
.end method

.method public initHeaderList(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    sget-object v0, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "initHeaderList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0, p2}, Lcom/android/settings/grid/GridSettingsFragment;->addSections(Ljava/util/List;)V

    .line 160
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 210
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 215
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 220
    iget v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    .line 221
    iget v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    iget-object v1, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 222
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/grid/GridSettingsFragment;->drawGridListFrame()V

    .line 232
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/grid/GridSettingsFragment;->drawFrame()V

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->root:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 229
    invoke-direct {p0}, Lcom/android/settings/grid/GridSettingsFragment;->setLayoutTransition()V

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 140
    move-object v0, p1

    check-cast v0, Landroid/preference/PreferenceActivity;

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    .line 141
    instance-of v0, p1, Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 142
    check-cast v0, Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;

    invoke-interface {v0}, Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;->getGridType()I

    move-result v0

    iput v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridType:I

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 147
    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/grid/GridSettingsFragment;->initHeaderList(Landroid/content/Context;Ljava/util/List;)V

    .line 149
    :cond_0
    instance-of v0, p1, Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 150
    check-cast v0, Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mOnGridListner:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    .line 154
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 155
    return-void

    .line 144
    :cond_1
    sget-object v0, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "activity is not OnSetListner"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_2
    sget-object v0, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "activity is not OnGridItemListener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 58
    sget-object v0, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const v0, 0x7f0400bf

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->root:Landroid/widget/ScrollView;

    .line 60
    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->root:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/grid/GridSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mContext:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->root:Landroid/widget/ScrollView;

    const v1, 0x7f1001da

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/grid/ExpandableGridView;

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    .line 63
    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-static {v0}, Lcom/android/settings/Utils;->getFavoriteCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mFavoriteCnt:I

    .line 64
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/grid/GridSettingsFragment;->drawGridListFrame()V

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->root:Landroid/widget/ScrollView;

    return-object v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/grid/GridSettingsFragment;->drawFrame()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/settings/grid/GridSettingsFragment;->isResumed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment;->mOnGridListner:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    if-eqz v2, :cond_2

    .line 242
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;

    .line 243
    .local v0, "holder":Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;
    const/4 v1, -0x1

    .line 244
    .local v1, "realPos":I
    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 245
    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    iget v3, v0, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;->groupIdx:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget v3, v0, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;->cursorStartAt:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 247
    :cond_1
    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->mOnGridListner:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v3, v2, v1}, Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;->onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    .line 249
    .end local v0    # "holder":Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;
    .end local v1    # "realPos":I
    :cond_2
    sget-object v2, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    const-string v3, "mOnGridListner is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v1, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-boolean v1, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridItemFocus:Z

    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, "gridItem":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 262
    .end local v0    # "gridItem":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
