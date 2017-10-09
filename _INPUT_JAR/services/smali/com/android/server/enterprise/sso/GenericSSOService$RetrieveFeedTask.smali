.class Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;
.super Landroid/os/AsyncTask;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RetrieveFeedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/sso/GenericSSOService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/sso/GenericSSOService;)V
    .registers 2

    .prologue
    .line 4157
    iput-object p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 4157
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .registers 8
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 4160
    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;

    invoke-direct {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;-><init>()V

    .line 4161
    .local v0, "client":Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;
    const-string/jumbo v2, "north-america.pool.ntp.org"

    const/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 4162
    iget-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->getNtpTime()J

    move-result-wide v4

    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J
    invoke-static {v2, v4, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1602(Lcom/android/server/enterprise/sso/GenericSSOService;J)J

    .line 4163
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_3c

    .line 4164
    const-string/jumbo v2, "utc time"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J
    invoke-static {v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1600(Lcom/android/server/enterprise/sso/GenericSSOService;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3e

    .line 4170
    .end local v0    # "client":Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;
    :cond_3c
    :goto_3c
    const/4 v2, 0x0

    return-object v2

    .line 4166
    :catch_3e
    move-exception v1

    .line 4167
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_3c

    .line 4168
    const-string v2, "GenericSSOService"

    const-string v3, "In RetrieveFeedTask"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4157
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .param p1, "tmp"    # Ljava/lang/Void;

    .prologue
    .line 4174
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1700()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 4175
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1700()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4177
    :cond_d
    return-void
.end method
