.class public Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;
.super Landroid/app/Activity;
.source "DeviceNameActivity.java"


# static fields
.field public static dualsimCheck:Z

.field private static isCursorVisibleOnScreen:Z


# instance fields
.field protected dualsimcheckbox:Landroid/widget/CheckBox;

.field private inflater:Landroid/view/LayoutInflater;

.field private log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

.field private mEasyModeCheckBox:Landroid/widget/CheckBox;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mMoreInformationButton:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    sput-boolean v0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->dualsimCheck:Z

    .line 53
    sput-boolean v0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->isCursorVisibleOnScreen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->dualsimcheckbox:Landroid/widget/CheckBox;

    .line 54
    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->mEasyModeCheckBox:Landroid/widget/CheckBox;

    .line 55
    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->mMoreInformationButton:Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->inflater:Landroid/view/LayoutInflater;

    .line 57
    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->mGuideDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->mEasyModeCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->mGuideDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 47
    sput-boolean p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->isCursorVisibleOnScreen:Z

    return p0
.end method

.method private initViews()V
    .locals 22

    .prologue
    .line 89
    const-string v19, "persist.radio.multisim.config"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 90
    .local v13, "mSimConfig":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->setDeviceName()V

    .line 91
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isMultisimModel()Z

    move-result v19

    if-eqz v19, :cond_0

    const-string v19, "dsda"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 92
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v18

    .line 93
    .local v18, "simcount":I
    const v19, 0x7f0d0030

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 94
    .local v4, "dualView":Landroid/widget/LinearLayout;
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    .line 95
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    .end local v4    # "dualView":Landroid/widget/LinearLayout;
    .end local v18    # "simcount":I
    :cond_0
    :goto_0
    const-string v19, "BMW"

    const-string v20, "ro.csc.sales_code"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 102
    const v19, 0x7f0d0028

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 103
    .local v6, "et1":Landroid/widget/TextView;
    const v19, 0x7f0d0029

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 104
    .local v7, "et2":Landroid/widget/EditText;
    const v19, 0x7f0d002a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 105
    .local v8, "et3":Landroid/widget/TextView;
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 107
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    .end local v6    # "et1":Landroid/widget/TextView;
    .end local v7    # "et2":Landroid/widget/EditText;
    .end local v8    # "et3":Landroid/widget/TextView;
    :cond_1
    const v19, 0x7f0d002b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 114
    .local v11, "mEasyModeView":Landroid/widget/LinearLayout;
    const-string v19, "DCM"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 115
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    :cond_2
    const v19, 0x7f0d0016

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 121
    .local v15, "nextBtnArea":Landroid/widget/LinearLayout;
    const v19, 0x7f0d0034

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 122
    .local v9, "featureBtnArea":Landroid/widget/LinearLayout;
    const v19, 0x7f0d0035

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 123
    .local v10, "featureBtnText":Landroid/widget/TextView;
    const v19, 0x7f0d0017

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 125
    .local v16, "nextBtnText":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 126
    .local v17, "pm":Landroid/content/pm/PackageManager;
    const-string v19, "ro.config.rm_preload_enabled"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 127
    .local v12, "mRemovablePreloadEnabled":I
    const-string v19, "persist.sys.userdata_flashed"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 129
    .local v14, "mUserDataFlashed":Z
    :try_start_0
    const-string v19, "com.samsung.preloadapp"

    const/16 v20, 0x80

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_1
    const-string v19, "jflteaio"

    const-string v20, "ro.product.name"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string v19, "jflteuc"

    const-string v20, "ro.product.name"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string v19, "jactivelteuc"

    const-string v20, "ro.product.name"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    if-nez v14, :cond_d

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_d

    .line 136
    :cond_3
    const v19, 0x7f0b0035

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    :goto_2
    const-string v19, "ro.product.name"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "p4note"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, "ro.product.name"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "santos10"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 141
    :cond_4
    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_5
    const-string v19, "ro.product.name"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "lt01"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 146
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    :cond_6
    new-instance v19, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$1;-><init>(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b0037

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "desc_tts":Ljava/lang/String;
    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 183
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isVideoSequenceModel()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 184
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->isFeatureLearnMoreSupportModel()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 186
    new-instance v19, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$2;-><init>(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :cond_7
    :goto_3
    const v19, 0x7f0d002f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->mEasyModeCheckBox:Landroid/widget/CheckBox;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->mEasyModeCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "easy_mode_switch"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-nez v19, :cond_f

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->mEasyModeCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 229
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->mEasyModeCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    new-instance v20, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$3;-><init>(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    :cond_8
    const v19, 0x7f0d002e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->mMoreInformationButton:Landroid/widget/TextView;

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->mMoreInformationButton:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->mMoreInformationButton:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v20

    or-int/lit8 v20, v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->mMoreInformationButton:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->mMoreInformationButton:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$4;-><init>(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    :cond_9
    const v19, 0x7f0d0033

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->dualsimcheckbox:Landroid/widget/CheckBox;

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->dualsimcheckbox:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->dualsimcheckbox:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    new-instance v20, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$5;-><init>(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;Landroid/widget/TextView;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "dualsimalwaysonCheck"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    const/16 v19, 0x1

    :goto_5
    sput-boolean v19, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->dualsimCheck:Z

    .line 281
    sget-boolean v19, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->dualsimCheck:Z

    if-eqz v19, :cond_11

    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_11

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->dualsimcheckbox:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->dualsimcheckbox:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 283
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b0035

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :goto_6
    return-void

    .line 97
    .end local v3    # "desc_tts":Ljava/lang/String;
    .end local v9    # "featureBtnArea":Landroid/widget/LinearLayout;
    .end local v10    # "featureBtnText":Landroid/widget/TextView;
    .end local v11    # "mEasyModeView":Landroid/widget/LinearLayout;
    .end local v12    # "mRemovablePreloadEnabled":I
    .end local v14    # "mUserDataFlashed":Z
    .end local v15    # "nextBtnArea":Landroid/widget/LinearLayout;
    .end local v16    # "nextBtnText":Landroid/widget/TextView;
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "dualView":Landroid/widget/LinearLayout;
    .restart local v18    # "simcount":I
    :cond_c
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 130
    .end local v4    # "dualView":Landroid/widget/LinearLayout;
    .end local v18    # "simcount":I
    .restart local v9    # "featureBtnArea":Landroid/widget/LinearLayout;
    .restart local v10    # "featureBtnText":Landroid/widget/TextView;
    .restart local v11    # "mEasyModeView":Landroid/widget/LinearLayout;
    .restart local v12    # "mRemovablePreloadEnabled":I
    .restart local v14    # "mUserDataFlashed":Z
    .restart local v15    # "nextBtnArea":Landroid/widget/LinearLayout;
    .restart local v16    # "nextBtnText":Landroid/widget/TextView;
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v5

    .line 131
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 138
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b003a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 206
    .restart local v3    # "desc_tts":Ljava/lang/String;
    :cond_e
    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 227
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->mEasyModeCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    .line 279
    :cond_10
    const/16 v19, 0x0

    goto :goto_5

    .line 285
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->dualsimcheckbox:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->dualsimcheckbox:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 286
    :cond_12
    const-string v19, "jflteaio"

    const-string v20, "ro.product.name"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_13

    const-string v19, "jflteuc"

    const-string v20, "ro.product.name"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_13

    const-string v19, "jactivelteuc"

    const-string v20, "ro.product.name"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_13

    if-nez v14, :cond_14

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_14

    .line 288
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b0035

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 290
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b003a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method

.method private isFeatureLearnMoreSupportModel()Z
    .locals 2

    .prologue
    .line 318
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "mProductName":Ljava/lang/String;
    const-string v1, "hlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "h3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ha3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "lt03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fresco"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    :cond_0
    const/4 v1, 0x1

    .line 325
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setDeviceName()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 344
    const/4 v1, 0x0

    .line 347
    .local v1, "deviceName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_ConfigModelNumber"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "ExtraTag":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, "modelNumber":Ljava/lang/String;
    const-string v8, ""

    const-string v9, "Galaxy S4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 350
    const-string v6, "Galaxy S4"

    .line 353
    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->getUserNameFromContactsApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 354
    .local v7, "userName":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v9, "DeviceNameActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getUserNameFromContactsApp : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v8, "com.osp.app.signin"

    invoke-static {p0, v8}, Lcom/sec/android/app/SecSetupWizard/Utils;->hasAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 358
    .local v4, "hasSamsungAccount":Z
    const-string v8, "com.google"

    invoke-static {p0, v8}, Lcom/sec/android/app/SecSetupWizard/Utils;->hasAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 361
    .local v3, "hasGoogleAccount":Z
    if-eqz v7, :cond_4

    .line 362
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    :goto_0
    const-string v8, "ATT"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 380
    move-object v1, v6

    .line 385
    :cond_1
    :goto_1
    const v8, 0x7f0d0029

    invoke-virtual {p0, v8}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 386
    .local v2, "et":Landroid/widget/EditText;
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 387
    const-string v8, "BMW"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 388
    invoke-virtual {v2, v13}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 390
    :cond_2
    sget-boolean v8, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->isCursorVisibleOnScreen:Z

    if-nez v8, :cond_3

    .line 391
    invoke-virtual {v2, v13}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 392
    :cond_3
    new-instance v8, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$7;

    invoke-direct {v8, p0, v2}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$7;-><init>(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    new-instance v8, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8;

    invoke-direct {v8, p0, v2}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8;-><init>(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 419
    new-instance v8, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$9;

    invoke-direct {v8, p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$9;-><init>(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;)V

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 430
    new-instance v8, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$10;

    invoke-direct {v8, p0, v2}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$10;-><init>(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 440
    return-void

    .line 364
    .end local v2    # "et":Landroid/widget/EditText;
    :cond_4
    if-ne v4, v12, :cond_5

    if-ne v3, v12, :cond_5

    .line 366
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "com.osp.app.signin"

    invoke-static {p0, v9}, Lcom/sec/android/app/SecSetupWizard/Utils;->getAccountID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 367
    :cond_5
    if-nez v4, :cond_6

    if-ne v3, v12, :cond_6

    .line 369
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "com.google"

    invoke-static {p0, v9}, Lcom/sec/android/app/SecSetupWizard/Utils;->getAccountID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 370
    :cond_6
    if-ne v4, v12, :cond_7

    if-nez v3, :cond_7

    .line 372
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "com.osp.app.signin"

    invoke-static {p0, v9}, Lcom/sec/android/app/SecSetupWizard/Utils;->getAccountID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 375
    :cond_7
    move-object v1, v6

    goto/16 :goto_0

    .line 381
    :cond_8
    const-string v8, "BMW"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "android_id"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, "id":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SM230_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v5, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method private setIndicatorTransparency()V
    .locals 3

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 330
    .local v0, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x7c000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 331
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 456
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 459
    packed-switch p1, :pswitch_data_0

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 461
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const/16 v0, 0xb

    if-eq p2, v0, :cond_1

    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    .line 463
    :cond_1
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->setResult(I)V

    .line 464
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->finish()V

    goto :goto_0

    .line 459
    :pswitch_data_0
    .packed-switch 0x7e5
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 69
    :cond_0
    new-instance v1, Lcom/sec/android/app/SecSetupWizard/LogMsg;

    invoke-direct {v1}, Lcom/sec/android/app/SecSetupWizard/LogMsg;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    .line 75
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->setContentView(I)V

    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->initViews()V

    .line 77
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->inflater:Landroid/view/LayoutInflater;

    .line 78
    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    const v1, 0x7f0d002a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    .local v0, "devicedesc":Landroid/widget/TextView;
    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    .end local v0    # "devicedesc":Landroid/widget/TextView;
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->setIndicatorTransparency()V

    .line 86
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 334
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 335
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->setResult(I)V

    .line 336
    sput-boolean v0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->isCursorVisibleOnScreen:Z

    .line 337
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->finish()V

    .line 340
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public showGuideDialog(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "layout"    # Landroid/view/View;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 297
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 299
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 301
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->mGuideDialog:Landroid/app/AlertDialog;

    .line 304
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 305
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 307
    const v1, 0x104000a

    new-instance v2, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$6;-><init>(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 312
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->mGuideDialog:Landroid/app/AlertDialog;

    .line 313
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 314
    return-void
.end method
