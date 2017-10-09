.class Lcom/android/server/accessibility/AccessibilityManagerService$7$1;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$7;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$7;

.field final synthetic val$checkScreenCurtain:I


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$7;I)V
    .registers 3

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$7;

    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->val$checkScreenCurtain:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1228
    const-string v0, ""

    .line 1229
    .local v0, "descriptionText":Ljava/lang/String;
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->val$checkScreenCurtain:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 1230
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$7;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040774

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1235
    :cond_16
    :goto_16
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$7;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->curtainModeWarning(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;)V

    .line 1236
    return-void

    .line 1232
    :cond_1e
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->val$checkScreenCurtain:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    .line 1233
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$7;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040775

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method
