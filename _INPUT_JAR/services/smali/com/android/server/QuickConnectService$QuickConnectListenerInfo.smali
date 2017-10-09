.class Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
.super Ljava/lang/Object;
.source "QuickConnectService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QuickConnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickConnectListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/QuickConnectService;

.field final token:Landroid/os/IBinder;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/QuickConnectService;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    .registers 6
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->this$0:Lcom/android/server/QuickConnectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p2, p0, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->token:Landroid/os/IBinder;

    .line 110
    iput-object p3, p0, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    .line 111
    iput p4, p0, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->pid:I

    .line 112
    iput p5, p0, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->uid:I

    .line 113
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->this$0:Lcom/android/server/QuickConnectService;

    # getter for: Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/QuickConnectService;->access$000(Lcom/android/server/QuickConnectService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 134
    return-void
.end method

.method public callback()V
    .registers 5

    .prologue
    .line 116
    iget-object v2, p0, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_c

    .line 117
    const-string v2, "QuickConnectService"

    const-string v3, "QuickConnectService - null listener received"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_b
    :goto_b
    return-void

    .line 121
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/quickconnect/IQuickConnectCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/quickconnect/IQuickConnectCallback;

    move-result-object v0

    .line 122
    .local v0, "callback":Lcom/samsung/android/quickconnect/IQuickConnectCallback;
    if-eqz v0, :cond_b

    .line 123
    invoke-interface {v0}, Lcom/samsung/android/quickconnect/IQuickConnectCallback;->onQuickConnectCallback()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_18

    goto :goto_b

    .line 125
    .end local v0    # "callback":Lcom/samsung/android/quickconnect/IQuickConnectCallback;
    :catch_18
    move-exception v1

    .line 126
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "QuickConnectService"

    const-string v3, "BezelManagerService - Failed BezelCallback"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method
