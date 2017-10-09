.class Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$3;
.super Ljava/lang/Object;
.source "AccessibilityWidgetDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;->showDownloadDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$3;->this$0:Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 101
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity$3;->this$0:Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/AccessibilityWidgetDialogActivity;->finish()V

    .line 103
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
