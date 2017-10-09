.class Lcom/android/server/enterprise/device/DeviceInfo$6;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/device/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/device/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .registers 2

    .prologue
    .line 1572
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$6;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1577
    iget-object v11, p0, Lcom/android/server/enterprise/device/DeviceInfo$6;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/device/DeviceInfo;->isMMSCaptureEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 1612
    :cond_9
    :goto_9
    return-void

    .line 1581
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1582
    .local v0, "action":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 1584
    .local v8, "msgData":Landroid/os/Bundle;
    if-eqz v0, :cond_16

    if-nez v8, :cond_1e

    .line 1585
    :cond_16
    const-string v11, "DeviceInfo"

    const-string v12, "No data arrived at mMessagingReceiver"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1590
    :cond_1e
    const-string v11, "com.android.mms.RECEIVED_MSG"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7e

    .line 1591
    const/4 v6, 0x1

    .line 1599
    .local v6, "isInbound":Z
    :goto_27
    const-string v11, "msg_type"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1600
    .local v10, "type":Ljava/lang/String;
    const-string v11, "mms"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1602
    const-string v11, "msg_address"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1603
    .local v1, "address":Ljava/lang/String;
    const-string v11, "date"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1604
    .local v4, "date":J
    const-string v11, "msg_subject"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1605
    .local v9, "subject":Ljava/lang/String;
    const-string v11, "msg_body"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1606
    .local v2, "body":Ljava/lang/String;
    const-string v11, "content_location"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1608
    .local v3, "contentLocation":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_91

    const-string v11, ""

    :goto_5c
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v9, :cond_a5

    const-string v11, ""

    :goto_64
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v2, :cond_6c

    const-string v2, ""

    .end local v2    # "body":Ljava/lang/String;
    :cond_6c
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1610
    .local v7, "message":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/enterprise/device/DeviceInfo$6;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v1, v12, v7, v6}, Lcom/android/server/enterprise/device/DeviceInfo;->storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    .line 1592
    .end local v1    # "address":Ljava/lang/String;
    .end local v3    # "contentLocation":Ljava/lang/String;
    .end local v4    # "date":J
    .end local v6    # "isInbound":Z
    .end local v7    # "message":Ljava/lang/String;
    .end local v9    # "subject":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    :cond_7e
    const-string v11, "com.android.mms.SENT_MSG"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_88

    .line 1593
    const/4 v6, 0x0

    .restart local v6    # "isInbound":Z
    goto :goto_27

    .line 1595
    .end local v6    # "isInbound":Z
    :cond_88
    const-string v11, "DeviceInfo"

    const-string v12, "Unexpected intent arrived at mMessagingReceiver"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1608
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v2    # "body":Ljava/lang/String;
    .restart local v3    # "contentLocation":Ljava/lang/String;
    .restart local v4    # "date":J
    .restart local v6    # "isInbound":Z
    .restart local v9    # "subject":Ljava/lang/String;
    .restart local v10    # "type":Ljava/lang/String;
    :cond_91
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_5c

    :cond_a5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_64
.end method
