.class Lcom/android/settings/notification/ZenModeAllowException$8;
.super Ljava/lang/Object;
.source "ZenModeAllowException.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$zenModeConditionSelection:Lcom/android/settings/notification/ZenModeConditionSelection;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeAllowException;Lcom/android/settings/notification/ZenModeConditionSelection;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAllowException$8;->this$0:Lcom/android/settings/notification/ZenModeAllowException;

    iput-object p2, p0, Lcom/android/settings/notification/ZenModeAllowException$8;->val$zenModeConditionSelection:Lcom/android/settings/notification/ZenModeConditionSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException$8;->val$zenModeConditionSelection:Lcom/android/settings/notification/ZenModeConditionSelection;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeConditionSelection;->confirmCondition()V

    .line 385
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException$8;->this$0:Lcom/android/settings/notification/ZenModeAllowException;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenModeAllowException;->access$302(Lcom/android/settings/notification/ZenModeAllowException;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 386
    return-void
.end method
