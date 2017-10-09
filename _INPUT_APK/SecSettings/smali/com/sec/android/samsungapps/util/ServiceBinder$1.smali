.class Lcom/sec/android/samsungapps/util/ServiceBinder$1;
.super Ljava/lang/Object;
.source "ServiceBinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/samsungapps/util/ServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$sec$android$samsungapps$util$ServiceBinder$State:[I


# instance fields
.field final synthetic this$0:Lcom/sec/android/samsungapps/util/ServiceBinder;


# direct methods
.method static synthetic $SWITCH_TABLE$com$sec$android$samsungapps$util$ServiceBinder$State()[I
    .locals 3

    .prologue
    .line 75
    sget-object v0, Lcom/sec/android/samsungapps/util/ServiceBinder$1;->$SWITCH_TABLE$com$sec$android$samsungapps$util$ServiceBinder$State:[I

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
    sput-object v0, Lcom/sec/android/samsungapps/util/ServiceBinder$1;->$SWITCH_TABLE$com$sec$android$samsungapps$util$ServiceBinder$State:[I

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

.method constructor <init>(Lcom/sec/android/samsungapps/util/ServiceBinder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/samsungapps/util/ServiceBinder$1;->this$0:Lcom/sec/android/samsungapps/util/ServiceBinder;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 79
    invoke-static {}, Lcom/sec/android/samsungapps/util/ServiceBinder$1;->$SWITCH_TABLE$com$sec$android$samsungapps$util$ServiceBinder$State()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/samsungapps/util/ServiceBinder$1;->this$0:Lcom/sec/android/samsungapps/util/ServiceBinder;

    iget-object v1, v1, Lcom/sec/android/samsungapps/util/ServiceBinder;->_State:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    invoke-virtual {v1}, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    :pswitch_0
    return-void

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/samsungapps/util/ServiceBinder$1;->this$0:Lcom/sec/android/samsungapps/util/ServiceBinder;

    invoke-virtual {v0, p2}, Lcom/sec/android/samsungapps/util/ServiceBinder;->bindService(Landroid/os/IBinder;)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/samsungapps/util/ServiceBinder$1;->this$0:Lcom/sec/android/samsungapps/util/ServiceBinder;

    sget-object v1, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->PREPARED:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    invoke-virtual {v0, v1}, Lcom/sec/android/samsungapps/util/ServiceBinder;->tran(Lcom/sec/android/samsungapps/util/ServiceBinder$State;)V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 96
    invoke-static {}, Lcom/sec/android/samsungapps/util/ServiceBinder$1;->$SWITCH_TABLE$com$sec$android$samsungapps$util$ServiceBinder$State()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/samsungapps/util/ServiceBinder$1;->this$0:Lcom/sec/android/samsungapps/util/ServiceBinder;

    iget-object v1, v1, Lcom/sec/android/samsungapps/util/ServiceBinder;->_State:Lcom/sec/android/samsungapps/util/ServiceBinder$State;

    invoke-virtual {v1}, Lcom/sec/android/samsungapps/util/ServiceBinder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 106
    :pswitch_0
    return-void

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
