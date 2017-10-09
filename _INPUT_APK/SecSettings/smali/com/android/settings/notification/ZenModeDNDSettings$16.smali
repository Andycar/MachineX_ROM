.class Lcom/android/settings/notification/ZenModeDNDSettings$16;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeDNDSettings;->showConditionSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

.field final synthetic val$oldSettingsValue:I


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeDNDSettings;I)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$16;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    iput p2, p0, Lcom/android/settings/notification/ZenModeDNDSettings$16;->val$oldSettingsValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$16;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    iget v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$16;->val$oldSettingsValue:I

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->cancelDialog(I)V

    .line 737
    return-void
.end method
