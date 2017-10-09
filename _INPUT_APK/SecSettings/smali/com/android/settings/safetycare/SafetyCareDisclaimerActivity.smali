.class public Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;
.super Landroid/app/Activity;
.source "SafetyCareDisclaimerActivity.java"


# instance fields
.field private mCheck1:Landroid/widget/CheckBox;

.field private mCheck2:Landroid/widget/CheckBox;

.field private mCheck3:Landroid/widget/CheckBox;

.field private mCheck4:Landroid/widget/CheckBox;

.field private mEmerOnly:Z

.field private mFrom:I

.field private mTextV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    iput v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mFrom:I

    .line 53
    iput-boolean v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mEmerOnly:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->prepareFinishActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mEmerOnly:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck1:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck2:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck3:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck4:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private prepareFinishActivity()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 280
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 281
    return-void
.end method

.method public initTextBox()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 60
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 61
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 62
    const-string v9, "from"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mFrom:I

    .line 67
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.android.GeoLookout"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 68
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mEmerOnly:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    iget v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mFrom:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 74
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mEmerOnly:Z

    .line 77
    :cond_1
    const v9, 0x7f0a1d07

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->setTitle(I)V

    .line 78
    const v9, 0x7f0401e2

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->setContentView(I)V

    .line 79
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->setResult(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "safety_care_disaster_user_agree"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3

    const/4 v0, 0x1

    .line 86
    .local v0, "bCondition":Z
    :goto_1
    iget-boolean v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mEmerOnly:Z

    if-eqz v9, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "safety_care_user_agree"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_4

    const/4 v0, 0x1

    .line 90
    :cond_2
    :goto_2
    if-eqz v0, :cond_7

    .line 91
    const v9, 0x7f10044d

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 92
    .local v1, "cancelButton":Landroid/widget/Button;
    new-instance v9, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$1;

    invoke-direct {v9, p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$1;-><init>(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v9, 0x7f10044e

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 102
    .local v5, "okButton":Landroid/widget/Button;
    new-instance v9, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$2;

    invoke-direct {v9, p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$2;-><init>(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)V

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 129
    const v9, 0x7f10010f

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/view/View;->setOverScrollMode(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 134
    .local v6, "res":Landroid/content/res/Resources;
    const v9, 0x7f100446

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mTextV:Landroid/widget/TextView;

    .line 135
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 136
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0a1d23

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d24

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d25

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d26

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d27

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 141
    .local v8, "sTxt":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mTextV:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :goto_3
    const v9, 0x7f100452

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck1:Landroid/widget/CheckBox;

    .line 174
    const v9, 0x7f10044f

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck2:Landroid/widget/CheckBox;

    .line 175
    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck2:Landroid/widget/CheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 176
    const v9, 0x7f100450

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck3:Landroid/widget/CheckBox;

    .line 177
    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck3:Landroid/widget/CheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 178
    const v9, 0x7f100451

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck4:Landroid/widget/CheckBox;

    .line 179
    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck4:Landroid/widget/CheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 181
    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck1:Landroid/widget/CheckBox;

    new-instance v10, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$3;

    invoke-direct {v10, p0, v5}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$3;-><init>(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;Landroid/widget/Button;)V

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 196
    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck2:Landroid/widget/CheckBox;

    new-instance v10, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$4;

    invoke-direct {v10, p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$4;-><init>(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 204
    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck3:Landroid/widget/CheckBox;

    new-instance v10, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$5;

    invoke-direct {v10, p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$5;-><init>(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 212
    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck4:Landroid/widget/CheckBox;

    new-instance v10, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$6;

    invoke-direct {v10, p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$6;-><init>(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->initTextBox()V

    .line 226
    .end local v1    # "cancelButton":Landroid/widget/Button;
    .end local v5    # "okButton":Landroid/widget/Button;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v8    # "sTxt":Ljava/lang/String;
    :goto_4
    return-void

    .line 69
    .end local v0    # "bCondition":Z
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mEmerOnly:Z

    goto/16 :goto_0

    .line 84
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 87
    .restart local v0    # "bCondition":Z
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 142
    .restart local v1    # "cancelButton":Landroid/widget/Button;
    .restart local v5    # "okButton":Landroid/widget/Button;
    .restart local v6    # "res":Landroid/content/res/Resources;
    :cond_5
    iget-boolean v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mEmerOnly:Z

    if-eqz v9, :cond_6

    .line 143
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0a1d18

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d19

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d1a

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d1b

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d1c

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d1d

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d1e

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d1f

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d20

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d21

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 153
    .restart local v8    # "sTxt":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mTextV:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 155
    .end local v8    # "sTxt":Ljava/lang/String;
    :cond_6
    const v9, 0x7f0a1d0c

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 156
    .local v7, "sOTxt":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d0d

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d0e

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d0f

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d10

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d11

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d12

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d13

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d14

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d15

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d16

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0a1d17

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 167
    const-string v9, "\n"

    const-string v10, "<br>"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 169
    .restart local v8    # "sTxt":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mTextV:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mTextV:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_3

    .line 223
    .end local v1    # "cancelButton":Landroid/widget/Button;
    .end local v5    # "okButton":Landroid/widget/Button;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "sOTxt":Ljava/lang/String;
    .end local v8    # "sTxt":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->finish()V

    goto/16 :goto_4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 267
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->prepareFinishActivity()V

    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->setResult(I)V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->finish()V

    .line 274
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 285
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 291
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 287
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->prepareFinishActivity()V

    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->setResult(I)V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->finish()V

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public setCheckAll()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 229
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck3:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck4:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 232
    return-void
.end method

.method public setOKButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 235
    const v1, 0x7f10044e

    invoke-virtual {p0, v1}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 236
    .local v0, "okButton":Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck1:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck2:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck3:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck4:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck1:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 244
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
