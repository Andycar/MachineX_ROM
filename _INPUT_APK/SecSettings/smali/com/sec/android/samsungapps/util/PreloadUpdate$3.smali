.class Lcom/sec/android/samsungapps/util/PreloadUpdate$3;
.super Ljava/lang/Object;
.source "PreloadUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/samsungapps/util/PreloadUpdate;->onNotifyResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/samsungapps/util/PreloadUpdate;

.field private final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/sec/android/samsungapps/util/PreloadUpdate;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate$3;->this$0:Lcom/sec/android/samsungapps/util/PreloadUpdate;

    iput p2, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate$3;->val$resultCode:I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate$3;->this$0:Lcom/sec/android/samsungapps/util/PreloadUpdate;

    invoke-static {v0}, Lcom/sec/android/samsungapps/util/PreloadUpdate;->access$3(Lcom/sec/android/samsungapps/util/PreloadUpdate;)Lcom/sec/android/samsungapps/util/PreloadUpdate$IPreloadUpdateResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate$3;->this$0:Lcom/sec/android/samsungapps/util/PreloadUpdate;

    invoke-static {v0}, Lcom/sec/android/samsungapps/util/PreloadUpdate;->access$3(Lcom/sec/android/samsungapps/util/PreloadUpdate;)Lcom/sec/android/samsungapps/util/PreloadUpdate$IPreloadUpdateResultListener;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate$3;->val$resultCode:I

    invoke-interface {v0, v1}, Lcom/sec/android/samsungapps/util/PreloadUpdate$IPreloadUpdateResultListener;->notifyResult(I)V

    .line 80
    :cond_0
    return-void
.end method
