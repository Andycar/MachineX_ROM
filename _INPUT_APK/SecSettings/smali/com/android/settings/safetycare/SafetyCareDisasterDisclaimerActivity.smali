.class public Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;
.super Landroid/app/Activity;
.source "SafetyCareDisasterDisclaimerActivity.java"


# instance fields
.field agreeTermsAndConditionsCheckBox:Landroid/widget/CheckBox;

.field agreeToShareLocationCheckBox:Landroid/widget/CheckBox;

.field agreeToTurnOnMobileDataCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->prepareFinishActivity()V

    return-void
.end method

.method private prepareFinishActivity()V
    .locals 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "safety_care_disaster_user_agree"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 153
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v2, 0x7f0a1cc9

    invoke-virtual {p0, v2}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->setTitle(I)V

    .line 47
    const v2, 0x7f0401e1

    invoke-virtual {p0, v2}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "safety_care_disaster_user_agree"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 53
    const v2, 0x7f10044d

    invoke-virtual {p0, v2}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    .local v0, "cancelButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$1;-><init>(Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v2, 0x7f10044e

    invoke-virtual {p0, v2}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 64
    .local v1, "okButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$2;-><init>(Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 83
    const v2, 0x7f10044b

    invoke-virtual {p0, v2}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->agreeToShareLocationCheckBox:Landroid/widget/CheckBox;

    .line 84
    const v2, 0x7f10044a

    invoke-virtual {p0, v2}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->agreeTermsAndConditionsCheckBox:Landroid/widget/CheckBox;

    .line 85
    const v2, 0x7f10044c

    invoke-virtual {p0, v2}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->agreeToTurnOnMobileDataCheckBox:Landroid/widget/CheckBox;

    .line 87
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->agreeToShareLocationCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$3;-><init>(Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->agreeTermsAndConditionsCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$4;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$4;-><init>(Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->agreeToTurnOnMobileDataCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$5;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$5;-><init>(Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    .end local v0    # "cancelButton":Landroid/widget/Button;
    .end local v1    # "okButton":Landroid/widget/Button;
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->finish()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 139
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->prepareFinishActivity()V

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->setResult(I)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->finish()V

    .line 146
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 163
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 159
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->prepareFinishActivity()V

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->setResult(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->finish()V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
