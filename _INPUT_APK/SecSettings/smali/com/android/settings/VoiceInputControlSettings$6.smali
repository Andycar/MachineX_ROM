.class Lcom/android/settings/VoiceInputControlSettings$6;
.super Ljava/lang/Object;
.source "VoiceInputControlSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/VoiceInputControlSettings;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VoiceInputControlSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/VoiceInputControlSettings;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlSettings$6;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$6;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    invoke-static {v0}, Lcom/android/settings/VoiceInputControlSettings;->access$700(Lcom/android/settings/VoiceInputControlSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$6;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    invoke-static {v0}, Lcom/android/settings/VoiceInputControlSettings;->access$700(Lcom/android/settings/VoiceInputControlSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$6;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/VoiceInputControlSettings;->access$802(Lcom/android/settings/VoiceInputControlSettings;Z)Z

    .line 365
    return-void
.end method
