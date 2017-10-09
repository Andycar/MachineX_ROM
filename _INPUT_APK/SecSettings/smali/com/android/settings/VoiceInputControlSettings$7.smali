.class Lcom/android/settings/VoiceInputControlSettings$7;
.super Ljava/lang/Object;
.source "VoiceInputControlSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 368
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlSettings$7;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 371
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 372
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 373
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings$7;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    invoke-static {v1}, Lcom/android/settings/VoiceInputControlSettings;->access$600(Lcom/android/settings/VoiceInputControlSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 374
    const/4 v0, 0x1

    .line 376
    :cond_0
    return v0
.end method
