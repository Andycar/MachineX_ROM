.class Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;
.super Ljava/lang/Object;
.source "DirectAccessActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->onTalkbackModeChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

.field final synthetic val$TalkbackEvent:Landroid/view/accessibility/AccessibilityEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    iput-object p2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;->val$TalkbackEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const v5, 0x7f0a0b09

    .line 435
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-static {v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$000(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 436
    .local v2, "mToast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;->val$TalkbackEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v3, v4}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 437
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-static {v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$000(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "descriptionText":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;->val$TalkbackEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-static {}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$400()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    :try_start_0
    invoke-static {}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$400()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;->val$TalkbackEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;->val$TalkbackEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v1

    .line 444
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    :try_start_3
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;->val$TalkbackEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 448
    :catch_1
    move-exception v3

    goto :goto_0

    .line 446
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v3

    .line 447
    :try_start_4
    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;->val$TalkbackEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    .line 450
    :goto_1
    throw v3

    .line 448
    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_0
.end method
