.class Lcom/android/settings/accessibility/AccessibilitySettingsVision$1;
.super Ljava/lang/Object;
.source "AccessibilitySettingsVision.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsVision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$1;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$1;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$000(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$1;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    .line 172
    return-void
.end method
