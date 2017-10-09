.class Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$2;
.super Ljava/lang/Object;
.source "SecKeyguardCircleCameraView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->launchActivity(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method
