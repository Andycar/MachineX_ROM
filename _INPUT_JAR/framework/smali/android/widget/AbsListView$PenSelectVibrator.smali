.class Landroid/widget/AbsListView$PenSelectVibrator;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PenSelectVibrator"
.end annotation


# instance fields
.field isHapticFeedbackEnabled:Z

.field private mIvt:[B

.field private mVibrator:Landroid/os/SystemVibrator;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .registers 4

    .prologue
    .line 9401
    iput-object p1, p0, Landroid/widget/AbsListView$PenSelectVibrator;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9390
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    .line 9391
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->isHapticFeedbackEnabled:Z

    .line 9393
    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_28

    iput-object v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->mIvt:[B

    .line 9402
    iget-object v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v0, :cond_27

    .line 9403
    # getter for: Landroid/widget/AbsListView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/AbsListView;->access$5200(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    .line 9405
    :cond_27
    return-void

    .line 9393
    :array_28
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x16t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x9t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0x2ft
        0x4dt
        -0x1t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x41t
        -0x7dt
        -0x4et
        0x0t
    .end array-data
.end method


# virtual methods
.method playVibrator()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 9408
    iget-object v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v0, :cond_17

    .line 9409
    iget-object v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5300(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    .line 9412
    :cond_17
    iget-object v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5400(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "spen_feedback_haptic_pen_gesture"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_47

    move v0, v1

    :goto_2b
    iput-boolean v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->isHapticFeedbackEnabled:Z

    .line 9414
    iget-boolean v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->isHapticFeedbackEnabled:Z

    if-ne v0, v1, :cond_46

    iget-object v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5500(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_46

    .line 9415
    iget-object v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Landroid/widget/AbsListView$PenSelectVibrator;->mIvt:[B

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateImmVibe([B)V

    .line 9417
    :cond_46
    return-void

    :cond_47
    move v0, v2

    .line 9412
    goto :goto_2b
.end method
