.class public Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;
.super Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
.source "MSimKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MSimKeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MSimStateMachine"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPukView;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "msg":I
    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    if-nez v1, :cond_3

    .line 81
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->checkPuk()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    iput v4, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    .line 83
    sget v0, Lcom/android/keyguard/R$string;->kg_puk_enter_pin_hint:I

    .line 104
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/MSimKeyguardSimPukView;->resetPasswordText(Z)V

    .line 105
    if-eqz v0, :cond_1

    .line 106
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getSecurityMessageDisplay(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-static {v3}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$000(Lcom/android/keyguard/MSimKeyguardSimPukView;)I

    move-result v3

    invoke-interface {v1, v2, v3, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;IZ)V

    .line 108
    :cond_1
    return-void

    .line 85
    :cond_2
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_sim_puk_hint:I

    goto :goto_0

    .line 87
    :cond_3
    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    if-ne v1, v4, :cond_5

    .line 88
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->checkPin()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 89
    iput v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    .line 90
    sget v0, Lcom/android/keyguard/R$string;->kg_enter_confirm_pin_hint:I

    goto :goto_0

    .line 92
    :cond_4
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_sim_pin_hint:I

    goto :goto_0

    .line 94
    :cond_5
    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    if-ne v1, v2, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 96
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    .line 97
    sget v0, Lcom/android/keyguard/R$string;->keyguard_sim_unlock_progress_dialog_message:I

    .line 98
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->updateSim()V

    goto :goto_0

    .line 100
    :cond_6
    iput v4, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    .line 101
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_confirm_pin_hint:I

    goto :goto_0
.end method

.method reset()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mPinText:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mPukText:Ljava/lang/String;

    .line 113
    iput v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$100(Lcom/android/keyguard/MSimKeyguardSimPukView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_invalid_puk:I

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-static {v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$000(Lcom/android/keyguard/MSimKeyguardSimPukView;)I

    move-result v2

    invoke-interface {v0, v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IIZ)V

    .line 116
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-static {v0, v3}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$102(Lcom/android/keyguard/MSimKeyguardSimPukView;Z)Z

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    .line 125
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$200(Lcom/android/keyguard/MSimKeyguardSimPukView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x1040842

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-static {v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$000(Lcom/android/keyguard/MSimKeyguardSimPukView;)I

    move-result v2

    invoke-interface {v0, v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IIZ)V

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-static {v0, v3}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$202(Lcom/android/keyguard/MSimKeyguardSimPukView;Z)Z

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_puk_enter_puk_hint:I

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-static {v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$000(Lcom/android/keyguard/MSimKeyguardSimPukView;)I

    move-result v2

    invoke-interface {v0, v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IIZ)V

    goto :goto_0
.end method
