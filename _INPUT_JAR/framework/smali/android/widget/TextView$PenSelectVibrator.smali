.class Landroid/widget/TextView$PenSelectVibrator;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PenSelectVibrator"
.end annotation


# static fields
.field public static final VIB_COPY:I = 0x2

.field public static final VIB_CURSOR_MOVE:I = 0x1

.field public static final VIB_PASTE:I = 0x3


# instance fields
.field hasPermission:Z

.field isHapticFeedbackEnabled:Z

.field private mIvtCopy:[B

.field private mIvtCursorMove:[B

.field private mIvtPaste:[B

.field private mVibrator:Landroid/os/SystemVibrator;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 5

    .prologue
    const/16 v2, 0x24

    const/4 v1, 0x0

    .line 12359
    iput-object p1, p0, Landroid/widget/TextView$PenSelectVibrator;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12325
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    .line 12326
    iput-boolean v1, p0, Landroid/widget/TextView$PenSelectVibrator;->isHapticFeedbackEnabled:Z

    .line 12327
    iput-boolean v1, p0, Landroid/widget/TextView$PenSelectVibrator;->hasPermission:Z

    .line 12333
    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_3a

    iput-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mIvtCursorMove:[B

    .line 12341
    new-array v0, v2, [B

    fill-array-data v0, :array_4e

    iput-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mIvtCopy:[B

    .line 12350
    new-array v0, v2, [B

    fill-array-data v0, :array_64

    iput-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mIvtPaste:[B

    .line 12360
    iget-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v0, :cond_39

    .line 12361
    # getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/TextView;->access$2100(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    .line 12363
    :cond_39
    return-void

    .line 12333
    :array_3a
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

    .line 12341
    nop

    :array_4e
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x1ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0x1t
        0x30t
        0x77t
        0x0t
        0xbt
        0x0t
        0x0t
        0x7ft
        0x0t
        0x20t
        0x8t
        0x0t
        0x0t
        0xdt
        0x0t
        0x0t
        -0x7et
        0x0t
    .end array-data

    .line 12350
    :array_64
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x1ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0x1t
        0x30t
        0xat
        0x0t
        0xdt
        0x0t
        0x64t
        0x7ft
        0x0t
        0x20t
        0x8t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        -0x7et
        0x0t
    .end array-data
.end method


# virtual methods
.method playVibrator(I)V
    .registers 6
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 12366
    iget-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v0, :cond_17

    .line 12367
    iget-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/TextView;->access$2200(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    .line 12370
    :cond_17
    iget-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/TextView;->access$2300(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "spen_feedback_haptic"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5d

    iget-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/TextView;->access$2400(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "spen_feedback_haptic_pen_gesture"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5d

    move v0, v1

    :goto_3e
    iput-boolean v0, p0, Landroid/widget/TextView$PenSelectVibrator;->isHapticFeedbackEnabled:Z

    .line 12373
    iget-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/TextView;->access$2500(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.VIBRATE"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4f

    move v2, v1

    :cond_4f
    iput-boolean v2, p0, Landroid/widget/TextView$PenSelectVibrator;->hasPermission:Z

    .line 12375
    iget-boolean v0, p0, Landroid/widget/TextView$PenSelectVibrator;->isHapticFeedbackEnabled:Z

    if-ne v0, v1, :cond_5c

    iget-boolean v0, p0, Landroid/widget/TextView$PenSelectVibrator;->hasPermission:Z

    if-ne v0, v1, :cond_5c

    .line 12376
    packed-switch p1, :pswitch_data_78

    .line 12393
    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    move v0, v2

    .line 12370
    goto :goto_3e

    .line 12378
    :pswitch_5f
    iget-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Landroid/widget/TextView$PenSelectVibrator;->mIvtCursorMove:[B

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateImmVibe([B)V

    goto :goto_5c

    .line 12382
    :pswitch_67
    iget-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Landroid/widget/TextView$PenSelectVibrator;->mIvtCopy:[B

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateImmVibe([B)V

    goto :goto_5c

    .line 12386
    :pswitch_6f
    iget-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Landroid/widget/TextView$PenSelectVibrator;->mIvtPaste:[B

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateImmVibe([B)V

    goto :goto_5c

    .line 12376
    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_67
        :pswitch_6f
    .end packed-switch
.end method
