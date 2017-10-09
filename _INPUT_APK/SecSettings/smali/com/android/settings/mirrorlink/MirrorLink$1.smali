.class Lcom/android/settings/mirrorlink/MirrorLink$1;
.super Ljava/lang/Object;
.source "MirrorLink.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/mirrorlink/MirrorLink;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/mirrorlink/MirrorLink;


# direct methods
.method constructor <init>(Lcom/android/settings/mirrorlink/MirrorLink;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-static {p2}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/mirrorlink/MirrorLink;->access$002(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/mirrorlink/android/service/IMirrorlinkManager;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    .line 242
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    new-instance v2, Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;-><init>(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/android/settings/mirrorlink/MirrorLink$1;)V

    invoke-static {v1, v2}, Lcom/android/settings/mirrorlink/MirrorLink;->access$102(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;)Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/android/settings/mirrorlink/MirrorLink;->access$000(Lcom/android/settings/mirrorlink/MirrorLink;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/android/settings/mirrorlink/MirrorLink;->access$000(Lcom/android/settings/mirrorlink/MirrorLink;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/android/settings/mirrorlink/MirrorLink;->access$100(Lcom/android/settings/mirrorlink/MirrorLink;)Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->registerListener(Lcom/mirrorlink/android/service/IMirrorlinkListener;)V

    .line 247
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/android/settings/mirrorlink/MirrorLink;->access$300(Lcom/android/settings/mirrorlink/MirrorLink;)V

    .line 255
    :goto_0
    return-void

    .line 249
    :cond_0
    const-string v1, "MirrorLink"

    const-string v2, "MirrorlinkManager service is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/android/settings/mirrorlink/MirrorLink;->access$000(Lcom/android/settings/mirrorlink/MirrorLink;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/android/settings/mirrorlink/MirrorLink;->access$100(Lcom/android/settings/mirrorlink/MirrorLink;)Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/android/settings/mirrorlink/MirrorLink;->access$000(Lcom/android/settings/mirrorlink/MirrorLink;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/android/settings/mirrorlink/MirrorLink;->access$100(Lcom/android/settings/mirrorlink/MirrorLink;)Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->unRegisterListener(Lcom/mirrorlink/android/service/IMirrorlinkListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1, v3}, Lcom/android/settings/mirrorlink/MirrorLink;->access$002(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/mirrorlink/android/service/IMirrorlinkManager;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    .line 235
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1, v3}, Lcom/android/settings/mirrorlink/MirrorLink;->access$102(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;)Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    .line 237
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
