.class Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;
.super Landroid/database/ContentObserver;
.source "VRApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/VRApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VRSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/VRApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/VRApplicationPolicy;)V
    .registers 3

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;->this$0:Lcom/android/server/am/VRApplicationPolicy;

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 121
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 126
    iget-object v1, p0, Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;->this$0:Lcom/android/server/am/VRApplicationPolicy;

    # getter for: Lcom/android/server/am/VRApplicationPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/VRApplicationPolicy;->access$100(Lcom/android/server/am/VRApplicationPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vrmode_developer_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    .line 128
    .local v0, "vrDevelopMode":Z
    :cond_18
    iget-object v1, p0, Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;->this$0:Lcom/android/server/am/VRApplicationPolicy;

    # getter for: Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/VRApplicationPolicy;->access$200(Lcom/android/server/am/VRApplicationPolicy;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    monitor-enter v2

    .line 129
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;->this$0:Lcom/android/server/am/VRApplicationPolicy;

    iput-boolean v0, v1, Lcom/android/server/am/VRApplicationPolicy;->mVRDevelopMode:Z

    .line 130
    monitor-exit v2

    .line 131
    return-void

    .line 130
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_25

    throw v1
.end method
