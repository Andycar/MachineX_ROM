.class public Lcom/android/settings/TimeDisplaySchemeSettings;
.super Landroid/app/DialogFragment;
.source "TimeDisplaySchemeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBeijingTime:Landroid/widget/RadioButton;

.field private mLocalTime:Landroid/widget/RadioButton;

.field private mTimeType:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/TimeDisplaySchemeSettings;->mTimeType:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TimeDisplaySchemeSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TimeDisplaySchemeSettings;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/settings/TimeDisplaySchemeSettings;->mTimeType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/TimeDisplaySchemeSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TimeDisplaySchemeSettings;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/TimeDisplaySchemeSettings;->setTimeDisplayScheme(I)V

    return-void
.end method

.method private getTimeDisplayScheme()I
    .locals 4

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "timeType":I
    invoke-virtual {p0}, Lcom/android/settings/TimeDisplaySchemeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_display_scheme"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 144
    return v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 92
    const-string v0, "TimeDisplaySchemeSettings"

    const-string v1, "initView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const v0, 0x7f1006f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/TimeDisplaySchemeSettings;->mBeijingTime:Landroid/widget/RadioButton;

    .line 94
    iget-object v0, p0, Lcom/android/settings/TimeDisplaySchemeSettings;->mBeijingTime:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v0, 0x7f1006f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/TimeDisplaySchemeSettings;->mLocalTime:Landroid/widget/RadioButton;

    .line 96
    iget-object v0, p0, Lcom/android/settings/TimeDisplaySchemeSettings;->mLocalTime:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/TimeDisplaySchemeSettings;->setTimeDisplaySchemeInit()V

    .line 98
    return-void
.end method

.method static newInstance(I)Lcom/android/settings/TimeDisplaySchemeSettings;
    .locals 3
    .param p0, "title"    # I

    .prologue
    .line 47
    new-instance v1, Lcom/android/settings/TimeDisplaySchemeSettings;

    invoke-direct {v1}, Lcom/android/settings/TimeDisplaySchemeSettings;-><init>()V

    .line 48
    .local v1, "frag":Lcom/android/settings/TimeDisplaySchemeSettings;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    invoke-virtual {v1, v0}, Lcom/android/settings/TimeDisplaySchemeSettings;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method

.method private setTimeDisplayScheme(I)V
    .locals 3
    .param p1, "timeType"    # I

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/TimeDisplaySchemeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_display_scheme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TimeDisplaySchemeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_display_scheme"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setTimeDisplaySchemeInit()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 132
    invoke-direct {p0}, Lcom/android/settings/TimeDisplaySchemeSettings;->getTimeDisplayScheme()I

    move-result v0

    iput v0, p0, Lcom/android/settings/TimeDisplaySchemeSettings;->mTimeType:I

    .line 133
    iget v0, p0, Lcom/android/settings/TimeDisplaySchemeSettings;->mTimeType:I

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings/TimeDisplaySchemeSettings;->mBeijingTime:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TimeDisplaySchemeSettings;->mLocalTime:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 121
    iput v1, p0, Lcom/android/settings/TimeDisplaySchemeSettings;->mTimeType:I

    .line 122
    iget-object v0, p0, Lcom/android/settings/TimeDisplaySchemeSettings;->mLocalTime:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 129
    :goto_0
    return-void

    .line 125
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/TimeDisplaySchemeSettings;->mTimeType:I

    .line 126
    iget-object v0, p0, Lcom/android/settings/TimeDisplaySchemeSettings;->mBeijingTime:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x7f1006f2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/TimeDisplaySchemeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0700dd

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TimeDisplaySchemeSettings;->mView:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/android/settings/TimeDisplaySchemeSettings;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/TimeDisplaySchemeSettings;->initView(Landroid/view/View;)V

    .line 66
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TimeDisplaySchemeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TimeDisplaySchemeSettings;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/TimeDisplaySchemeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a091f

    new-instance v2, Lcom/android/settings/TimeDisplaySchemeSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/TimeDisplaySchemeSettings$1;-><init>(Lcom/android/settings/TimeDisplaySchemeSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0920

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TimeDisplaySchemeSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 88
    iget-object v0, p0, Lcom/android/settings/TimeDisplaySchemeSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "TimeDisplaySchemeSettings"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 114
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 103
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 108
    return-void
.end method
