.class Lcom/android/settings/notification/ZenModeAllowException$9;
.super Ljava/lang/Object;
.source "ZenModeAllowException.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeAllowException;->showConditionSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeAllowException;

.field final synthetic val$oldSettingsValue:I


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeAllowException;I)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAllowException$9;->this$0:Lcom/android/settings/notification/ZenModeAllowException;

    iput p2, p0, Lcom/android/settings/notification/ZenModeAllowException$9;->val$oldSettingsValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException$9;->this$0:Lcom/android/settings/notification/ZenModeAllowException;

    iget v1, p0, Lcom/android/settings/notification/ZenModeAllowException$9;->val$oldSettingsValue:I

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeAllowException;->cancelDialog(I)V

    .line 405
    return-void
.end method
