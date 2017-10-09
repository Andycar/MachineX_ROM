.class public Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;
.super Landroid/app/Activity;
.source "NetworkChargesActivity.java"


# instance fields
.field private log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

.field private mContext:Landroid/content/Context;

.field private mInsertSIMDialog:Landroid/app/AlertDialog;

.field private mobile_data:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->mobile_data:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;)Lcom/sec/android/app/SecSetupWizard/LogMsg;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->onRoamingDisplayMobileDataOnAlert(Landroid/content/Context;)V

    return-void
.end method

.method private initView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 66
    const v5, 0x7f0d0056

    invoke-virtual {p0, v5}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 68
    .local v4, "tv":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 71
    .local v1, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v5, 0x7f0d0058

    invoke-virtual {p0, v5}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->mobile_data:Landroid/widget/CheckBox;

    .line 76
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/SecSetupWizard/Utils;->isSimMissing(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->mobile_data:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 90
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->mobile_data:Landroid/widget/CheckBox;

    new-instance v6, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;

    invoke-direct {v6, p0, v1}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;-><init>(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;Landroid/telephony/TelephonyManager;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    const v5, 0x7f0d0016

    invoke-virtual {p0, v5}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 132
    .local v2, "nextBtnArea":Landroid/widget/LinearLayout;
    new-instance v5, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$2;-><init>(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0035

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0037

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "desc_tts":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 144
    return-void

    .line 78
    .end local v0    # "desc_tts":Ljava/lang/String;
    .end local v2    # "nextBtnArea":Landroid/widget/LinearLayout;
    :cond_0
    const-string v5, "CDMA"

    invoke-static {v5}, Lcom/sec/android/app/SecSetupWizard/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "9"

    invoke-static {v5, v8, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "gsm.sim.currentcardstatus"

    const/4 v6, 0x1

    const-string v7, "9"

    invoke-static {v5, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 81
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->mobile_data:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->mobile_data:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 87
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->mobile_data:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method private onRoamingDisplayMobileDataOnAlert(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 149
    .local v1, "dataRoamPopup":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b00af

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 150
    const v2, 0x7f0b00b0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 151
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 152
    const v2, 0x7f0b00b1

    new-instance v3, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$3;-><init>(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 160
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 161
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 162
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 61
    .local v0, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x7c000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 62
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 45
    :cond_0
    new-instance v1, Lcom/sec/android/app/SecSetupWizard/LogMsg;

    invoke-direct {v1}, Lcom/sec/android/app/SecSetupWizard/LogMsg;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    .line 46
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/BasicForm;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "bf":Lcom/sec/android/app/SecSetupWizard/BasicForm;
    const v1, 0x7f030014

    const v2, 0x7f0b0047

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->changeScreen(II)V

    .line 52
    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->setContentView(Landroid/view/View;)V

    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->initView()V

    .line 55
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->setIndicatorTransparency()V

    .line 57
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 204
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 205
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->setResult(I)V

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->finish()V

    .line 207
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public showInsertSIMDialog()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->mInsertSIMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->mInsertSIMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->mInsertSIMDialog:Landroid/app/AlertDialog;

    .line 217
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$7;-><init>(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->mInsertSIMDialog:Landroid/app/AlertDialog;

    .line 228
    return-void
.end method
