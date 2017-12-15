.class final Landroid/service/notification/ConditionProviderService$H;
.super Landroid/os/Handler;
.source "ConditionProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ConditionProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final ON_CONNECTED:I = 0x1

.field private static final ON_REQUEST_CONDITIONS:I = 0x2

.field private static final ON_SUBSCRIBE:I = 0x3

.field private static final ON_UNSUBSCRIBE:I = 0x4


# instance fields
.field final synthetic this$0:Landroid/service/notification/ConditionProviderService;


# direct methods
.method private constructor <init>(Landroid/service/notification/ConditionProviderService;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/ConditionProviderService;Landroid/service/notification/ConditionProviderService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/service/notification/ConditionProviderService;
    .param p2, "x1"    # Landroid/service/notification/ConditionProviderService$1;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/service/notification/ConditionProviderService$H;-><init>(Landroid/service/notification/ConditionProviderService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, "name":Ljava/lang/String;
    :try_start_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_54

    .line 161
    :goto_6
    return-void

    .line 142
    :pswitch_7
    const-string/jumbo v0, "onConnected"

    .line 143
    iget-object v2, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-virtual {v2}, Landroid/service/notification/ConditionProviderService;->onConnected()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_10

    goto :goto_6

    .line 158
    :catch_10
    move-exception v1

    .line 159
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    # getter for: Landroid/service/notification/ConditionProviderService;->TAG:Ljava/lang/String;
    invoke-static {v2}, Landroid/service/notification/ConditionProviderService;->access$300(Landroid/service/notification/ConditionProviderService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error running "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 146
    .end local v1    # "t":Ljava/lang/Throwable;
    :pswitch_2e
    :try_start_2e
    const-string/jumbo v0, "onRequestConditions"

    .line 147
    iget-object v2, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/service/notification/ConditionProviderService;->onRequestConditions(I)V

    goto :goto_6

    .line 150
    :pswitch_39
    const-string/jumbo v0, "onSubscribe"

    .line 151
    iget-object v3, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/service/notification/ConditionProviderService;->onSubscribe(Landroid/net/Uri;)V

    goto :goto_6

    .line 154
    :pswitch_46
    const-string/jumbo v0, "onUnsubscribe"

    .line 155
    iget-object v3, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/service/notification/ConditionProviderService;->onUnsubscribe(Landroid/net/Uri;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_52} :catch_10

    goto :goto_6

    .line 140
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_7
        :pswitch_2e
        :pswitch_39
        :pswitch_46
    .end packed-switch
.end method
