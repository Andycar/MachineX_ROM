.class Lcom/android/systemui/qs/QSDetailItems$2;
.super Ljava/lang/Object;
.source "QSDetailItems.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetailItems;->bind(Lcom/android/systemui/qs/QSDetailItems$Item;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetailItems;

.field final synthetic val$item:Lcom/android/systemui/qs/QSDetailItems$Item;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$2;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetailItems$2;->val$item:Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$2;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->access$000(Lcom/android/systemui/qs/QSDetailItems;)Lcom/android/systemui/qs/QSDetailItems$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$2;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->access$000(Lcom/android/systemui/qs/QSDetailItems;)Lcom/android/systemui/qs/QSDetailItems$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems$2;->val$item:Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSDetailItems$Callback;->onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 189
    :cond_0
    return-void
.end method
