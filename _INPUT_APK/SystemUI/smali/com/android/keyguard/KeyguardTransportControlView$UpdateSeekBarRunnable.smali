.class Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;
.super Ljava/lang/Object;
.source "KeyguardTransportControlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardTransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSeekBarRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardTransportControlView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardTransportControlView;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardTransportControlView;Lcom/android/keyguard/KeyguardTransportControlView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;
    .param p2, "x1"    # Lcom/android/keyguard/KeyguardTransportControlView$1;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;->updateOnce()Z

    move-result v0

    .line 147
    .local v0, "seekAble":Z
    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardTransportControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 149
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/keyguard/KeyguardTransportControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    :cond_0
    return-void
.end method

.method public updateOnce()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->updateSeekBars()Z

    move-result v0

    return v0
.end method
