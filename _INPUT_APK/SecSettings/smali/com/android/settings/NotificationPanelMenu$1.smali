.class Lcom/android/settings/NotificationPanelMenu$1;
.super Ljava/lang/Object;
.source "NotificationPanelMenu.java"

# interfaces
.implements Lcom/android/settings/NotificationPanelLayout$OnNumOfAvailableButtonsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationPanelMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationPanelMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationPanelMenu;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu$1;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumOfAvailableButtonsChanged(I)V
    .locals 2
    .param p1, "num_of_available_buttons"    # I

    .prologue
    .line 189
    const-string v0, "NotificationPanelMenu"

    const-string v1, "onNumOfAvailableButtonsChanged()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu$1;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v0}, Lcom/android/settings/NotificationPanelMenu;->access$000(Lcom/android/settings/NotificationPanelMenu;)V

    .line 191
    return-void
.end method
