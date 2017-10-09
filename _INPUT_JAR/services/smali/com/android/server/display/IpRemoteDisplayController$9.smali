.class Lcom/android/server/display/IpRemoteDisplayController$9;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->enableWifiDisplay(ILjava/net/InetAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;

.field final synthetic val$addr:Ljava/net/InetAddress;

.field final synthetic val$reqDevType:I


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/net/InetAddress;I)V
    .registers 4

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iput-object p2, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->val$addr:Ljava/net/InetAddress;

    iput p3, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->val$reqDevType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 564
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->val$addr:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "7236"

    iget v4, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->val$reqDevType:I

    const/4 v5, 0x0

    # invokes: Lcom/android/server/display/IpRemoteDisplayController;->enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/display/IpRemoteDisplayController;->access$900(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 569
    :goto_10
    return-void

    .line 565
    :catch_11
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "Failed to enable WifiDisplay"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method
