.class Lcom/android/settings/notification/ZenModeSettings$14;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeSettings;->showConditionSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeSettings;

.field final synthetic val$zenModeConditionSelection:Lcom/android/settings/notification/ZenModeConditionSelection;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeSettings;Lcom/android/settings/notification/ZenModeConditionSelection;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$14;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    iput-object p2, p0, Lcom/android/settings/notification/ZenModeSettings$14;->val$zenModeConditionSelection:Lcom/android/settings/notification/ZenModeConditionSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$14;->val$zenModeConditionSelection:Lcom/android/settings/notification/ZenModeConditionSelection;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeConditionSelection;->confirmCondition()V

    .line 624
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$14;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenModeSettings;->access$1102(Lcom/android/settings/notification/ZenModeSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 625
    return-void
.end method
