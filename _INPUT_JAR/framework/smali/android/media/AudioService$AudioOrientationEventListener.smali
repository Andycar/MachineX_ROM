.class Landroid/media/AudioService$AudioOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1319
    iput-object p1, p0, Landroid/media/AudioService$AudioOrientationEventListener;->this$0:Landroid/media/AudioService;

    .line 1320
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 1321
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 5
    .param p1, "orientation"    # I

    .prologue
    .line 1327
    iget-object v1, p0, Landroid/media/AudioService$AudioOrientationEventListener;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$900(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1329
    .local v0, "newRotation":I
    iget-object v1, p0, Landroid/media/AudioService$AudioOrientationEventListener;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mDeviceRotation:I
    invoke-static {v1}, Landroid/media/AudioService;->access$1000(Landroid/media/AudioService;)I

    move-result v1

    if-eq v0, v1, :cond_29

    .line 1330
    iget-object v1, p0, Landroid/media/AudioService$AudioOrientationEventListener;->this$0:Landroid/media/AudioService;

    # setter for: Landroid/media/AudioService;->mDeviceRotation:I
    invoke-static {v1, v0}, Landroid/media/AudioService;->access$1002(Landroid/media/AudioService;I)I

    .line 1331
    iget-object v1, p0, Landroid/media/AudioService$AudioOrientationEventListener;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->setRotationForAudioSystem()V
    invoke-static {v1}, Landroid/media/AudioService;->access$1100(Landroid/media/AudioService;)V

    .line 1333
    :cond_29
    return-void
.end method
