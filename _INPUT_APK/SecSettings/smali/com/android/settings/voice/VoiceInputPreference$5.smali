.class Lcom/android/settings/voice/VoiceInputPreference$5;
.super Ljava/lang/Object;
.source "VoiceInputPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/voice/VoiceInputPreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/voice/VoiceInputPreference;

.field final synthetic val$buttonView:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/android/settings/voice/VoiceInputPreference;Landroid/widget/CompoundButton;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/settings/voice/VoiceInputPreference$5;->this$0:Lcom/android/settings/voice/VoiceInputPreference;

    iput-object p2, p0, Lcom/android/settings/voice/VoiceInputPreference$5;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference$5;->this$0:Lcom/android/settings/voice/VoiceInputPreference;

    iget-object v1, p0, Lcom/android/settings/voice/VoiceInputPreference$5;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Lcom/android/settings/voice/VoiceInputPreference;->makeCurrentChecked(Landroid/widget/Checkable;)V

    .line 192
    return-void
.end method
