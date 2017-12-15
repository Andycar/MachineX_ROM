.class Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CaPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final AP_SLEEP:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field private static final AP_WAKEUP:Ljava/lang/String; = "android.intent.action.SCREEN_ON"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 135
    if-nez p1, :cond_e

    .line 136
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 157
    :cond_d
    :goto_d
    return-void

    .line 140
    :cond_e
    if-nez p2, :cond_1c

    .line 141
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_d

    .line 145
    :cond_1c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 146
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_d

    .line 147
    :cond_34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 148
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_d

    .line 149
    :cond_4c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 150
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1005

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_d

    .line 151
    :cond_64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 153
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_d
.end method
