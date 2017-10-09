.class Lcom/android/systemui/qs/QSTile$2;
.super Ljava/lang/Object;
.source "QSTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSTile;->showTalkBackDisablePopup(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSTile;)V
    .locals 0

    .prologue
    .line 785
    .local p0, "this":Lcom/android/systemui/qs/QSTile$2;, "Lcom/android/systemui/qs/QSTile.2;"
    iput-object p1, p0, Lcom/android/systemui/qs/QSTile$2;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 787
    .local p0, "this":Lcom/android/systemui/qs/QSTile$2;, "Lcom/android/systemui/qs/QSTile.2;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile$2;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTile;->doPrevious()V

    .line 788
    return-void
.end method
