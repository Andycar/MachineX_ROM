.class Landroid/widget/HoverPopupWindow$4;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/HoverPopupWindow;->show(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/HoverPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/HoverPopupWindow;)V
    .registers 2

    .prologue
    .line 1070
    iput-object p1, p0, Landroid/widget/HoverPopupWindow$4;->this$0:Landroid/widget/HoverPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1072
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$4;->this$0:Landroid/widget/HoverPopupWindow;

    # invokes: Landroid/widget/HoverPopupWindow;->dismissPopup()V
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$1600(Landroid/widget/HoverPopupWindow;)V

    .line 1073
    return-void
.end method
