.class Lcom/android/systemui/screenshot/GlobalScreenshot$6$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot$6;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$6;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot$6;)V
    .locals 0

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1250
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    .line 1253
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->show()V

    .line 1254
    monitor-exit v1

    .line 1255
    return-void

    .line 1254
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
