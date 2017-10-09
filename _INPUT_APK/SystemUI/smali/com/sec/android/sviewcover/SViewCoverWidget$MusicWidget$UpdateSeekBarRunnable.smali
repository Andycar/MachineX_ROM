.class Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$UpdateSeekBarRunnable;
.super Ljava/lang/Object;
.source "SViewCoverWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSeekBarRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;


# direct methods
.method private constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)V
    .locals 0

    .prologue
    .line 2974
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$UpdateSeekBarRunnable;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;Lcom/sec/android/sviewcover/SViewCoverWidget$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
    .param p2, "x1"    # Lcom/sec/android/sviewcover/SViewCoverWidget$1;

    .prologue
    .line 2974
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$UpdateSeekBarRunnable;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2976
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$UpdateSeekBarRunnable;->updateOnce()Z

    move-result v0

    .line 2977
    .local v0, "seekAble":Z
    if-eqz v0, :cond_0

    .line 2978
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$UpdateSeekBarRunnable;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-virtual {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2979
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$UpdateSeekBarRunnable;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2981
    :cond_0
    return-void
.end method

.method public updateOnce()Z
    .locals 1

    .prologue
    .line 2984
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$UpdateSeekBarRunnable;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->updateSeekBars()Z

    move-result v0

    return v0
.end method
