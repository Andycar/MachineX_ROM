.class Landroid/app/trust/TrustManager$1;
.super Landroid/app/trust/ITrustListener$Stub;
.source "TrustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/trust/TrustManager;->registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/trust/TrustManager;

.field final synthetic val$trustListener:Landroid/app/trust/TrustManager$TrustListener;


# direct methods
.method constructor <init>(Landroid/app/trust/TrustManager;Landroid/app/trust/TrustManager$TrustListener;)V
    .registers 3

    .prologue
    .line 97
    iput-object p1, p0, Landroid/app/trust/TrustManager$1;->this$0:Landroid/app/trust/TrustManager;

    iput-object p2, p0, Landroid/app/trust/TrustManager$1;->val$trustListener:Landroid/app/trust/TrustManager$TrustListener;

    invoke-direct {p0}, Landroid/app/trust/ITrustListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrustChanged(ZIZ)V
    .registers 9
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .param p3, "initiatedByUser"    # Z

    .prologue
    const/4 v2, 0x1

    .line 100
    iget-object v1, p0, Landroid/app/trust/TrustManager$1;->this$0:Landroid/app/trust/TrustManager;

    # getter for: Landroid/app/trust/TrustManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/app/trust/TrustManager;->access$000(Landroid/app/trust/TrustManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz p1, :cond_1f

    move v1, v2

    :goto_a
    iget-object v4, p0, Landroid/app/trust/TrustManager$1;->val$trustListener:Landroid/app/trust/TrustManager$TrustListener;

    invoke-virtual {v3, v2, v1, p2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 102
    .local v0, "m":Landroid/os/Message;
    if-eqz p3, :cond_1b

    .line 103
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "initiatedByUser"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    :cond_1b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 106
    return-void

    .line 100
    .end local v0    # "m":Landroid/os/Message;
    :cond_1f
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public onTrustManagedChanged(ZI)V
    .registers 7
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 110
    iget-object v0, p0, Landroid/app/trust/TrustManager$1;->this$0:Landroid/app/trust/TrustManager;

    # getter for: Landroid/app/trust/TrustManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/app/trust/TrustManager;->access$000(Landroid/app/trust/TrustManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    :goto_a
    iget-object v3, p0, Landroid/app/trust/TrustManager$1;->val$trustListener:Landroid/app/trust/TrustManager$TrustListener;

    invoke-virtual {v1, v2, v0, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 112
    return-void

    .line 110
    :cond_14
    const/4 v0, 0x0

    goto :goto_a
.end method
