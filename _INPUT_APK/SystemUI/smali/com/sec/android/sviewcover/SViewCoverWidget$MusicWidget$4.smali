.class Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$4;
.super Ljava/lang/Object;
.source "SViewCoverWidget.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)V
    .locals 0

    .prologue
    .line 3094
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 3097
    if-eqz p3, :cond_1

    .line 3098
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$2900(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$FutureSeekRunnable;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$FutureSeekRunnable;->setProgress(I)V

    .line 3099
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->delayResetToMetadata()V

    .line 3100
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$3000(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Ljava/util/Date;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 3101
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$3200(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$3100(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$3000(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3108
    :cond_0
    :goto_0
    return-void

    .line 3103
    :cond_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$3300(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3104
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProgressChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->updateSeekDisplay()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 3112
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->delayResetToMetadata()V

    .line 3113
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$2200(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$UpdateSeekBarRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3115
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 3119
    return-void
.end method
