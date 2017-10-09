.class final Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;
.super Landroid/os/Handler;
.source "LicenseLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/license/LicenseLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/license/LicenseLogService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/license/LicenseLogService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;->this$0:Lcom/android/server/enterprise/license/LicenseLogService;

    .line 265
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 266
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 269
    if-eqz p1, :cond_7

    .line 270
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_2c

    .line 285
    :cond_7
    :goto_7
    return-void

    .line 272
    :pswitch_8
    const-string v1, "LicenseLogService"

    const-string v2, "MSG_CLEAN_OLD_RECORDS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;->this$0:Lcom/android/server/enterprise/license/LicenseLogService;

    # invokes: Lcom/android/server/enterprise/license/LicenseLogService;->handleLicenseLogCleanNotification()V
    invoke-static {v1}, Lcom/android/server/enterprise/license/LicenseLogService;->access$100(Lcom/android/server/enterprise/license/LicenseLogService;)V

    goto :goto_7

    .line 277
    :pswitch_15
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 278
    .local v0, "data":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;->this$0:Lcom/android/server/enterprise/license/LicenseLogService;

    const-string v2, "apiName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "adminUid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    # invokes: Lcom/android/server/enterprise/license/LicenseLogService;->_log(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/license/LicenseLogService;->access$200(Lcom/android/server/enterprise/license/LicenseLogService;Ljava/lang/String;I)V

    goto :goto_7

    .line 270
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_15
    .end packed-switch
.end method
