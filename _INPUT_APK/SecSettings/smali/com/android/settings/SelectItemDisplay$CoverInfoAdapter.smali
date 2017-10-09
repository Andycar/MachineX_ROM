.class public Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectItemDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SelectItemDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoverInfoAdapter"
.end annotation


# instance fields
.field private mCheckVisible:[Z

.field private mSummaryArray:[Ljava/lang/String;

.field private mTitleID:[I

.field final synthetic this$0:Lcom/android/settings/SelectItemDisplay;


# direct methods
.method public constructor <init>(Lcom/android/settings/SelectItemDisplay;[I[Ljava/lang/String;[Z)V
    .locals 0
    .param p2, "mTitle"    # [I
    .param p3, "mSummary"    # [Ljava/lang/String;
    .param p4, "isCheckVisible"    # [Z

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 552
    iput-object p2, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->mTitleID:[I

    .line 553
    iput-object p3, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->mSummaryArray:[Ljava/lang/String;

    .line 554
    iput-object p4, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->mCheckVisible:[Z

    .line 555
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->mTitleID:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 564
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->mTitleID:[I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 577
    if-nez p2, :cond_1

    .line 578
    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-static {v1}, Lcom/android/settings/SelectItemDisplay;->access$600(Lcom/android/settings/SelectItemDisplay;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f04004b

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 580
    new-instance v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings/SelectItemDisplay$ViewHolder;-><init>()V

    .line 581
    .local v0, "holder":Lcom/android/settings/SelectItemDisplay$ViewHolder;
    const v1, 0x7f1000d0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 582
    const v1, 0x7f1000d1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;->mSummary:Landroid/widget/TextView;

    .line 583
    const v1, 0x7f1000d2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    .line 584
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 589
    :goto_0
    iget-object v1, v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-virtual {v4}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->mTitleID:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->mSummaryArray:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->mSummaryArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->mCheckVisible:[Z

    aget-boolean v1, v1, p1

    if-ne v1, v2, :cond_2

    .line 594
    iget-object v1, v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 600
    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->mTitleID:[I

    aget v1, v1, p1

    sparse-switch v1, :sswitch_data_0

    .line 619
    :goto_1
    return-object p2

    .line 586
    .end local v0    # "holder":Lcom/android/settings/SelectItemDisplay$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;

    .restart local v0    # "holder":Lcom/android/settings/SelectItemDisplay$ViewHolder;
    goto :goto_0

    .line 596
    :cond_2
    iget-object v1, v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 602
    :sswitch_0
    iget-object v4, v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-virtual {v1}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-static {v5}, Lcom/android/settings/SelectItemDisplay;->access$700(Lcom/android/settings/SelectItemDisplay;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    .line 606
    :sswitch_1
    iget-object v1, v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-virtual {v4}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-static {v5}, Lcom/android/settings/SelectItemDisplay;->access$800(Lcom/android/settings/SelectItemDisplay;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_3

    .line 610
    :sswitch_2
    iget-object v1, v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-virtual {v4}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-static {v5}, Lcom/android/settings/SelectItemDisplay;->access$900(Lcom/android/settings/SelectItemDisplay;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_4

    .line 614
    :sswitch_3
    iget-object v1, v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-virtual {v4}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_message"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_5

    .line 600
    :sswitch_data_0
    .sparse-switch
        0x7f0a0fd5 -> :sswitch_1
        0x7f0a0fdd -> :sswitch_2
        0x7f0a0fdf -> :sswitch_3
        0x7f0a1617 -> :sswitch_0
    .end sparse-switch
.end method
