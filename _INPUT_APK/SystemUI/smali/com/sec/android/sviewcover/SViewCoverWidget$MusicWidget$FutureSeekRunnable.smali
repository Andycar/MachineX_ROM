.class Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$FutureSeekRunnable;
.super Ljava/lang/Object;
.source "SViewCoverWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FutureSeekRunnable"
.end annotation


# instance fields
.field private mPending:Z

.field private mProgress:I

.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)V
    .locals 0

    .prologue
    .line 2938
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$FutureSeekRunnable;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2943
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$FutureSeekRunnable;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$FutureSeekRunnable;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->scrubTo(I)V

    .line 2944
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$FutureSeekRunnable;->mPending:Z

    .line 2945
    return-void
.end method

.method setProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 2948
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$FutureSeekRunnable;->mProgress:I

    .line 2949
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$FutureSeekRunnable;->mPending:Z

    if-nez v0, :cond_0

    .line 2950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$FutureSeekRunnable;->mPending:Z

    .line 2951
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$FutureSeekRunnable;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, p0, v2, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2953
    :cond_0
    return-void
.end method
