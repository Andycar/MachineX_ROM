.class Lcom/android/settings/VoiceInputControlEnabler$3;
.super Ljava/lang/Object;
.source "VoiceInputControlEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/VoiceInputControlEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VoiceInputControlEnabler;

.field final synthetic val$check:Landroid/widget/CheckBox;

.field final synthetic val$voiceInputControl:Lcom/android/settings/VoiceInputControlSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/VoiceInputControlEnabler;Landroid/widget/CheckBox;Lcom/android/settings/VoiceInputControlSettings;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlEnabler$3;->this$0:Lcom/android/settings/VoiceInputControlEnabler;

    iput-object p2, p0, Lcom/android/settings/VoiceInputControlEnabler$3;->val$check:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/settings/VoiceInputControlEnabler$3;->val$voiceInputControl:Lcom/android/settings/VoiceInputControlSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler$3;->val$check:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler$3;->this$0:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-static {v0}, Lcom/android/settings/VoiceInputControlEnabler;->access$100(Lcom/android/settings/VoiceInputControlEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voiceinputcontrol_showNeverAgain"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler$3;->val$voiceInputControl:Lcom/android/settings/VoiceInputControlSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler$3;->val$voiceInputControl:Lcom/android/settings/VoiceInputControlSettings;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlSettings;->isFromHelpApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler$3;->val$voiceInputControl:Lcom/android/settings/VoiceInputControlSettings;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlSettings;->getHelpHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 237
    :cond_1
    return-void
.end method
