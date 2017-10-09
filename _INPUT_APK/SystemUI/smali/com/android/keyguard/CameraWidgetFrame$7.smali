.class Lcom/android/keyguard/CameraWidgetFrame$7;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "CameraWidgetFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CameraWidgetFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mShowing:Z

.field final synthetic this$0:Lcom/android/keyguard/CameraWidgetFrame;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/keyguard/CameraWidgetFrame$7;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame$7;->mShowing:Z

    if-ne v0, p1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/CameraWidgetFrame$7;->mShowing:Z

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame$7;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    iget-boolean v1, p0, Lcom/android/keyguard/CameraWidgetFrame$7;->mShowing:Z

    invoke-static {v0, v1}, Lcom/android/keyguard/CameraWidgetFrame;->access$1100(Lcom/android/keyguard/CameraWidgetFrame;Z)V

    goto :goto_0
.end method
