.class public Landroid/media/AudioService$AudioPolicyProxy;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioPolicyProxy"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioPolicyProxy"


# instance fields
.field mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

.field mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/os/IBinder;)V
    .registers 4
    .param p2, "config"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 7048
    iput-object p1, p0, Landroid/media/AudioService$AudioPolicyProxy;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7049
    iput-object p2, p0, Landroid/media/AudioService$AudioPolicyProxy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 7050
    iput-object p3, p0, Landroid/media/AudioService$AudioPolicyProxy;->mToken:Landroid/os/IBinder;

    .line 7051
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 7054
    iget-object v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$10700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 7055
    :try_start_7
    const-string v0, "AudioPolicyProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService$AudioPolicyProxy;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " died"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7056
    iget-object v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$10700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Landroid/media/AudioService$AudioPolicyProxy;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7057
    monitor-exit v1

    .line 7058
    return-void

    .line 7057
    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v0
.end method
