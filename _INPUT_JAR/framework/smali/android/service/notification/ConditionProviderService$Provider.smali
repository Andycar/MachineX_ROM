.class final Landroid/service/notification/ConditionProviderService$Provider;
.super Landroid/service/notification/IConditionProvider$Stub;
.source "ConditionProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ConditionProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Provider"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/notification/ConditionProviderService;


# direct methods
.method private constructor <init>(Landroid/service/notification/ConditionProviderService;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Landroid/service/notification/ConditionProviderService$Provider;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-direct {p0}, Landroid/service/notification/IConditionProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/ConditionProviderService;Landroid/service/notification/ConditionProviderService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/service/notification/ConditionProviderService;
    .param p2, "x1"    # Landroid/service/notification/ConditionProviderService$1;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Landroid/service/notification/ConditionProviderService$Provider;-><init>(Landroid/service/notification/ConditionProviderService;)V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService$Provider;->this$0:Landroid/service/notification/ConditionProviderService;

    # getter for: Landroid/service/notification/ConditionProviderService;->mHandler:Landroid/service/notification/ConditionProviderService$H;
    invoke-static {v0}, Landroid/service/notification/ConditionProviderService;->access$200(Landroid/service/notification/ConditionProviderService;)Landroid/service/notification/ConditionProviderService$H;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/service/notification/ConditionProviderService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 112
    return-void
.end method

.method public onRequestConditions(I)V
    .registers 5
    .param p1, "relevance"    # I

    .prologue
    .line 116
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService$Provider;->this$0:Landroid/service/notification/ConditionProviderService;

    # getter for: Landroid/service/notification/ConditionProviderService;->mHandler:Landroid/service/notification/ConditionProviderService$H;
    invoke-static {v0}, Landroid/service/notification/ConditionProviderService;->access$200(Landroid/service/notification/ConditionProviderService;)Landroid/service/notification/ConditionProviderService$H;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/service/notification/ConditionProviderService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 117
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .registers 4
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 121
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService$Provider;->this$0:Landroid/service/notification/ConditionProviderService;

    # getter for: Landroid/service/notification/ConditionProviderService;->mHandler:Landroid/service/notification/ConditionProviderService$H;
    invoke-static {v0}, Landroid/service/notification/ConditionProviderService;->access$200(Landroid/service/notification/ConditionProviderService;)Landroid/service/notification/ConditionProviderService$H;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/service/notification/ConditionProviderService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 122
    return-void
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .registers 4
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 126
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService$Provider;->this$0:Landroid/service/notification/ConditionProviderService;

    # getter for: Landroid/service/notification/ConditionProviderService;->mHandler:Landroid/service/notification/ConditionProviderService$H;
    invoke-static {v0}, Landroid/service/notification/ConditionProviderService;->access$200(Landroid/service/notification/ConditionProviderService;)Landroid/service/notification/ConditionProviderService$H;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/service/notification/ConditionProviderService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 127
    return-void
.end method
