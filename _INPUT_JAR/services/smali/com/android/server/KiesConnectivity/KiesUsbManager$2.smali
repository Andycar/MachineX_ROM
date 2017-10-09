.class Lcom/android/server/KiesConnectivity/KiesUsbManager$2;
.super Ljava/util/TimerTask;
.source "KiesUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/KiesConnectivity/KiesUsbManager;->startCDFSEjectTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;


# direct methods
.method constructor <init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    .registers 2

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$2;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 232
    const-string v0, "KiesUsbManager"

    const-string/jumbo v1, "setUsbCurrentSettingMode -> modechange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbManager;->kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$100()Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    .line 234
    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbManager;->kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$100()Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    sget-boolean v0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    if-eqz v0, :cond_1a

    .line 235
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$2;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbManager;->setUsbCurrentSettingMode()V
    invoke-static {v0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    .line 238
    :cond_1a
    return-void
.end method
