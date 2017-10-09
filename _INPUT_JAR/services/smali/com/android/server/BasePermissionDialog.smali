.class public Lcom/android/server/BasePermissionDialog;
.super Landroid/app/AlertDialog;
.source "BasePermissionDialog.java"


# instance fields
.field private mConsuming:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x20000

    .line 34
    const v1, 0x103047c

    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 74
    new-instance v1, Lcom/android/server/BasePermissionDialog$1;

    invoke-direct {v1, p0}, Lcom/android/server/BasePermissionDialog$1;-><init>(Lcom/android/server/BasePermissionDialog;)V

    iput-object v1, p0, Lcom/android/server/BasePermissionDialog;->mHandler:Landroid/os/Handler;

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/BasePermissionDialog;->mConsuming:Z

    .line 35
    invoke-virtual {p0}, Lcom/android/server/BasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 36
    invoke-virtual {p0}, Lcom/android/server/BasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 38
    invoke-virtual {p0}, Lcom/android/server/BasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 39
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "Permission Dialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/server/BasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 41
    const v1, 0x1010355

    invoke-virtual {p0, v1}, Lcom/android/server/BasePermissionDialog;->setIconAttribute(I)V

    .line 42
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/BasePermissionDialog;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BasePermissionDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/server/BasePermissionDialog;->mConsuming:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/BasePermissionDialog;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BasePermissionDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/BasePermissionDialog;->setEnabled(Z)V

    return-void
.end method

.method private setEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 60
    const v1, 0x1020019

    invoke-virtual {p0, v1}, Lcom/android/server/BasePermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 61
    .local v0, "b":Landroid/widget/Button;
    if-eqz v0, :cond_e

    .line 62
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 64
    :cond_e
    const v1, 0x102001a

    invoke-virtual {p0, v1}, Lcom/android/server/BasePermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "b":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 65
    .restart local v0    # "b":Landroid/widget/Button;
    if-eqz v0, :cond_1c

    .line 66
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    :cond_1c
    const v1, 0x102001b

    invoke-virtual {p0, v1}, Lcom/android/server/BasePermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "b":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 69
    .restart local v0    # "b":Landroid/widget/Button;
    if-eqz v0, :cond_2a

    .line 70
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 72
    :cond_2a
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/server/BasePermissionDialog;->mConsuming:Z

    if-eqz v0, :cond_6

    .line 53
    const/4 v0, 0x1

    .line 56
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public onStart()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 46
    invoke-direct {p0, v2}, Lcom/android/server/BasePermissionDialog;->setEnabled(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/server/BasePermissionDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BasePermissionDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 48
    return-void
.end method
