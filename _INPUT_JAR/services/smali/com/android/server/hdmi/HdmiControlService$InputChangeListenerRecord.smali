.class final Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputChangeListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/hdmi/IHdmiInputChangeListener;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .registers 3
    .param p2, "listener"    # Landroid/hardware/hdmi/IHdmiInputChangeListener;

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1570
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiInputChangeListener;

    .line 1571
    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiInputChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiInputChangeListener;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1600(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1576
    :try_start_7
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->access$4402(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    .line 1577
    monitor-exit v1

    .line 1578
    return-void

    .line 1577
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method
