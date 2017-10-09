.class public Lcom/android/settings/GridSettings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GridSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GridSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3602
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3603
    invoke-static {p1}, Lcom/android/settings/GridSettings;->access$2502(Landroid/content/Context;)Landroid/content/Context;

    .line 3605
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/GridSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 3606
    iput-object p3, p0, Lcom/android/settings/GridSettings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 3607
    return-void
.end method

.method public static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 6
    .param p0, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v0, 0x1

    .line 3556
    iget-wide v2, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f10000b

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 3570
    :cond_0
    :goto_0
    return v0

    .line 3558
    :cond_1
    iget-object v1, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 3564
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;)V
    .locals 4
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "holder"    # Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;

    .prologue
    .line 3770
    iget-object v0, p2, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v1, p1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3772
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10065a

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3776
    :cond_0
    iget-object v0, p2, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/GridSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3778
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100642

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 3779
    iget-object v0, p2, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f0a1e9a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3781
    :cond_1
    iget-object v0, p2, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3783
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 3582
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 3576
    invoke-virtual {p0, p1}, Lcom/android/settings/GridSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 3577
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/GridSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 3611
    if-nez p2, :cond_1

    const/4 v10, 0x1

    .line 3612
    .local v10, "isNull":Z
    :goto_0
    const-string v12, "GridSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "position list: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / isNull: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/GridSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceActivity$Header;

    .line 3615
    .local v6, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v6}, Lcom/android/settings/GridSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v7

    .line 3616
    .local v7, "headerType":I
    const/4 v11, 0x0

    .line 3618
    .local v11, "view":Landroid/view/View;
    if-nez p2, :cond_2

    .line 3619
    new-instance v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;

    const/4 v12, 0x0

    invoke-direct {v8, v12}, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/GridSettings$1;)V

    .line 3620
    .local v8, "holder":Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;
    packed-switch v7, :pswitch_data_0

    .line 3675
    :goto_1
    invoke-virtual {v11, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3682
    :goto_2
    packed-switch v7, :pswitch_data_1

    .line 3765
    :cond_0
    :goto_3
    :pswitch_0
    return-object v11

    .line 3611
    .end local v6    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v7    # "headerType":I
    .end local v8    # "holder":Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;
    .end local v10    # "isNull":Z
    .end local v11    # "view":Landroid/view/View;
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 3624
    .restart local v6    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v7    # "headerType":I
    .restart local v8    # "holder":Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;
    .restart local v10    # "isNull":Z
    .restart local v11    # "view":Landroid/view/View;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/GridSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f0400fe

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 3626
    const v12, 0x1020016

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_1

    .line 3630
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/GridSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f040194

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 3632
    const v12, 0x7f100085

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3633
    const v12, 0x1020016

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3635
    const v12, 0x1020010

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 3637
    const v12, 0x7f100065

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Switch;

    iput-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto :goto_1

    .line 3641
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/GridSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f040190

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 3643
    const v12, 0x7f100085

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3644
    const v12, 0x1020016

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3646
    const v12, 0x1020010

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 3648
    const v12, 0x7f1003a4

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    iput-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    .line 3649
    const v12, 0x7f100199

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    goto/16 :goto_1

    .line 3653
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/GridSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f040192

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 3656
    const v12, 0x7f100085

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3657
    const v12, 0x1020016

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3659
    const v12, 0x1020010

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 3664
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/GridSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f040193

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 3667
    const v12, 0x7f1003a5

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    iput-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->check_:Landroid/widget/CheckBox;

    .line 3668
    const v12, 0x7f100085

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3669
    const v12, 0x1020016

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3671
    const v12, 0x1020010

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 3677
    .end local v8    # "holder":Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;
    :cond_2
    move-object/from16 v11, p2

    .line 3678
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;

    .restart local v8    # "holder":Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_2

    .line 3684
    :pswitch_6
    iget-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget v14, v6, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3685
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget v14, v6, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0025

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3686
    .local v2, "contentDescription":Ljava/lang/String;
    iget-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3687
    const v12, 0x7f10019b

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3688
    .local v3, "divider":Landroid/view/View;
    const v12, 0x7f10019c

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 3689
    .local v4, "divider_first":Landroid/view/View;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 3690
    if-nez p1, :cond_3

    .line 3691
    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3692
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 3694
    :cond_3
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3695
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 3701
    .end local v2    # "contentDescription":Ljava/lang/String;
    .end local v3    # "divider":Landroid/view/View;
    .end local v4    # "divider_first":Landroid/view/View;
    :pswitch_7
    iget-wide v12, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f10067d

    cmp-long v12, v12, v14

    if-nez v12, :cond_5

    .line 3703
    const/4 v5, 0x0

    .line 3704
    .local v5, "hasCert":Z
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3705
    const/4 v5, 0x0

    .line 3707
    :cond_4
    if-eqz v5, :cond_8

    .line 3708
    iget-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3709
    iget-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 3710
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/GridSettings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v12}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    const/4 v9, 0x1

    .line 3711
    .local v9, "isManaged":Z
    :goto_4
    if-eqz v9, :cond_7

    .line 3712
    iget-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v13, 0x7f0202a4

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3717
    :goto_5
    iget-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    new-instance v13, Lcom/android/settings/GridSettings$HeaderAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings/GridSettings$HeaderAdapter$1;-><init>(Lcom/android/settings/GridSettings$HeaderAdapter;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3730
    .end local v5    # "hasCert":Z
    .end local v9    # "isManaged":Z
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8}, Lcom/android/settings/GridSettings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_3

    .line 3710
    .restart local v5    # "hasCert":Z
    :cond_6
    const/4 v9, 0x0

    goto :goto_4

    .line 3714
    .restart local v9    # "isManaged":Z
    :cond_7
    iget-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v13, 0x1080078

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_5

    .line 3726
    .end local v9    # "isManaged":Z
    :cond_8
    iget-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3727
    iget-object v12, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 3734
    .end local v5    # "hasCert":Z
    :pswitch_8
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8}, Lcom/android/settings/GridSettings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_3

    .line 3620
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_3
    .end packed-switch

    .line 3682
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 3592
    const/4 v0, 0x5

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 3597
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 3587
    invoke-virtual {p0, p1}, Lcom/android/settings/GridSettings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 3792
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 3788
    return-void
.end method
