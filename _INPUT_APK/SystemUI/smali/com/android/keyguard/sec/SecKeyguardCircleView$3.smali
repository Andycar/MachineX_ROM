.class Lcom/android/keyguard/sec/SecKeyguardCircleView$3;
.super Landroid/view/OrientationEventListener;
.source "SecKeyguardCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardCircleView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 158
    const-string v0, "SecKeyguardCircleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/16 v0, 0x145

    if-ge p1, v0, :cond_0

    const/16 v0, 0x23

    if-le v0, p1, :cond_2

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->rotateIcon(I)V

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    const/16 v0, 0x37

    if-lt p1, v0, :cond_3

    const/16 v0, 0x7d

    if-le v0, p1, :cond_3

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->access$200(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    const/16 v1, 0x10e

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->rotateIcon(I)V

    goto :goto_0

    .line 164
    :cond_3
    const/16 v0, 0x91

    if-lt p1, v0, :cond_4

    const/16 v0, 0xd7

    if-le v0, p1, :cond_4

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->access$200(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->rotateIcon(I)V

    goto :goto_0

    .line 167
    :cond_4
    const/16 v0, 0xeb

    if-lt p1, v0, :cond_1

    const/16 v0, 0x131

    if-le v0, p1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->access$200(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->rotateIcon(I)V

    goto :goto_0
.end method
