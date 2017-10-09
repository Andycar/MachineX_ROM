.class Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExchangeAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExchangeAccountBroadcastReceiver"
.end annotation


# instance fields
.field public mHaveResult:Z

.field final synthetic this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V
    .registers 3

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->mHaveResult:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .param p2, "x1"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;

    .prologue
    .line 1465
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1470
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    monitor-enter v1

    .line 1471
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->mHaveResult:Z

    .line 1472
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1473
    monitor-exit v1

    .line 1474
    return-void

    .line 1473
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method
