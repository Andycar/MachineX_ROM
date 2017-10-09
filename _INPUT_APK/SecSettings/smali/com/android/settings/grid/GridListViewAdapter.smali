.class public Lcom/android/settings/grid/GridListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;
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

.field private mGroupIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/settings/grid/GridViewAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/grid/GridListViewAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "groupIdx"    # I
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
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "childList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/grid/GridListViewAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lcom/android/settings/grid/GridListViewAdapter;->mContext:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lcom/android/settings/grid/GridListViewAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/grid/GridListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 40
    iput-object p3, p0, Lcom/android/settings/grid/GridListViewAdapter;->headersList:Ljava/util/List;

    .line 41
    iput-object p2, p0, Lcom/android/settings/grid/GridListViewAdapter;->childList:Ljava/util/List;

    .line 42
    iput p4, p0, Lcom/android/settings/grid/GridListViewAdapter;->mGroupIdx:I

    .line 43
    return-void
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;)V
    .locals 4
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "holder"    # Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;

    .prologue
    .line 114
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10065a

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/grid/GridListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getTetheringTitle(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 117
    :cond_0
    iget-object v0, p2, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/grid/GridListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p2, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/settings/grid/GridListViewAdapter;->childList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/grid/GridListViewAdapter;->childList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 49
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/grid/GridListViewAdapter;->headersList:Ljava/util/List;

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
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, "view":Landroid/view/View;
    const/4 v0, 0x0

    .line 83
    .local v0, "holder":Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;
    iget-object v3, p0, Lcom/android/settings/grid/GridListViewAdapter;->childList:Ljava/util/List;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 110
    :goto_0
    return-object v3

    .line 85
    :cond_0
    if-nez p2, :cond_1

    .line 86
    new-instance v0, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;

    .end local v0    # "holder":Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;
    invoke-direct {v0}, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;-><init>()V

    .line 87
    .restart local v0    # "holder":Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;
    iget-object v3, p0, Lcom/android/settings/grid/GridListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040192

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 90
    const v3, 0x7f100085

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 91
    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 93
    const v3, 0x1020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 96
    iget v3, p0, Lcom/android/settings/grid/GridListViewAdapter;->mGroupIdx:I

    iput v3, v0, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;->groupIdx:I

    .line 97
    iget-object v3, p0, Lcom/android/settings/grid/GridListViewAdapter;->childList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;->realPos:I

    .line 98
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    :goto_1
    iget-object v3, p0, Lcom/android/settings/grid/GridListViewAdapter;->childList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 105
    .local v1, "pos":I
    iget-object v3, p0, Lcom/android/settings/grid/GridListViewAdapter;->headersList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v3, v0}, Lcom/android/settings/grid/GridListViewAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;)V

    .line 106
    iget-object v4, v0, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/grid/GridListViewAdapter;->headersList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    iget v3, v3, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    iput p1, v0, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;->cursorStartAt:I

    .line 108
    iget-object v3, v0, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v3, v2

    .line 110
    goto :goto_0

    .line 100
    .end local v1    # "pos":I
    :cond_1
    move-object v2, p2

    .line 101
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;
    check-cast v0, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;

    .restart local v0    # "holder":Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method
