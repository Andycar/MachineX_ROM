.class public Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GridSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GridViewQuickHeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
    }
.end annotation


# instance fields
.field public mHeadersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "listner"    # Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3804
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3805
    iput-object p2, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mHeadersList:Ljava/util/List;

    .line 3806
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 3807
    iput-object p3, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    .line 3808
    return-void
.end method

.method private updateAddQuickSettingsView(Landroid/preference/PreferenceActivity$Header;Landroid/view/View;)V
    .locals 6
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 3870
    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f10000b

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 3871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/GridSettings;->access$200()Landroid/content/Context;

    move-result-object v2

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

    invoke-static {}, Lcom/android/settings/GridSettings;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0a39

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3873
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3876
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;)V
    .locals 4
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "holder"    # Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;

    .prologue
    .line 3863
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10065a

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3866
    :cond_0
    iget-object v0, p2, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/GridSettings;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3867
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 3813
    const/4 v0, 0x0

    .line 3814
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mHeadersList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3815
    iget-object v1, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mHeadersList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 3816
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 3822
    iget-object v0, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mHeadersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 3828
    iget-object v0, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mHeadersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget-wide v0, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 3833
    if-nez p2, :cond_0

    const/4 v1, 0x1

    .line 3834
    .local v1, "isNull":Z
    :goto_0
    const-string v4, "GridSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position grid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / isNull: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3835
    const/4 v2, 0x0

    .line 3836
    .local v2, "v":Landroid/view/View;
    const/4 v0, 0x0

    .line 3838
    .local v0, "holder":Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
    iget-object v4, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mHeadersList:Ljava/util/List;

    if-nez v4, :cond_1

    .line 3859
    :goto_1
    return-object v3

    .line 3833
    .end local v0    # "holder":Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
    .end local v1    # "isNull":Z
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3841
    .restart local v0    # "holder":Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
    .restart local v1    # "isNull":Z
    .restart local v2    # "v":Landroid/view/View;
    :cond_1
    if-nez p2, :cond_2

    .line 3842
    new-instance v0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;

    .end local v0    # "holder":Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
    invoke-direct {v0, v3}, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/GridSettings$1;)V

    .line 3843
    .restart local v0    # "holder":Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
    iget-object v4, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400c0

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3844
    const v3, 0x7f100086

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3845
    const v3, 0x7f100085

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/ToggleImageView;

    iput-object v3, v0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3846
    iput p1, v0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;->position:I

    .line 3847
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3853
    :goto_2
    iget-object v3, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mHeadersList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v3, v0}, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;)V

    .line 3854
    iget-object v4, v0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mHeadersList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    iget v3, v3, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3855
    iget-object v3, v0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3856
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3857
    iget-object v3, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mHeadersList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v3, v2}, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->updateAddQuickSettingsView(Landroid/preference/PreferenceActivity$Header;Landroid/view/View;)V

    move-object v3, v2

    .line 3859
    goto :goto_1

    .line 3849
    :cond_2
    move-object v2, p2

    .line 3850
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
    check-cast v0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;

    .restart local v0    # "holder":Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3887
    iget-object v1, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    if-eqz v1, :cond_0

    .line 3888
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;

    .line 3889
    .local v0, "holder":Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
    const-string v1, "GridViewAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "holder.position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    iget-object v2, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    iget-object v1, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mHeadersList:Ljava/util/List;

    iget v3, v0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;->position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iget v3, v0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;->position:I

    invoke-interface {v2, v1, v3}, Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;->onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V

    .line 3895
    .end local v0    # "holder":Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
    :goto_0
    return-void

    .line 3893
    :cond_0
    const-string v1, "GridViewAdapter"

    const-string v2, "mOnGridItemSelectedListener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
