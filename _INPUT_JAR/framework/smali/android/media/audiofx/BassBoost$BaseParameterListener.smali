.class Landroid/media/audiofx/BassBoost$BaseParameterListener;
.super Ljava/lang/Object;
.source "BassBoost.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/BassBoost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/BassBoost;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/BassBoost;)V
    .registers 2

    .prologue
    .line 167
    iput-object p1, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/BassBoost;Landroid/media/audiofx/BassBoost$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/media/audiofx/BassBoost;
    .param p2, "x1"    # Landroid/media/audiofx/BassBoost$1;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Landroid/media/audiofx/BassBoost$BaseParameterListener;-><init>(Landroid/media/audiofx/BassBoost;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 12
    .param p1, "effect"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "status"    # I
    .param p3, "param"    # [B
    .param p4, "value"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "l":Landroid/media/audiofx/BassBoost$OnParameterChangeListener;
    iget-object v3, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    # getter for: Landroid/media/audiofx/BassBoost;->mParamListenerLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/media/audiofx/BassBoost;->access$000(Landroid/media/audiofx/BassBoost;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 174
    :try_start_a
    iget-object v3, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    # getter for: Landroid/media/audiofx/BassBoost;->mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;
    invoke-static {v3}, Landroid/media/audiofx/BassBoost;->access$100(Landroid/media/audiofx/BassBoost;)Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 175
    iget-object v3, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    # getter for: Landroid/media/audiofx/BassBoost;->mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;
    invoke-static {v3}, Landroid/media/audiofx/BassBoost;->access$100(Landroid/media/audiofx/BassBoost;)Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    move-result-object v0

    .line 177
    :cond_18
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_37

    .line 178
    if-eqz v0, :cond_36

    .line 179
    const/4 v1, -0x1

    .line 180
    .local v1, "p":I
    const/4 v2, -0x1

    .line 182
    .local v2, "v":S
    array-length v3, p3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_25

    .line 183
    invoke-static {p3, v6}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v1

    .line 185
    :cond_25
    array-length v3, p4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2d

    .line 186
    invoke-static {p4, v6}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v2

    .line 188
    :cond_2d
    if-eq v1, v5, :cond_36

    if-eq v2, v5, :cond_36

    .line 189
    iget-object v3, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    invoke-interface {v0, v3, p2, v1, v2}, Landroid/media/audiofx/BassBoost$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/BassBoost;IIS)V

    .line 192
    .end local v1    # "p":I
    .end local v2    # "v":S
    :cond_36
    return-void

    .line 177
    :catchall_37
    move-exception v3

    :try_start_38
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v3
.end method
