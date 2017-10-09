.class Lcom/android/settings/CryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperSettings;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "action":Ljava/lang/String;
    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 93
    const-string v12, "level"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 94
    .local v5, "level":I
    const-string v12, "plugged"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 95
    .local v7, "plugged":I
    const-string v12, "invalid_charger"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 98
    .local v4, "invalidCharger":I
    const-string v12, "status"

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 102
    .local v2, "batteryStatus":I
    const/16 v12, 0x50

    if-lt v5, v12, :cond_4

    const/4 v6, 0x1

    .line 103
    .local v6, "levelOk":Z
    :goto_0
    and-int/lit8 v12, v7, 0x7

    if-eqz v12, :cond_5

    if-nez v4, :cond_5

    const/4 v12, 0x2

    if-eq v2, v12, :cond_0

    const/4 v12, 0x5

    if-ne v2, v12, :cond_5

    :cond_0
    const/4 v8, 0x1

    .line 109
    .local v8, "pluggedOk":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$000(Lcom/android/settings/CryptKeeperSettings;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v11

    .line 111
    .local v11, "status":I
    const/4 v12, 0x1

    if-gt v12, v11, :cond_1

    const/4 v12, 0x3

    if-ge v12, v11, :cond_6

    :cond_1
    const/4 v10, 0x1

    .line 114
    .local v10, "sdCardOK":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v13

    if-eqz v6, :cond_7

    if-eqz v8, :cond_7

    if-eqz v10, :cond_7

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v13, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$200(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v13

    if-eqz v8, :cond_8

    const/16 v12, 0x8

    :goto_4
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 117
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$300(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v13

    if-eqz v6, :cond_9

    const/16 v12, 0x8

    :goto_5
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$400(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v13

    if-eqz v10, :cond_a

    const/16 v12, 0x8

    :goto_6
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$500(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$600(Lcom/android/settings/CryptKeeperSettings;)Landroid/app/Activity;

    move-result-object v12

    const-string v13, "device_policy"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 124
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v3, :cond_2

    .line 125
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v9

    .line 126
    .local v9, "requestedQuality":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v12, v9}, Lcom/android/settings/CryptKeeperSettings;->access$700(Lcom/android/settings/CryptKeeperSettings;I)I

    move-result v9

    .line 128
    const/high16 v12, 0x20000

    if-ne v9, v12, :cond_b

    .line 129
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$500(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    const v14, 0x7f0a1074

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/settings/CryptKeeperSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 140
    :goto_7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/app/admin/DevicePolicyManager;->satisfyFIPSPassword(I)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 141
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$500(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    .end local v9    # "requestedQuality":I
    :cond_2
    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Button;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 150
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Button;->requestFocus()Z

    .line 154
    .end local v2    # "batteryStatus":I
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "invalidCharger":I
    .end local v5    # "level":I
    .end local v6    # "levelOk":Z
    .end local v7    # "plugged":I
    .end local v8    # "pluggedOk":Z
    .end local v10    # "sdCardOK":Z
    .end local v11    # "status":I
    :cond_3
    return-void

    .line 102
    .restart local v2    # "batteryStatus":I
    .restart local v4    # "invalidCharger":I
    .restart local v5    # "level":I
    .restart local v7    # "plugged":I
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 103
    .restart local v6    # "levelOk":Z
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 111
    .restart local v8    # "pluggedOk":Z
    .restart local v11    # "status":I
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 114
    .restart local v10    # "sdCardOK":Z
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 116
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 117
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 119
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 134
    .restart local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v9    # "requestedQuality":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$500(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    const v14, 0x7f0a1075

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/settings/CryptKeeperSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_7

    .line 143
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v12

    const v13, 0x7f0a106a

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(I)V

    .line 144
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_8
.end method
