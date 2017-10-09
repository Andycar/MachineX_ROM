.class public Lcom/android/settings/grid/GridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;,
        Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private childList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public headersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mGridType:I

.field private mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

.field private prevFocus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/settings/grid/GridViewAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/grid/GridViewAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILcom/android/settings/grid/GridViewAdapter$OnGridItemListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "gridType"    # I
    .param p5, "listner"    # Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I",
            "Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "childList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/grid/GridViewAdapter;->mContext:Landroid/content/Context;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/grid/GridViewAdapter;->prevFocus:I

    .line 54
    iput-object p1, p0, Lcom/android/settings/grid/GridViewAdapter;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/android/settings/grid/GridViewAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/grid/GridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 56
    iput-object p3, p0, Lcom/android/settings/grid/GridViewAdapter;->headersList:Ljava/util/List;

    .line 57
    iput-object p2, p0, Lcom/android/settings/grid/GridViewAdapter;->childList:Ljava/util/List;

    .line 58
    iput p4, p0, Lcom/android/settings/grid/GridViewAdapter;->mGridType:I

    .line 59
    iput-object p5, p0, Lcom/android/settings/grid/GridViewAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    .line 60
    return-void
.end method

.method private getCursorStartAt(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;

    iget v0, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->cursorStartAt:I

    return v0
.end method

.method private isInFirstLine(II)Z
    .locals 1
    .param p1, "position"    # I
    .param p2, "columns"    # I

    .prologue
    .line 226
    if-ge p1, p2, :cond_0

    .line 227
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInLastLine(III)Z
    .locals 4
    .param p1, "position"    # I
    .param p2, "columns"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 233
    if-gtz p2, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v2

    .line 237
    :cond_1
    const/4 v1, 0x0

    .line 238
    .local v1, "mNumRows":I
    rem-int v3, p3, p2

    if-eqz v3, :cond_2

    .line 239
    div-int v3, p3, p2

    add-int/lit8 v1, v3, 0x1

    .line 244
    :goto_1
    const/4 v0, 0x0

    .line 245
    .local v0, "mInRow":I
    add-int/lit8 v3, p1, 0x1

    rem-int/2addr v3, p2

    if-eqz v3, :cond_3

    .line 246
    add-int/lit8 v3, p1, 0x1

    div-int/2addr v3, p2

    add-int/lit8 v0, v3, 0x1

    .line 251
    :goto_2
    if-ne v1, v0, :cond_0

    .line 252
    const/4 v2, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "mInRow":I
    :cond_2
    div-int v1, p3, p2

    goto :goto_1

    .line 248
    .restart local v0    # "mInRow":I
    :cond_3
    add-int/lit8 v3, p1, 0x1

    div-int v0, v3, p2

    goto :goto_2
.end method

.method private updateAddQuickSettingsView(Landroid/preference/PreferenceActivity$Header;Landroid/view/View;)V
    .locals 6
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 136
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f10000b

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/grid/GridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/grid/GridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0a39

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;)V
    .locals 4
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "holder"    # Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;

    .prologue
    .line 148
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10065a

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings/grid/GridViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getTetheringTitle(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 151
    :cond_0
    iget-object v0, p2, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/grid/GridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/settings/grid/GridViewAdapter;->childList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/grid/GridViewAdapter;->childList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 66
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/grid/GridViewAdapter;->headersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget-wide v0, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getPositionByView(Landroid/view/View;)I
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;

    .line 178
    .local v0, "holder":Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;
    const/4 v1, -0x1

    .line 179
    .local v1, "pos":I
    iget-object v2, p0, Lcom/android/settings/grid/GridViewAdapter;->childList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/android/settings/grid/GridViewAdapter;->childList:Ljava/util/List;

    iget v3, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->cursorStartAt:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 182
    :cond_0
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 97
    const/4 v4, 0x0

    .line 98
    .local v4, "v":Landroid/view/View;
    const/4 v0, 0x0

    .line 100
    .local v0, "holder":Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;
    iget-object v7, p0, Lcom/android/settings/grid/GridViewAdapter;->childList:Ljava/util/List;

    if-nez v7, :cond_0

    .line 132
    :goto_0
    return-object v5

    .line 102
    :cond_0
    if-nez p2, :cond_2

    .line 103
    new-instance v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;

    .end local v0    # "holder":Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;
    invoke-direct {v0}, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;-><init>()V

    .line 104
    .restart local v0    # "holder":Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;
    iget-object v7, p0, Lcom/android/settings/grid/GridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400c0

    invoke-virtual {v7, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 105
    const v5, 0x7f100086

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 106
    const v5, 0x7f100085

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/settings/ToggleImageView;

    iput-object v5, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->icon:Lcom/android/settings/ToggleImageView;

    .line 107
    const v5, 0x7f1001dc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->icon_check:Landroid/widget/CheckBox;

    .line 108
    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    :goto_1
    iget-object v5, p0, Lcom/android/settings/grid/GridViewAdapter;->childList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 114
    .local v2, "pos":I
    iget-object v5, p0, Lcom/android/settings/grid/GridViewAdapter;->headersList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v5, v0}, Lcom/android/settings/grid/GridViewAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;)V

    .line 115
    iget-object v7, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->icon:Lcom/android/settings/ToggleImageView;

    iget-object v5, p0, Lcom/android/settings/grid/GridViewAdapter;->headersList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceActivity$Header;

    iget v5, v5, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v7, v5}, Lcom/android/settings/ToggleImageView;->setImageResource(I)V

    .line 116
    iput p1, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->cursorStartAt:I

    .line 117
    iget-object v5, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v5, p0, Lcom/android/settings/grid/GridViewAdapter;->headersList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v5, v4}, Lcom/android/settings/grid/GridViewAdapter;->updateAddQuickSettingsView(Landroid/preference/PreferenceActivity$Header;Landroid/view/View;)V

    .line 119
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 122
    const/4 v5, 0x1

    iget v7, p0, Lcom/android/settings/grid/GridViewAdapter;->mGridType:I

    if-ne v5, v7, :cond_1

    .line 123
    const v5, 0x7f0200ff

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 124
    invoke-virtual {p0, v4}, Lcom/android/settings/grid/GridViewAdapter;->getPositionByView(Landroid/view/View;)I

    move-result v3

    .line 125
    .local v3, "realPos":I
    iget-object v5, p0, Lcom/android/settings/grid/GridViewAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    if-nez v5, :cond_3

    move v1, v6

    .line 126
    .local v1, "isChecked":Z
    :goto_2
    iget-object v5, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->icon_check:Landroid/widget/CheckBox;

    if-eqz v5, :cond_1

    .line 127
    iget-object v5, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->icon_check:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 128
    iget-object v5, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->icon_check:Landroid/widget/CheckBox;

    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 131
    .end local v1    # "isChecked":Z
    .end local v3    # "realPos":I
    :cond_1
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object v5, v4

    .line 132
    goto/16 :goto_0

    .line 110
    .end local v2    # "pos":I
    :cond_2
    move-object v4, p2

    .line 111
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;
    check-cast v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;

    .restart local v0    # "holder":Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;
    goto :goto_1

    .line 125
    .restart local v2    # "pos":I
    .restart local v3    # "realPos":I
    :cond_3
    iget-object v5, p0, Lcom/android/settings/grid/GridViewAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    invoke-interface {v5, v3}, Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;->isGiditemChecked(I)Z

    move-result v1

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 188
    iget-object v3, p0, Lcom/android/settings/grid/GridViewAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    if-eqz v3, :cond_2

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/settings/grid/GridViewAdapter;->getPositionByView(Landroid/view/View;)I

    move-result v2

    .line 190
    .local v2, "realPos":I
    const-string v3, "GridViewAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "realPos: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v5, p0, Lcom/android/settings/grid/GridViewAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    iget-object v3, p0, Lcom/android/settings/grid/GridViewAdapter;->headersList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v5, v3, v2}, Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;->onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V

    .line 192
    iget v3, p0, Lcom/android/settings/grid/GridViewAdapter;->mGridType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;

    .line 194
    .local v0, "holder":Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;
    iget-object v3, p0, Lcom/android/settings/grid/GridViewAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    if-nez v3, :cond_1

    move v1, v4

    .line 195
    .local v1, "isChecked":Z
    :goto_0
    iget-object v3, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->icon_check:Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    .line 196
    iget-object v3, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->icon_check:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 197
    iget-object v3, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->icon_check:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 203
    .end local v0    # "holder":Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;
    .end local v1    # "isChecked":Z
    .end local v2    # "realPos":I
    :cond_0
    :goto_1
    return-void

    .line 194
    .restart local v0    # "holder":Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;
    .restart local v2    # "realPos":I
    :cond_1
    iget-object v3, p0, Lcom/android/settings/grid/GridViewAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    invoke-interface {v3, v2}, Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;->isGiditemChecked(I)Z

    move-result v1

    goto :goto_0

    .line 201
    .end local v0    # "holder":Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;
    .end local v2    # "realPos":I
    :cond_2
    const-string v3, "GridViewAdapter"

    const-string v4, "mOnGridItemSelectedListener is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isFocused"    # Z

    .prologue
    .line 208
    if-eqz p2, :cond_0

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/settings/grid/GridViewAdapter;->getPositionByView(Landroid/view/View;)I

    move-result v0

    .line 215
    .local v0, "realPos":I
    iput v0, p0, Lcom/android/settings/grid/GridViewAdapter;->prevFocus:I

    .line 217
    .end local v0    # "realPos":I
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/settings/grid/GridContainer;

    .line 259
    .local v9, "row":Lcom/android/settings/grid/GridContainer;
    invoke-virtual {v9}, Lcom/android/settings/grid/GridContainer;->getNumColumns()I

    move-result v5

    .line 260
    .local v5, "mNumColumns":I
    invoke-virtual {p0}, Lcom/android/settings/grid/GridViewAdapter;->getCount()I

    move-result v2

    .line 262
    .local v2, "mCount":I
    invoke-virtual {v9}, Lcom/android/settings/grid/GridContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/settings/grid/ExpandableGridView;

    .line 263
    .local v4, "mGridarea":Lcom/android/settings/grid/ExpandableGridView;
    invoke-virtual {v4, v9}, Lcom/android/settings/grid/ExpandableGridView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 264
    .local v8, "pos":I
    invoke-direct {p0, p1}, Lcom/android/settings/grid/GridViewAdapter;->getCursorStartAt(Landroid/view/View;)I

    move-result v3

    .line 265
    .local v3, "mCursorStartAt":I
    invoke-direct {p0, v3, v5}, Lcom/android/settings/grid/GridViewAdapter;->isInFirstLine(II)Z

    move-result v6

    .line 266
    .local v6, "misInFirstLine":Z
    invoke-direct {p0, v3, v5, v2}, Lcom/android/settings/grid/GridViewAdapter;->isInLastLine(III)Z

    move-result v7

    .line 268
    .local v7, "misInLastLine":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 269
    .local v0, "action":I
    const/16 v10, 0x14

    if-eq p2, v10, :cond_0

    const/16 v10, 0x13

    if-ne p2, v10, :cond_1

    :cond_0
    const/4 v10, 0x1

    if-ne v0, v10, :cond_1

    .line 270
    const/4 v10, 0x1

    .line 290
    :goto_0
    return v10

    .line 271
    :cond_1
    if-eqz v7, :cond_2

    const/16 v10, 0x14

    if-ne p2, v10, :cond_2

    if-nez v0, :cond_2

    .line 272
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v4, v10}, Lcom/android/settings/grid/ExpandableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 273
    .local v1, "category":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 274
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 275
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 276
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/settings/grid/GridViewAdapter;->prevFocus:I

    .line 278
    const/4 v10, 0x1

    goto :goto_0

    .line 280
    .end local v1    # "category":Landroid/view/View;
    :cond_2
    if-eqz v6, :cond_3

    const/16 v10, 0x13

    if-ne p2, v10, :cond_3

    if-nez v0, :cond_3

    .line 281
    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v4, v10}, Lcom/android/settings/grid/ExpandableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 282
    .restart local v1    # "category":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 283
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 284
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 285
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/settings/grid/GridViewAdapter;->prevFocus:I

    .line 287
    const/4 v10, 0x1

    goto :goto_0

    .line 290
    .end local v1    # "category":Landroid/view/View;
    :cond_3
    const/4 v10, 0x0

    goto :goto_0
.end method
