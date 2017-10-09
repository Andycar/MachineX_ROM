.class Lcom/android/settings/CryptDecryptSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptDecryptSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptDecryptSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptDecryptSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptDecryptSettings;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "action":Ljava/lang/String;
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 92
    const-string v10, "level"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 93
    .local v4, "level":I
    const-string v10, "plugged"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 94
    .local v6, "plugged":I
    const-string v10, "invalid_charger"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 96
    .local v3, "invalidCharger":I
    const-string v10, "status"

    const/4 v11, 0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 99
    .local v1, "batteryStatus":I
    const/16 v10, 0x50

    if-lt v4, v10, :cond_4

    const/4 v5, 0x1

    .line 100
    .local v5, "levelOk":Z
    :goto_0
    and-int/lit8 v10, v6, 0x7

    if-eqz v10, :cond_5

    if-nez v3, :cond_5

    const/4 v10, 0x2

    if-eq v1, v10, :cond_0

    const/4 v10, 0x5

    if-ne v1, v10, :cond_5

    :cond_0
    const/4 v7, 0x1

    .line 104
    .local v7, "pluggedOk":Z
    :goto_1
    iget-object v10, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    invoke-static {v10}, Lcom/android/settings/CryptDecryptSettings;->access$000(Lcom/android/settings/CryptDecryptSettings;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v9

    .line 106
    .local v9, "status":I
    const/4 v10, 0x1

    if-gt v10, v9, :cond_1

    const/4 v10, 0x3

    if-ge v10, v9, :cond_6

    :cond_1
    const/4 v8, 0x1

    .line 109
    .local v8, "sdCardOK":Z
    :goto_2
    iget-object v10, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    invoke-static {v10}, Lcom/android/settings/CryptDecryptSettings;->access$100(Lcom/android/settings/CryptDecryptSettings;)Landroid/widget/Button;

    move-result-object v11

    if-eqz v5, :cond_7

    if-eqz v7, :cond_7

    if-eqz v8, :cond_7

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v11, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 110
    iget-object v10, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    invoke-static {v10}, Lcom/android/settings/CryptDecryptSettings;->access$200(Lcom/android/settings/CryptDecryptSettings;)Landroid/view/View;

    move-result-object v11

    if-eqz v7, :cond_8

    const/16 v10, 0x8

    :goto_4
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v10, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    invoke-static {v10}, Lcom/android/settings/CryptDecryptSettings;->access$300(Lcom/android/settings/CryptDecryptSettings;)Landroid/widget/TextView;

    move-result-object v11

    if-eqz v5, :cond_9

    const/16 v10, 0x8

    :goto_5
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v10, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    invoke-static {v10}, Lcom/android/settings/CryptDecryptSettings;->access$400(Lcom/android/settings/CryptDecryptSettings;)Landroid/view/View;

    move-result-object v11

    if-eqz v8, :cond_a

    const/16 v10, 0x8

    :goto_6
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v10, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    invoke-static {v10}, Lcom/android/settings/CryptDecryptSettings;->access$500(Lcom/android/settings/CryptDecryptSettings;)Landroid/widget/TextView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v10, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    invoke-virtual {v10}, Lcom/android/settings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 118
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_2

    .line 119
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->satisfyFIPSPassword(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 120
    iget-object v10, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    invoke-static {v10}, Lcom/android/settings/CryptDecryptSettings;->access$500(Lcom/android/settings/CryptDecryptSettings;)Landroid/widget/TextView;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    :cond_2
    :goto_7
    iget-object v10, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    invoke-static {v10}, Lcom/android/settings/CryptDecryptSettings;->access$100(Lcom/android/settings/CryptDecryptSettings;)Landroid/widget/Button;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Button;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 128
    iget-object v10, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    invoke-static {v10}, Lcom/android/settings/CryptDecryptSettings;->access$100(Lcom/android/settings/CryptDecryptSettings;)Landroid/widget/Button;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Button;->requestFocus()Z

    .line 131
    .end local v1    # "batteryStatus":I
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "invalidCharger":I
    .end local v4    # "level":I
    .end local v5    # "levelOk":Z
    .end local v6    # "plugged":I
    .end local v7    # "pluggedOk":Z
    .end local v8    # "sdCardOK":Z
    .end local v9    # "status":I
    :cond_3
    return-void

    .line 99
    .restart local v1    # "batteryStatus":I
    .restart local v3    # "invalidCharger":I
    .restart local v4    # "level":I
    .restart local v6    # "plugged":I
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 100
    .restart local v5    # "levelOk":Z
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 106
    .restart local v7    # "pluggedOk":Z
    .restart local v9    # "status":I
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 109
    .restart local v8    # "sdCardOK":Z
    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    .line 110
    :cond_8
    const/4 v10, 0x0

    goto :goto_4

    .line 111
    :cond_9
    const/4 v10, 0x0

    goto :goto_5

    .line 112
    :cond_a
    const/4 v10, 0x0

    goto :goto_6

    .line 122
    .restart local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_b
    iget-object v10, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    invoke-static {v10}, Lcom/android/settings/CryptDecryptSettings;->access$100(Lcom/android/settings/CryptDecryptSettings;)Landroid/widget/Button;

    move-result-object v10

    const v11, 0x7f0a106a

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 123
    iget-object v10, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    invoke-static {v10}, Lcom/android/settings/CryptDecryptSettings;->access$100(Lcom/android/settings/CryptDecryptSettings;)Landroid/widget/Button;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_7
.end method
