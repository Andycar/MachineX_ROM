.class public Lcom/android/settings/KnoxActiveProtectionEulaActivity;
.super Landroid/app/Activity;
.source "KnoxActiveProtectionEulaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnNextReboot:Landroid/widget/Button;

.field private btnRebootNow:Landroid/widget/Button;

.field private chkConfirm:Landroid/widget/CheckBox;

.field private mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

.field private tvEula:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    .line 41
    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    .line 42
    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnCancel:Landroid/widget/Button;

    .line 43
    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    .line 44
    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->tvEula:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v1, v4, v4}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v1, v4, v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V

    goto :goto_0

    .line 91
    :pswitch_2
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnablePending()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    .line 96
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxActiveProtectionEulaActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btn_cancel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapDisablePending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 103
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 105
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 106
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    const-string v2, "#888888"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 112
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    const-string v2, "#888888"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x7f100227
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f0400f2

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->setContentView(I)V

    .line 55
    new-instance v0, Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-direct {v0}, Lcom/android/settings/KnoxActiveProtectionStatus;-><init>()V

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    .line 57
    const v0, 0x7f100225

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->tvEula:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f10022a

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 64
    const v0, 0x7f100229

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 69
    const v0, 0x7f100228

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnCancel:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v0, 0x7f100227

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    .line 74
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 124
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 125
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnforced()Z

    move-result v2

    .line 126
    .local v2, "isKapEnforced":Z
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->isDeviceTampered()Z

    move-result v1

    .line 128
    .local v1, "isDeviceTampered":Z
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1    # "isDeviceTampered":Z
    .end local v2    # "isKapEnforced":Z
    :cond_1
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxActiveProtectionEulaActivity"

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

    goto :goto_0
.end method
