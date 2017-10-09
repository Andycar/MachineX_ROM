.class Lcom/android/settings/Password$1;
.super Ljava/lang/Object;
.source "Password.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/Password;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Password;


# direct methods
.method constructor <init>(Lcom/android/settings/Password;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings/Password$1;->this$0:Lcom/android/settings/Password;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v6, 0x19

    const/16 v5, 0x18

    const/16 v4, 0x14

    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 94
    if-eq p2, v4, :cond_1

    const/16 v1, 0x43

    if-eq p2, v1, :cond_1

    if-eq p2, v3, :cond_1

    if-eq p2, v6, :cond_1

    if-eq p2, v5, :cond_1

    iget-object v1, p0, Lcom/android/settings/Password$1;->this$0:Lcom/android/settings/Password;

    invoke-static {v1}, Lcom/android/settings/Password;->access$000(Lcom/android/settings/Password;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    if-eq p2, v4, :cond_2

    const/16 v1, 0x43

    if-eq p2, v1, :cond_2

    if-eq p2, v3, :cond_2

    if-eq p2, v6, :cond_2

    if-eq p2, v5, :cond_2

    const/4 v1, 0x7

    if-lt p2, v1, :cond_0

    const/16 v1, 0x10

    if-gt p2, v1, :cond_0

    .line 100
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
