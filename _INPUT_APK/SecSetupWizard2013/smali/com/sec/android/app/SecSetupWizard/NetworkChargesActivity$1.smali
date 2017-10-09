.class Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;
.super Ljava/lang/Object;
.source "NetworkChargesActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

.field final synthetic val$mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;Landroid/telephony/TelephonyManager;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    iput-object p2, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;->val$mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const v7, 0x7f0b0071

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 92
    if-eqz p2, :cond_7

    .line 93
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    invoke-static {v4}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->access$000(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/SecSetupWizard/Utils;->isSimMissing(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    invoke-static {v3}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->access$100(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 95
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->showInsertSIMDialog()V

    .line 128
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string v4, "CDMA"

    invoke-static {v4}, Lcom/sec/android/app/SecSetupWizard/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 97
    const-string v4, "3"

    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "9"

    invoke-static {v5, v2, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "3"

    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "9"

    invoke-static {v5, v3, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 99
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    invoke-static {v3}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->access$100(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 100
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->showInsertSIMDialog()V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;->val$mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 104
    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->isNetworkRoaming(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->isNetworkRoaming(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v0, v3

    .line 106
    .local v0, "isRoaming":Z
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    invoke-static {v4}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->access$000(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "EverPoppedUp"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 107
    .local v1, "mCheckedRoamingOn":I
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->access$200(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;)Lcom/sec/android/app/SecSetupWizard/LogMsg;

    move-result-object v2

    const-string v4, "NetworkChargesActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCheckedChanged, isRoaming = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCheckedRoamingOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    if-eqz v0, :cond_5

    .line 109
    if-nez v1, :cond_4

    .line 110
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->access$200(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;)Lcom/sec/android/app/SecSetupWizard/LogMsg;

    move-result-object v2

    const-string v4, "NetworkChargesActivity"

    const-string v5, "onCheckedChanged, show warning only once when roaming."

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->access$000(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "EverPoppedUp"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    invoke-static {v3}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->access$000(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->access$300(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;Landroid/content/Context;)V

    goto/16 :goto_0

    .end local v0    # "isRoaming":Z
    .end local v1    # "mCheckedRoamingOn":I
    :cond_3
    move v0, v2

    .line 104
    goto :goto_1

    .line 114
    .restart local v0    # "isRoaming":Z
    .restart local v1    # "mCheckedRoamingOn":I
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->access$000(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 117
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->access$000(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 122
    .end local v0    # "isRoaming":Z
    .end local v1    # "mCheckedRoamingOn":I
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;->val$mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 123
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->access$000(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 126
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$1;->val$mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto/16 :goto_0
.end method
