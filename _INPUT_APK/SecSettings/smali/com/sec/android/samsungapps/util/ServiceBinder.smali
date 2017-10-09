.class public abstract Lcom/sec/android/samsungapps/util/ServiceBinder;
.super Ljava/lang/Object;
.source "ServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/samsungapps/util/ServiceBinder$IServiceBinderResult;,
        Lcom/sec/android/samsungapps/util/ServiceBinder$State;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$sec$android$samsungapps$util$ServiceBinder$State:[I


# instance fields
.field _BinderResultListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/samsungapps/util/ServiceBinder$IServiceBinderResult;",
            ">;"
        }
    .end annotation
.end field

.field private _Context:Landroid/content/Context;

.field _ServiceConnection:Landroid/content/ServiceConnection;

.field private _SevicePath:Ljava/lang/String;

.field _State:Lcom/sec/android/samsungapps/util/ServiceBinder$State;


# direct methods
.method static synthetic $SWITCH_TABLE$com$sec$android$samsungapps$util$ServiceBinder$State()[I
    .locals 3

    .prologue
    .line 11
    sget-object v0, Lcom/sec/android/samsungapps/util/ServiceBinder;->$SWITCH_TABLE$com$sec$android$samsungapps$util$ServiceBinder$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->values()[Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->FAILED:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    invoke-virtual {v1}, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->IDLE:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    invoke-virtual {v1}, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->INIT:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    invoke-virtual {v1}, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->PREPARED:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    invoke-virtual {v1}, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->RELEASING:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    invoke-virtual {v1}, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/sec/android/samsungapps/util/ServiceBinder;->$SWITCH_TABLE$com$sec$android$samsungapps$util$ServiceBinder$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "servicePath"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->IDLE:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    iput-object v0, p0, Lcom/sec/android/samsungapps/util/ServiceBinder;->_State:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsungapps/util/ServiceBinder;->_BinderResultListener:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Lcom/sec/android/samsungapps/util/ServiceBinder$1;

    invoke-direct {v0, p0}, Lcom/sec/android/samsungapps/util/ServiceBinder$1;-><init>(Lcom/sec/android/samsungapps/util/ServiceBinder;)V

    iput-object v0, p0, Lcom/sec/android/samsungapps/util/ServiceBinder;->_ServiceConnection:Landroid/content/ServiceConnection;

    .line 27
    iput-object p2, p0, Lcom/sec/android/samsungapps/util/ServiceBinder;->_SevicePath:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/sec/android/samsungapps/util/ServiceBinder;->_Context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private entry()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/sec/android/samsungapps/util/ServiceBinder;->$SWITCH_TABLE$com$sec$android$samsungapps$util$ServiceBinder$State()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/samsungapps/util/ServiceBinder;->_State:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    invoke-virtual {v1}, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    :pswitch_0
    return-void

    .line 41
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/samsungapps/util/ServiceBinder;->notifyFailed()V

    .line 42
    sget-object v0, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->IDLE:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/samsungapps/util/ServiceBinder;->tran(Lcom/sec/android/samsungapps/util/ServiceBinder$State;)V

    goto :goto_0

    .line 47
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/samsungapps/util/ServiceBinder;->onBindService()V

    goto :goto_0

    .line 50
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/samsungapps/util/ServiceBinder;->notifyPrepared()V

    goto :goto_0

    .line 53
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/samsungapps/util/ServiceBinder;->onUnbindService()V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private exit()V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lcom/sec/android/samsungapps/util/ServiceBinder;->$SWITCH_TABLE$com$sec$android$samsungapps$util$ServiceBinder$State()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/samsungapps/util/ServiceBinder;->_State:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    invoke-virtual {v1}, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 134
    :pswitch_0
    return-void

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private notifyFailed()V
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lcom/sec/android/samsungapps/util/ServiceBinder;->_BinderResultListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    iget-object v1, p0, Lcom/sec/android/samsungapps/util/ServiceBinder;->_BinderResultListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 73
    return-void

    .line 68
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/samsungapps/util/ServiceBinder$IServiceBinderResult;

    .line 70
    .local v0, "listener":Lcom/sec/android/samsungapps/util/ServiceBinder$IServiceBinderResult;
    invoke-interface {v0}, Lcom/sec/android/samsungapps/util/ServiceBinder$IServiceBinderResult;->onServiceBindFailed()V

    goto :goto_0
.end method

.method private notifyPrepared()V
    .locals 3

    .prologue
    .line 59
    iget-object v1, p0, Lcom/sec/android/samsungapps/util/ServiceBinder;->_BinderResultListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    iget-object v1, p0, Lcom/sec/android/samsungapps/util/ServiceBinder;->_BinderResultListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 64
    return-void

    .line 59
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/samsungapps/util/ServiceBinder$IServiceBinderResult;

    .line 61
    .local v0, "listener":Lcom/sec/android/samsungapps/util/ServiceBinder$IServiceBinderResult;
    invoke-interface {v0}, Lcom/sec/android/samsungapps/util/ServiceBinder$IServiceBinderResult;->onServiceBinded()V

    goto :goto_0
.end method

.method private onBindService()V
    .locals 4

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/samsungapps/util/ServiceBinder;->_SevicePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/samsungapps/util/ServiceBinder;->_Context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/samsungapps/util/ServiceBinder;->_ServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 114
    return-void
.end method

.method private onUnbindService()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/samsungapps/util/ServiceBinder;->_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/samsungapps/util/ServiceBinder;->_ServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 119
    sget-object v0, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->IDLE:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/samsungapps/util/ServiceBinder;->tran(Lcom/sec/android/samsungapps/util/ServiceBinder$State;)V

    .line 120
    return-void
.end method


# virtual methods
.method protected abstract bindService(Landroid/os/IBinder;)V
.end method

.method public checkService(Lcom/sec/android/samsungapps/util/ServiceBinder$IServiceBinderResult;)V
    .locals 2
    .param p1, "resultReceiver"    # Lcom/sec/android/samsungapps/util/ServiceBinder$IServiceBinderResult;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/samsungapps/util/ServiceBinder;->_BinderResultListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-static {}, Lcom/sec/android/samsungapps/util/ServiceBinder;->$SWITCH_TABLE$com$sec$android$samsungapps$util$ServiceBinder$State()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/samsungapps/util/ServiceBinder;->_State:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    invoke-virtual {v1}, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 153
    :goto_0
    :pswitch_0
    return-void

    .line 142
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/samsungapps/util/ServiceBinder;->notifyFailed()V

    goto :goto_0

    .line 145
    :pswitch_2
    sget-object v0, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->INIT:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/samsungapps/util/ServiceBinder;->tran(Lcom/sec/android/samsungapps/util/ServiceBinder$State;)V

    goto :goto_0

    .line 150
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/samsungapps/util/ServiceBinder;->notifyPrepared()V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public release()V
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Lcom/sec/android/samsungapps/util/ServiceBinder;->$SWITCH_TABLE$com$sec$android$samsungapps$util$ServiceBinder$State()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/samsungapps/util/ServiceBinder;->_State:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    invoke-virtual {v1}, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    :pswitch_0
    return-void

    .line 166
    :pswitch_1
    sget-object v0, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->RELEASING:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/samsungapps/util/ServiceBinder;->tran(Lcom/sec/android/samsungapps/util/ServiceBinder$State;)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method tran(Lcom/sec/android/samsungapps/util/ServiceBinder$State;)V
    .locals 0
    .param p1, "newState"    # Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/samsungapps/util/ServiceBinder;->exit()V

    .line 33
    iput-object p1, p0, Lcom/sec/android/samsungapps/util/ServiceBinder;->_State:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    .line 34
    invoke-direct {p0}, Lcom/sec/android/samsungapps/util/ServiceBinder;->entry()V

    .line 35
    return-void
.end method
