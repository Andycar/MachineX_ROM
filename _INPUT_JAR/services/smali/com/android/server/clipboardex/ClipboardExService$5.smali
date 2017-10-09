.class Lcom/android/server/clipboardex/ClipboardExService$5;
.super Landroid/os/Handler;
.source "ClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboardex/ClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;


# direct methods
.method constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;)V
    .registers 2

    .prologue
    .line 1858
    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService$5;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v11, 0x20

    .line 1861
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_194

    .line 1975
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_12

    const-string v8, "ClipboardServiceEx"

    const-string v9, "handler msg : default"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    :cond_12
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1978
    :cond_15
    :goto_15
    :pswitch_15
    return-void

    .line 1905
    :pswitch_16
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$5;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService$5;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1000(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v9

    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v8, v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1202(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    .line 1906
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$5;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v8}, Lcom/android/server/clipboardex/ClipboardExService;->access$1200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService$5;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mEnableFormatId:I
    invoke-static {v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1300(Lcom/android/server/clipboardex/ClipboardExService;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService$5;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v10}, Lcom/android/server/clipboardex/ClipboardExService;->access$1400(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/sec/clipboard/ClipboardUIManager;->show(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_15

    .line 1909
    :pswitch_3b
    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->access$1500()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1910
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$5;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService$5;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1000(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v9

    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v8, v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1202(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    .line 1911
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$5;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v8}, Lcom/android/server/clipboardex/ClipboardExService;->access$1200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService$5;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mEnableFormatId:I
    invoke-static {v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1300(Lcom/android/server/clipboardex/ClipboardExService;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService$5;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v10}, Lcom/android/server/clipboardex/ClipboardExService;->access$1400(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/sec/clipboard/ClipboardUIManager;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_15

    .line 1916
    :pswitch_66
    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->access$1500()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1917
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$5;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService$5;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1000(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v9

    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v8, v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1202(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    .line 1918
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_86

    const-string v8, "ClipboardServiceEx"

    const-string v9, "mCBUIManager enter case. MSG_DISMISS_DIALOG"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    :cond_86
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$5;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v8}, Lcom/android/server/clipboardex/ClipboardExService;->access$1200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/clipboard/ClipboardUIManager;->dismiss()V

    goto :goto_15

    .line 1924
    :pswitch_90
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1925
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_15

    .line 1926
    const-string v8, "deletePath"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1927
    .local v5, "filePath":Ljava/lang/String;
    const-string v8, "extraDataPath"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1929
    .local v4, "extraFilePath":Ljava/lang/String;
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v8, :cond_c8

    .line 1930
    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Delete intent will be called. filePath :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", extraFilePath :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    :cond_c8
    const/4 v3, 0x0

    .line 1933
    .local v3, "deleteIntent":Landroid/content/Intent;
    if-eqz v5, :cond_126

    const-string v8, "data/data1/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_126

    .line 1934
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "deleteIntent":Landroid/content/Intent;
    const-string/jumbo v8, "sec_container_1.com.samsung.clipboardsaveservice.CLIPBOARD_DELETE_RECEIVER"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1938
    .restart local v3    # "deleteIntent":Landroid/content/Intent;
    :goto_db
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1939
    const-string v8, "deletePath"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1940
    if-eqz v4, :cond_f0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_f0

    .line 1941
    const-string v8, "extraDataPath"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1944
    :cond_f0
    new-instance v7, Landroid/os/UserHandle;

    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$5;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v8}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 1945
    .local v7, "user":Landroid/os/UserHandle;
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$5;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/clipboardex/ClipboardExService;->access$1000(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1947
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v8, :cond_15

    .line 1948
    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CLIPBOARD_DELETE_RECEIVER : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 1936
    .end local v7    # "user":Landroid/os/UserHandle;
    :cond_126
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "deleteIntent":Landroid/content/Intent;
    const-string v8, "com.samsung.clipboardsaveservice.CLIPBOARD_DELETE_RECEIVER"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3    # "deleteIntent":Landroid/content/Intent;
    goto :goto_db

    .line 1954
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "deleteIntent":Landroid/content/Intent;
    .end local v4    # "extraFilePath":Ljava/lang/String;
    .end local v5    # "filePath":Ljava/lang/String;
    :pswitch_12e
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1955
    .local v1, "bundleUri":Landroid/os/Bundle;
    if-eqz v1, :cond_15

    .line 1956
    const-string/jumbo v8, "uriPath"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1957
    .local v6, "uriPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1958
    .local v2, "copyIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$5;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mContainerID:I
    invoke-static {v8}, Lcom/android/server/clipboardex/ClipboardExService;->access$1600(Lcom/android/server/clipboardex/ClipboardExService;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_18c

    .line 1959
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "copyIntent":Landroid/content/Intent;
    const-string/jumbo v8, "sec_container_1.com.samsung.clipboardsaveservice.CLIPBOARD_COPY_URI_RECEIVER"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1963
    .restart local v2    # "copyIntent":Landroid/content/Intent;
    :goto_14d
    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1964
    const-string/jumbo v8, "uriPath"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1966
    new-instance v7, Landroid/os/UserHandle;

    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$5;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v8}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 1967
    .restart local v7    # "user":Landroid/os/UserHandle;
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$5;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/clipboardex/ClipboardExService;->access$1000(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1969
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v8, :cond_15

    .line 1970
    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CLIPBOARD_COPY_URI_RECEIVER : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 1961
    .end local v7    # "user":Landroid/os/UserHandle;
    :cond_18c
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "copyIntent":Landroid/content/Intent;
    const-string v8, "com.samsung.clipboardsaveservice.CLIPBOARD_COPY_URI_RECEIVER"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2    # "copyIntent":Landroid/content/Intent;
    goto :goto_14d

    .line 1861
    :pswitch_data_194
    .packed-switch 0x1
        :pswitch_15
        :pswitch_16
        :pswitch_3b
        :pswitch_66
        :pswitch_90
        :pswitch_12e
    .end packed-switch
.end method
