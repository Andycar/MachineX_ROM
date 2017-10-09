.class Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$DynamicIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContainerAdminIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DynamicIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$DynamicIntentReceiver;->this$0:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$DynamicIntentReceiver;->getSendingUserId()I

    move-result v3

    .line 92
    .local v3, "userHandle":I
    # getter for: Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->access$300()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 93
    # getter for: Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->access$300()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    .local v1, "intentFwd":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "intentMetaData":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 102
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "intentFwd":Ljava/lang/String;
    .end local v2    # "intentMetaData":[Ljava/lang/String;
    :cond_43
    :goto_43
    return-void

    .line 101
    :cond_44
    iget-object v4, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$DynamicIntentReceiver;->this$0:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    # invokes: Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->sendBroadcastToAdmin(Landroid/content/Context;Landroid/content/Intent;I)V
    invoke-static {v4, p1, p2, v3}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->access$200(Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_43
.end method
