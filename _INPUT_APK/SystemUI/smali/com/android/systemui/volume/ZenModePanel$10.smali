.class Lcom/android/systemui/volume/ZenModePanel$10;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Lcom/android/systemui/volume/Interaction$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteraction()V
    .locals 2

    .prologue
    .line 1112
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ZenModePanel"

    const-string v1, "fireInteraction.. call onInteraction #3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$2600(Lcom/android/systemui/volume/ZenModePanel;)V

    .line 1114
    return-void
.end method
