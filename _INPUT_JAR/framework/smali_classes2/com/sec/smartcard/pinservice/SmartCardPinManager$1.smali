.class Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;
.super Ljava/lang/Object;
.source "SmartCardPinManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/smartcard/pinservice/SmartCardPinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;


# direct methods
.method constructor <init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager;)V
    .registers 2

    .prologue
    .line 185
    iput-object p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .prologue
    .line 197
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    invoke-static {p2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    move-result-object v2

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;
    invoke-static {v1, v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$002(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Lcom/sec/smartcard/pinservice/ISmartCardPinService;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    .line 198
    const-string v1, "SmartCardPinManager"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v2, 0x0

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z
    invoke-static {v1, v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$102(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z

    .line 200
    # getter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$200()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 202
    :try_start_1c
    const-string v1, "SmartCardPinManager"

    const-string v2, "calling queue.put"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    # getter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$200()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_2c} :catch_2d

    .line 210
    :cond_2c
    :goto_2c
    return-void

    .line 204
    :catch_2d
    move-exception v0

    .line 205
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2c
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x0

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;
    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$002(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Lcom/sec/smartcard/pinservice/ISmartCardPinService;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    .line 190
    const-string v0, "SmartCardPinManager"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x0

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z
    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$102(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z

    .line 193
    return-void
.end method
