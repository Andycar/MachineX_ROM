.class Lcom/sec/android/samsungapps/util/PreloadUpdate$2;
.super Ljava/lang/Object;
.source "PreloadUpdate.java"

# interfaces
.implements Lcom/sec/android/samsungapps/util/ServiceBinder$IServiceBinderResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/samsungapps/util/PreloadUpdate;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/samsungapps/util/PreloadUpdate;


# direct methods
.method constructor <init>(Lcom/sec/android/samsungapps/util/PreloadUpdate;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate$2;->this$0:Lcom/sec/android/samsungapps/util/PreloadUpdate;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/samsungapps/util/PreloadUpdate$2;)Lcom/sec/android/samsungapps/util/PreloadUpdate;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate$2;->this$0:Lcom/sec/android/samsungapps/util/PreloadUpdate;

    return-object v0
.end method


# virtual methods
.method public onServiceBindFailed()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate$2;->this$0:Lcom/sec/android/samsungapps/util/PreloadUpdate;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sec/android/samsungapps/util/PreloadUpdate;->access$2(Lcom/sec/android/samsungapps/util/PreloadUpdate;I)V

    .line 66
    return-void
.end method

.method public onServiceBinded()V
    .locals 3

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate$2;->this$0:Lcom/sec/android/samsungapps/util/PreloadUpdate;

    invoke-static {v1}, Lcom/sec/android/samsungapps/util/PreloadUpdate;->access$1(Lcom/sec/android/samsungapps/util/PreloadUpdate;)Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdate;

    move-result-object v1

    new-instance v2, Lcom/sec/android/samsungapps/util/PreloadUpdate$2$1;

    invoke-direct {v2, p0}, Lcom/sec/android/samsungapps/util/PreloadUpdate$2$1;-><init>(Lcom/sec/android/samsungapps/util/PreloadUpdate$2;)V

    invoke-interface {v1, v2}, Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdate;->update(Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdateResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 59
    iget-object v1, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate$2;->this$0:Lcom/sec/android/samsungapps/util/PreloadUpdate;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/sec/android/samsungapps/util/PreloadUpdate;->access$2(Lcom/sec/android/samsungapps/util/PreloadUpdate;I)V

    goto :goto_0
.end method
