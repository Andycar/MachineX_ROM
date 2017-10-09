.class Lcom/android/settings/NotificationPanelMenu$8$2;
.super Ljava/lang/Object;
.source "NotificationPanelMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NotificationPanelMenu$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/NotificationPanelMenu$8;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationPanelMenu$8;)V
    .locals 0

    .prologue
    .line 1278
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu$8$2;->this$1:Lcom/android/settings/NotificationPanelMenu$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu$8$2;->this$1:Lcom/android/settings/NotificationPanelMenu$8;

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu$8;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v0}, Lcom/android/settings/NotificationPanelMenu;->access$1600(Lcom/android/settings/NotificationPanelMenu;)V

    .line 1282
    return-void
.end method
