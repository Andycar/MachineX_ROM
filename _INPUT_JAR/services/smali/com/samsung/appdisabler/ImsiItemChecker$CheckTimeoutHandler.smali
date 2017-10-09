.class Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;
.super Landroid/os/Handler;
.source "ImsiItemChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/appdisabler/ImsiItemChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckTimeoutHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/appdisabler/ImsiItemChecker;


# direct methods
.method private constructor <init>(Lcom/samsung/appdisabler/ImsiItemChecker;)V
    .registers 2

    .prologue
    .line 321
    iput-object p1, p0, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->this$0:Lcom/samsung/appdisabler/ImsiItemChecker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/appdisabler/ImsiItemChecker;Lcom/samsung/appdisabler/ImsiItemChecker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/appdisabler/ImsiItemChecker;
    .param p2, "x1"    # Lcom/samsung/appdisabler/ImsiItemChecker$1;

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;-><init>(Lcom/samsung/appdisabler/ImsiItemChecker;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 325
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_72

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 355
    :goto_1b
    return-void

    .line 327
    :sswitch_1c
    const-string v3, "Network numeric is null - time elapsed"

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 328
    iget-object v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->this$0:Lcom/samsung/appdisabler/ImsiItemChecker;

    # invokes: Lcom/samsung/appdisabler/ImsiItemChecker;->hideAppAfterTimeout()V
    invoke-static {v3}, Lcom/samsung/appdisabler/ImsiItemChecker;->access$200(Lcom/samsung/appdisabler/ImsiItemChecker;)V

    .line 330
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_1b

    .line 351
    :catch_2e
    move-exception v2

    .line 352
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->this$0:Lcom/samsung/appdisabler/ImsiItemChecker;

    # getter for: Lcom/samsung/appdisabler/ImsiItemChecker;->mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;
    invoke-static {v3}, Lcom/samsung/appdisabler/ImsiItemChecker;->access$500(Lcom/samsung/appdisabler/ImsiItemChecker;)Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;->checkingEnded()V

    .line 353
    const-string v3, "CheckTimeoutHandler exception"

    invoke-static {v3, v2}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 333
    .end local v2    # "e":Ljava/lang/Exception;
    :sswitch_3e
    :try_start_3e
    const-string v3, "Finish looper"

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 335
    iget-object v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->this$0:Lcom/samsung/appdisabler/ImsiItemChecker;

    # getter for: Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;
    invoke-static {v3}, Lcom/samsung/appdisabler/ImsiItemChecker;->access$300(Lcom/samsung/appdisabler/ImsiItemChecker;)Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    move-result-object v3

    const/16 v4, 0x6f

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->removeMessages(I)V

    .line 336
    iget-object v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->this$0:Lcom/samsung/appdisabler/ImsiItemChecker;

    # getter for: Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;
    invoke-static {v3}, Lcom/samsung/appdisabler/ImsiItemChecker;->access$300(Lcom/samsung/appdisabler/ImsiItemChecker;)Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    move-result-object v3

    const/16 v4, 0x70

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->removeMessages(I)V

    .line 338
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    goto :goto_1b

    .line 341
    :sswitch_61
    const-string v3, "Show dialog msg"

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 342
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 343
    .local v0, "dialogText":Ljava/lang/String;
    const-string v1, "App Disabler Error"

    .line 344
    .local v1, "dialogTitle":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->this$0:Lcom/samsung/appdisabler/ImsiItemChecker;

    # invokes: Lcom/samsung/appdisabler/ImsiItemChecker;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v1, v0}, Lcom/samsung/appdisabler/ImsiItemChecker;->access$400(Lcom/samsung/appdisabler/ImsiItemChecker;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_71} :catch_2e

    goto :goto_1b

    .line 325
    :sswitch_data_72
    .sparse-switch
        0x6f -> :sswitch_1c
        0x70 -> :sswitch_3e
        0xc9 -> :sswitch_61
    .end sparse-switch
.end method
