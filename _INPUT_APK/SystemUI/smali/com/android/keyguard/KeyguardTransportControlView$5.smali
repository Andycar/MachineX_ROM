.class Lcom/android/keyguard/KeyguardTransportControlView$5;
.super Ljava/lang/Object;
.source "KeyguardTransportControlView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardTransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardTransportControlView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardTransportControlView;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

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
    .line 235
    if-eqz p3, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1200(Lcom/android/keyguard/KeyguardTransportControlView;)Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;->setProgress(I)V

    .line 237
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->delayResetToMetadata()V

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1300(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/util/Date;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1500(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1400(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1300(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->updateSeekDisplay()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->delayResetToMetadata()V

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView;->access$100(Lcom/android/keyguard/KeyguardTransportControlView;)Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 249
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 253
    return-void
.end method
