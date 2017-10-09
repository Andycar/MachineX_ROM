.class public Lcom/android/settings/ClockMyprofileMenuTablet;
.super Lcom/android/internal/app/AlertActivity;
.source "ClockMyprofileMenuTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static mModeItem:[Ljava/lang/String;


# instance fields
.field private mBodyText:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private updateState()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenuTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenuTablet;->mBodyText:Landroid/widget/TextView;

    const v1, 0x7f0a177b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenuTablet;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0203d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenuTablet;->mBodyText:Landroid/widget/TextView;

    const v1, 0x7f0a177c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenuTablet;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0203d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 98
    packed-switch p2, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 100
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenuTablet;->finish()V

    goto :goto_0

    .line 103
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenuTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "my_profile_enabled"

    iget-object v2, p0, Lcom/android/settings/ClockMyprofileMenuTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenuTablet;->finish()V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-array v2, v8, [Ljava/lang/String;

    sput-object v2, Lcom/android/settings/ClockMyprofileMenuTablet;->mModeItem:[Ljava/lang/String;

    .line 55
    sget-object v2, Lcom/android/settings/ClockMyprofileMenuTablet;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenuTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0fce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 56
    sget-object v2, Lcom/android/settings/ClockMyprofileMenuTablet;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenuTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a13db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 58
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/settings/ClockMyprofileMenuTablet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 60
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenuTablet;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 62
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenuTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1771

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 63
    const v2, 0x7f040101

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 64
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 65
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 66
    const v2, 0x7f0a01d1

    invoke-virtual {p0, v2}, Lcom/android/settings/ClockMyprofileMenuTablet;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 67
    const v2, 0x7f0a0e2d

    invoke-virtual {p0, v2}, Lcom/android/settings/ClockMyprofileMenuTablet;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 69
    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x7f100174

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/ClockMyprofileMenuTablet;->mListView:Landroid/widget/ListView;

    .line 70
    iget-object v2, p0, Lcom/android/settings/ClockMyprofileMenuTablet;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f040124

    sget-object v5, Lcom/android/settings/ClockMyprofileMenuTablet;->mModeItem:[Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object v2, p0, Lcom/android/settings/ClockMyprofileMenuTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 72
    iget-object v2, p0, Lcom/android/settings/ClockMyprofileMenuTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenuTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "my_profile_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 73
    iget-object v2, p0, Lcom/android/settings/ClockMyprofileMenuTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    iget-object v2, p0, Lcom/android/settings/ClockMyprofileMenuTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 76
    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x7f100241

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/ClockMyprofileMenuTablet;->mBodyText:Landroid/widget/TextView;

    .line 77
    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x7f100093

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/ClockMyprofileMenuTablet;->mImageView:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenuTablet;->setupAlert()V

    .line 80
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 84
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenuTablet;->mBodyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenuTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a177b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenuTablet;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0203d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenuTablet;->mBodyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenuTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a177c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenuTablet;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0203d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/ClockMyprofileMenuTablet;->updateState()V

    .line 112
    return-void
.end method
