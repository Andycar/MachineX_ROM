.class Lcom/android/server/DrmEventService$4;
.super Landroid/content/BroadcastReceiver;
.source "DrmEventService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DrmEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DrmEventService;


# direct methods
.method constructor <init>(Lcom/android/server/DrmEventService;)V
    .registers 2

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/android/server/DrmEventService$4;->this$0:Lcom/android/server/DrmEventService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1076
    sget-boolean v6, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v6, :cond_20

    .line 1077
    const-string v6, "DrmEventService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WapPush Receiver intent is recieved"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_20
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 1082
    .local v4, "rightMimeType":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v6, :cond_40

    .line 1083
    const-string v6, "DrmEventService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DRM PUSH RECEIVER : MimeType - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_40
    const-string v6, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_58

    const-string v6, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_58

    const-string v6, "application/vnd.oma.drm.roap-trigger+wbxml"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fc

    .line 1087
    :cond_58
    sget-boolean v6, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v6, :cond_74

    .line 1088
    const-string v6, "DrmEventService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DRM PUSH RECEIVER : rightMimeType - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_74
    const-string v6, "data"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v2, v6

    check-cast v2, [B

    .line 1091
    .local v2, "rightData":[B
    if-eqz v2, :cond_85

    array-length v6, v2

    const/4 v7, 0x7

    if-ge v6, v7, :cond_8d

    .line 1092
    :cond_85
    const-string v6, "DrmEventService"

    const-string v7, "The rights data is invalid."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    .end local v2    # "rightData":[B
    :cond_8c
    :goto_8c
    return-void

    .line 1095
    .restart local v2    # "rightData":[B
    :cond_8d
    array-length v6, v2

    add-int/lit8 v6, v6, -0x6

    new-array v0, v6, [B

    .line 1096
    .local v0, "actualWbxmlData":[B
    const/4 v6, 0x6

    const/4 v7, 0x0

    array-length v8, v2

    add-int/lit8 v8, v8, -0x6

    invoke-static {v2, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1097
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1099
    .local v3, "rightDataStream":Ljava/io/ByteArrayInputStream;
    sget-boolean v6, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v6, :cond_c0

    .line 1100
    const-string v6, "DrmEventService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rightDataStream : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_c0
    const-string v6, "application/vnd.oma.drm.roap-trigger+wbxml"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 1103
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.WAP_ROAP_TRIGGER_RCVD"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v5, "wap_intent":Landroid/content/Intent;
    const-string/jumbo v6, "roap_trigger"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1105
    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_8c

    .line 1107
    .end local v5    # "wap_intent":Landroid/content/Intent;
    :cond_d9
    const/4 v1, 0x0

    .line 1112
    .local v1, "contentId":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/DrmEventService$4;->this$0:Lcom/android/server/DrmEventService;

    iget-object v6, v6, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v6, :cond_f0

    .line 1113
    iget-object v6, p0, Lcom/android/server/DrmEventService$4;->this$0:Lcom/android/server/DrmEventService;

    iget-object v6, v6, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    new-instance v7, Landroid/drm/DrmInfo;

    const/4 v8, 0x1

    const-string v9, "application/vnd.oma.drm.content"

    invoke-direct {v7, v8, v2, v9}, Landroid/drm/DrmInfo;-><init>(I[BLjava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    goto :goto_8c

    .line 1116
    :cond_f0
    sget-boolean v6, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v6, :cond_8c

    .line 1117
    const-string v6, "DrmEventService"

    const-string v7, "Failed to Install the rights received. No manager instance"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    .line 1121
    .end local v0    # "actualWbxmlData":[B
    .end local v1    # "contentId":Ljava/lang/String;
    .end local v2    # "rightData":[B
    .end local v3    # "rightDataStream":Ljava/io/ByteArrayInputStream;
    :cond_fc
    sget-boolean v6, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v6, :cond_8c

    .line 1122
    const-string v6, "DrmEventService"

    const-string v7, "DRM PUSH RECEIVER : mimeType is not valid for WAp Push Received"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c
.end method
