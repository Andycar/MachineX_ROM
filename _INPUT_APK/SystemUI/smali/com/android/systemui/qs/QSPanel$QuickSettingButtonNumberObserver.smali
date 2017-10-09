.class Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;
.super Landroid/database/ContentObserver;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickSettingButtonNumberObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1

    .prologue
    .line 795
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/qs/QSPanel;

    .line 796
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 797
    invoke-static {p1}, Lcom/android/systemui/qs/QSPanel;->access$1200(Lcom/android/systemui/qs/QSPanel;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/qs/QSPanel;->access$1102(Lcom/android/systemui/qs/QSPanel;I)I

    .line 798
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 802
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 803
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanel;->access$1200(Lcom/android/systemui/qs/QSPanel;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSPanel;->access$1102(Lcom/android/systemui/qs/QSPanel;I)I

    .line 804
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanel;->access$1300(Lcom/android/systemui/qs/QSPanel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setSingleLine(Z)I

    .line 805
    return-void
.end method
