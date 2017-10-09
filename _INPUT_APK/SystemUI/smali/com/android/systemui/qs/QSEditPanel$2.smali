.class Lcom/android/systemui/qs/QSEditPanel$2;
.super Ljava/lang/Object;
.source "QSEditPanel.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSEditPanel;->addTile(Lcom/android/systemui/qs/QSTile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSEditPanel;

.field final synthetic val$r:Lcom/android/systemui/qs/QSEditPanel$TileRecord;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$TileRecord;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel$2;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    iput-object p2, p0, Lcom/android/systemui/qs/QSEditPanel$2;->val$r:Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnnouncementRequested(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "announcement"    # Ljava/lang/CharSequence;

    .prologue
    .line 344
    return-void
.end method

.method public onScanStateChanged(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 339
    return-void
.end method

.method public onShowDetail(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 329
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 319
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;

    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel$2;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/qs/QSEditPanel$MessageObject;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 320
    .local v1, "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObject;
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel$2;->val$r:Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->key:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    .line 321
    iput-object p1, v1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 322
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel$2;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel;->access$200(Lcom/android/systemui/qs/QSEditPanel;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 323
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel$2;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel;->access$200(Lcom/android/systemui/qs/QSEditPanel;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 324
    return-void
.end method

.method public onToggleStateChanged(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 334
    return-void
.end method

.method public setTileFontSizeForApn(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 354
    return-void
.end method

.method public setTileViewSoundEffectsEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 349
    return-void
.end method
