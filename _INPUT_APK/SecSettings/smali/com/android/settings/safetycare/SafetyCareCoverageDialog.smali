.class public Lcom/android/settings/safetycare/SafetyCareCoverageDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SafetyCareCoverageDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mCoverageAdapter:Lcom/android/settings/safetycare/SafetyCareCoverageNotiAdapter;

.field public mCoverageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCoverageListValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentNotiPos:I

.field mCurrentSelection:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mPreviousNotiPos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 38
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mCoverageAdapter:Lcom/android/settings/safetycare/SafetyCareCoverageNotiAdapter;

    .line 46
    iput v1, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mCurrentSelection:I

    .line 47
    iput v1, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mCurrentNotiPos:I

    .line 48
    iput v1, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mPreviousNotiPos:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mCoverageList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mCoverageListValues:Ljava/util/ArrayList;

    return-void
.end method

.method private setDefaultList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0106

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "coverages":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0107

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "coveragevalues":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 108
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mCoverageList:Ljava/util/ArrayList;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mCoverageListValues:Ljava/util/ArrayList;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_0
    new-instance v3, Lcom/android/settings/safetycare/SafetyCareCoverageNotiAdapter;

    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mCoverageList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v5, v5, v4}, Lcom/android/settings/safetycare/SafetyCareCoverageNotiAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mCoverageAdapter:Lcom/android/settings/safetycare/SafetyCareCoverageNotiAdapter;

    .line 112
    return-void
.end method


# virtual methods
.method public getCurrentSelection()I
    .locals 4

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "safetycare_earthquake_coverage"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "szCoverage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const-string v1, "500"

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mCoverageListValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 122
    .local v0, "index":I
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 127
    packed-switch p2, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 129
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 131
    .local v0, "position":I
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mCoverageListValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "safetycare_earthquake_coverage"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    const-string v2, "SafetyCareCoverageDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick[OK] - position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / saved Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->finish()V

    goto :goto_0

    .line 139
    .end local v0    # "position":I
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->finish()V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->setDefaultList()V

    .line 59
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 63
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1cd3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 64
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0401e0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 65
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 66
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 67
    const v1, 0x7f0a01d1

    invoke-virtual {p0, v1}, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 68
    const v1, 0x7f0a0e2d

    invoke-virtual {p0, v1}, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 70
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f100445

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mListView:Landroid/widget/ListView;

    .line 71
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mCoverageAdapter:Lcom/android/settings/safetycare/SafetyCareCoverageNotiAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->setupAlert()V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->getCurrentSelection()I

    move-result v1

    iput v1, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mCurrentSelection:I

    .line 76
    iget v1, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mCurrentSelection:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 77
    const-string v1, "SafetyCareCoverageDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate() positoin : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mCurrentSelection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mCurrentSelection:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 79
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mCurrentSelection:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v1, "SafetyCareCoverageDialog"

    const-string v2, "onCreate() positoin : -1"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
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
    .line 98
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "SafetyCareCoverageDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput p3, p0, Lcom/android/settings/safetycare/SafetyCareCoverageDialog;->mCurrentNotiPos:I

    .line 101
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 94
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 89
    return-void
.end method
