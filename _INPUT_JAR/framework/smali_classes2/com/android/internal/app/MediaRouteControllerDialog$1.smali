.class Lcom/android/internal/app/MediaRouteControllerDialog$1;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MediaRouteControllerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mStopTrackingTouch:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/internal/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V
    .registers 3

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Lcom/android/internal/app/MediaRouteControllerDialog$1$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/MediaRouteControllerDialog$1$1;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog$1;)V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->mStopTrackingTouch:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 173
    if-eqz p3, :cond_b

    .line 174
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    # getter for: Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$400(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 176
    :cond_b
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    # getter for: Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$100(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 157
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    # getter for: Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$300(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->mStopTrackingTouch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 161
    :goto_13
    return-void

    .line 159
    :cond_14
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z
    invoke-static {v0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$102(Lcom/android/internal/app/MediaRouteControllerDialog;Z)Z

    goto :goto_13
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    # getter for: Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$300(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->mStopTrackingTouch:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    return-void
.end method
