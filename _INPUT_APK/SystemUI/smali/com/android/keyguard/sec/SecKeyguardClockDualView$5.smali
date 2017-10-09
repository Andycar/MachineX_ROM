.class Lcom/android/keyguard/sec/SecKeyguardClockDualView$5;
.super Ljava/lang/Object;
.source "SecKeyguardClockDualView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardClockDualView;->addTextChangedListenerForClockTimeMargin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 408
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const/4 v4, 0x0

    .line 393
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$700(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Lcom/android/keyguard/sec/SecKeyguardTextClock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 394
    .local v1, "lpRoaming":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$800(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDualClockSize(Landroid/content/Context;)I

    move-result v0

    .line 396
    .local v0, "fontSize":I
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$700(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Lcom/android/keyguard/sec/SecKeyguardTextClock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->isFirstDigitOne()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    int-to-float v2, v0

    const/high16 v3, 0x41700000    # 15.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 402
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$700(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Lcom/android/keyguard/sec/SecKeyguardTextClock;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$700(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Lcom/android/keyguard/sec/SecKeyguardTextClock;

    move-result-object v2

    int-to-float v3, v0

    invoke-virtual {v2, v4, v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    .line 404
    return-void

    .line 399
    :cond_0
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 388
    return-void
.end method
