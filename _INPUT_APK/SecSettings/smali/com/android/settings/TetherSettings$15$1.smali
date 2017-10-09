.class Lcom/android/settings/TetherSettings$15$1;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings$15;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/TetherSettings$15;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings$15;)V
    .locals 0

    .prologue
    .line 1628
    iput-object p1, p0, Lcom/android/settings/TetherSettings$15$1;->this$1:Lcom/android/settings/TetherSettings$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1630
    const-string v0, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1631
    iget-object v0, p0, Lcom/android/settings/TetherSettings$15$1;->this$1:Lcom/android/settings/TetherSettings$15;

    iget-object v0, v0, Lcom/android/settings/TetherSettings$15;->this$0:Lcom/android/settings/TetherSettings;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    .line 1636
    :goto_0
    return-void

    .line 1634
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings$15$1;->this$1:Lcom/android/settings/TetherSettings$15;

    iget-object v0, v0, Lcom/android/settings/TetherSettings$15;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->access$700(Lcom/android/settings/TetherSettings;I)V

    goto :goto_0
.end method
