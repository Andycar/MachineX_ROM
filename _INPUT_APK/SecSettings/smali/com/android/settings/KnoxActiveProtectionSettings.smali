.class public Lcom/android/settings/KnoxActiveProtectionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KnoxActiveProtectionSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private isConfDialogShown:Z

.field private isDeviceTampered:Z

.field private isKapEnforced:Z

.field private isKapOn:Z

.field private mActivity:Lcom/android/settings/SettingsActivity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

.field private mRebootMessage:Landroid/view/View;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mWaringTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    new-instance v0, Lcom/android/settings/KnoxActiveProtectionSettings$4;

    invoke-direct {v0}, Lcom/android/settings/KnoxActiveProtectionSettings$4;-><init>()V

    sput-object v0, Lcom/android/settings/KnoxActiveProtectionSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 62
    iput-boolean v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->isKapOn:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->isKapEnforced:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->isDeviceTampered:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->isConfDialogShown:Z

    .line 70
    iput-object v1, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mRebootMessage:Landroid/view/View;

    .line 72
    iput-object v1, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mWaringTextView:Landroid/widget/TextView;

    .line 74
    iput-object v1, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/KnoxActiveProtectionSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxActiveProtectionSettings;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->isKapOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/KnoxActiveProtectionSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxActiveProtectionSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->isKapOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/KnoxActiveProtectionSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxActiveProtectionSettings;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->isConfDialogShown:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/KnoxActiveProtectionSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxActiveProtectionSettings;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/KnoxActiveProtectionSettings;->showAlert()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/KnoxActiveProtectionSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxActiveProtectionSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->isConfDialogShown:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/KnoxActiveProtectionSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxActiveProtectionSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/KnoxActiveProtectionSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxActiveProtectionSettings;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/KnoxActiveProtectionSettings;->showConfirmationDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/KnoxActiveProtectionSettings;)Lcom/android/settings/KnoxActiveProtectionStatus;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxActiveProtectionSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/KnoxActiveProtectionSettings;)Lcom/android/settings/SettingsActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxActiveProtectionSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/KnoxActiveProtectionSettings;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxActiveProtectionSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mWaringTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/KnoxActiveProtectionSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxActiveProtectionSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mRebootMessage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/KnoxActiveProtectionSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxActiveProtectionSettings;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->isKapEnforced:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/KnoxActiveProtectionSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxActiveProtectionSettings;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->isDeviceTampered:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/KnoxActiveProtectionSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxActiveProtectionSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private isKapEnabled()Z
    .locals 5

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 194
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v2}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 199
    :goto_0
    return v1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxActiveProtectionSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isKapEnabled failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showAlert()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 206
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1ea1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1ea9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/KnoxActiveProtectionSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/KnoxActiveProtectionSettings$3;-><init>(Lcom/android/settings/KnoxActiveProtectionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 216
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 217
    return-void
.end method

.method private showConfirmationDialog()V
    .locals 3

    .prologue
    .line 220
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->isConfDialogShown:Z

    .line 221
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/KnoxActiveProtectionEulaActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxActiveProtectionSettings;->startActivity(Landroid/content/Intent;)V

    .line 224
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 82
    new-instance v2, Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-direct {v2}, Lcom/android/settings/KnoxActiveProtectionStatus;-><init>()V

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    .line 84
    invoke-direct {p0}, Lcom/android/settings/KnoxActiveProtectionSettings;->isKapEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->isKapOn:Z

    .line 86
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 88
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const v3, 0x7f10022f

    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mRebootMessage:Landroid/view/View;

    .line 89
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mRebootMessage:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mRebootMessage:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const v3, 0x7f100231

    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mWaringTextView:Landroid/widget/TextView;

    .line 95
    new-instance v2, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mSwitch:Landroid/widget/Switch;

    .line 96
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/android/settings/KnoxActiveProtectionSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/KnoxActiveProtectionSettings$1;-><init>(Lcom/android/settings/KnoxActiveProtectionSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 130
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mSwitch:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->isKapOn:Z

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v2}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnforced()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->isKapEnforced:Z

    .line 135
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v2}, Lcom/android/settings/KnoxActiveProtectionStatus;->isDeviceTampered()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->isDeviceTampered:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    :goto_0
    :try_start_2
    iget-boolean v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->isKapEnforced:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->isDeviceTampered:Z

    if-eqz v2, :cond_2

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 145
    :cond_2
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v3, Lcom/android/settings/KnoxActiveProtectionSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/KnoxActiveProtectionSettings$2;-><init>(Lcom/android/settings/KnoxActiveProtectionSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v2}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnablePending()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 158
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mWaringTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v3}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1ea8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mRebootMessage:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 167
    .local v1, "padding":I
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 168
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 170
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const v7, 0x800015

    invoke-direct {v4, v5, v6, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 177
    .end local v1    # "padding":I
    :goto_2
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxActiveProtectionSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in onActivityCreated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 175
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxActiveProtectionSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityCreated exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v2}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapDisablePending()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 161
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mWaringTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v3}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1ea7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mRebootMessage:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 188
    const v0, 0x7f0400f6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 182
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 183
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 229
    :try_start_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 231
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->isKapOn:Z

    .line 232
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mSwitch:Landroid/widget/Switch;

    iget-boolean v4, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->isKapOn:Z

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 233
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->isConfDialogShown:Z

    .line 235
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnforced()Z

    move-result v2

    .line 236
    .local v2, "isKapEnforced":Z
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->isDeviceTampered()Z

    move-result v1

    .line 237
    .local v1, "isDeviceTampered":Z
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 238
    :cond_0
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 243
    :goto_0
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnablePending()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mWaringTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v4}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a1ea8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mRebootMessage:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 256
    .end local v1    # "isDeviceTampered":Z
    .end local v2    # "isKapEnforced":Z
    :goto_1
    return-void

    .line 240
    .restart local v1    # "isDeviceTampered":Z
    .restart local v2    # "isKapEnforced":Z
    :cond_1
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    .end local v1    # "isDeviceTampered":Z
    .end local v2    # "isKapEnforced":Z
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxActiveProtectionSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isDeviceTampered":Z
    .restart local v2    # "isKapEnforced":Z
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapDisablePending()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 247
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mWaringTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v4}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a1ea7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mRebootMessage:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 250
    :cond_3
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings;->mRebootMessage:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
