.class public Landroid/media/audiopolicy/AudioPolicy;
.super Ljava/lang/Object;
.source "AudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioPolicy$1;,
        Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;,
        Landroid/media/audiopolicy/AudioPolicy$Builder;
    }
.end annotation


# static fields
.field public static final POLICY_STATUS_INVALID:I = 0x0

.field public static final POLICY_STATUS_REGISTERED:I = 0x2

.field public static final POLICY_STATUS_UNREGISTERED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioPolicy"


# instance fields
.field private mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

.field private mStatus:I

.field private mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/media/audiopolicy/AudioPolicyConfig;)V
    .registers 3
    .param p1, "config"    # Landroid/media/audiopolicy/AudioPolicyConfig;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    .line 54
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mToken:Landroid/os/IBinder;

    .line 66
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 67
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    iget-object v0, v0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    .line 72
    :goto_1c
    return-void

    .line 70
    :cond_1d
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    goto :goto_1c
.end method

.method synthetic constructor <init>(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/AudioPolicy$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "x1"    # Landroid/media/audiopolicy/AudioPolicy$1;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/media/audiopolicy/AudioPolicy;-><init>(Landroid/media/audiopolicy/AudioPolicyConfig;)V

    return-void
.end method


# virtual methods
.method public getConfig()Landroid/media/audiopolicy/AudioPolicyConfig;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    return v0
.end method

.method setStatusListener(Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;)V
    .registers 2
    .param p1, "l"    # Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    .prologue
    .line 117
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 123
    new-instance v0, Ljava/lang/String;

    const-string v1, "android.media.audiopolicy.AudioPolicy:\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "textDump":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioPolicyConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    return-object v0
.end method

.method public token()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mToken:Landroid/os/IBinder;

    return-object v0
.end method
