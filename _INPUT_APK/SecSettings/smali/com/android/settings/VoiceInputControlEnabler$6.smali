.class Lcom/android/settings/VoiceInputControlEnabler$6;
.super Landroid/os/Handler;
.source "VoiceInputControlEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VoiceInputControlEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VoiceInputControlEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/VoiceInputControlEnabler;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlEnabler$6;->this$0:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler$6;->this$0:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-static {v0}, Lcom/android/settings/VoiceInputControlEnabler;->access$200(Lcom/android/settings/VoiceInputControlEnabler;)V

    .line 288
    return-void
.end method
