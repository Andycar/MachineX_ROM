.class Lcom/android/settings/accessibility/AccessibilitySettingsHearing$14;
.super Ljava/lang/Object;
.source "AccessibilitySettingsHearing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$14;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

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
    const/4 v1, 0x0

    .line 754
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 755
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 756
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$14;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$1600(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 758
    :cond_0
    return v1
.end method
