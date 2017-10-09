.class Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$StaticIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContainerAdminIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StaticIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$StaticIntentReceiver;->this$0:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$StaticIntentReceiver;->getSendingUserId()I

    move-result v1

    .line 75
    .local v1, "userHandle":I
    iget-object v2, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$StaticIntentReceiver;->this$0:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    # getter for: Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v2}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->access$000(Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 77
    .local v0, "mdmUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v1, v2, :cond_1e

    .line 78
    # getter for: Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Admin is in the user space which is sending the intent"

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_1d
    return-void

    .line 81
    :cond_1e
    iget-object v2, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$StaticIntentReceiver;->this$0:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    # invokes: Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->sendBroadcastToAdmin(Landroid/content/Context;Landroid/content/Intent;I)V
    invoke-static {v2, p1, p2, v1}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->access$200(Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_1d
.end method
