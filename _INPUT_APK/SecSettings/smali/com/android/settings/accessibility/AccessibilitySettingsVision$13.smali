.class Lcom/android/settings/accessibility/AccessibilitySettingsVision$13;
.super Ljava/lang/Object;
.source "AccessibilitySettingsVision.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsVision;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

.field final synthetic val$newValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$13;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$13;->val$newValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$13;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$13;->val$newValue:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$1900(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Ljava/lang/Object;)V

    .line 529
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$13;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$13;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$2000(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/android/settings/FontSizeListPreference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$2100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/preference/ListPreference;)V

    .line 530
    return-void
.end method
