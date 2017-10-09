.class Lcom/android/internal/policy/impl/EnableAccessibilityController$1;
.super Landroid/os/Handler;
.source "EnableAccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/EnableAccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/EnableAccessibilityController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/EnableAccessibilityController;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController$1;->this$0:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 63
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_5c

    .line 79
    :goto_7
    return-void

    .line 65
    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController$1;->this$0:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    # getter for: Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->access$000(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040609

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController$1;->this$0:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    # getter for: Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->access$100(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_7

    .line 69
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_1f
    iget-object v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController$1;->this$0:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    # getter for: Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->access$000(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x104060b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .restart local v0    # "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController$1;->this$0:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    # getter for: Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->access$100(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_7

    .line 73
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_36
    iget-object v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController$1;->this$0:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    # invokes: Lcom/android/internal/policy/impl/EnableAccessibilityController;->enableAccessibility()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->access$200(Lcom/android/internal/policy/impl/EnableAccessibilityController;)V

    .line 74
    iget-object v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController$1;->this$0:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    # getter for: Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;
    invoke-static {v1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->access$300(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 75
    iget-object v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController$1;->this$0:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    # getter for: Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->access$100(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController$1;->this$0:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    # getter for: Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->access$000(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x104060a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_7

    .line 63
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_1f
        :pswitch_36
    .end packed-switch
.end method
