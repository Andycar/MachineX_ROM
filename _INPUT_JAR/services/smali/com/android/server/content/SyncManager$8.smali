.class Lcom/android/server/content/SyncManager$8;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/pm/RegisteredServicesCacheListener",
        "<",
        "Landroid/content/SyncAdapterType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 2

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/server/content/SyncManager$8;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceChanged(Landroid/content/SyncAdapterType;IZ)V
    .registers 15
    .param p1, "type"    # Landroid/content/SyncAdapterType;
    .param p2, "userId"    # I
    .param p3, "removed"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 410
    if-nez p3, :cond_11

    .line 411
    iget-object v0, p0, Lcom/android/server/content/SyncManager$8;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v2, -0x1

    const/4 v3, -0x3

    iget-object v4, p1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v5, v1

    move-wide v8, v6

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V

    .line 416
    :cond_11
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # Z

    .prologue
    .line 407
    check-cast p1, Landroid/content/SyncAdapterType;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager$8;->onServiceChanged(Landroid/content/SyncAdapterType;IZ)V

    return-void
.end method
