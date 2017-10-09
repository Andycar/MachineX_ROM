.class Lcom/android/settings/voice/VoiceInputPreference$1;
.super Ljava/lang/Object;
.source "VoiceInputPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/voice/VoiceInputPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/voice/VoiceInputPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/voice/VoiceInputPreference;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/voice/VoiceInputPreference$1;->this$0:Lcom/android/settings/voice/VoiceInputPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference$1;->this$0:Lcom/android/settings/voice/VoiceInputPreference;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/voice/VoiceInputPreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V

    .line 67
    return-void
.end method
