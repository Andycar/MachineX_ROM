.class Landroid/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow$ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListPopupWindow$ForwardingListener;


# direct methods
.method private constructor <init>(Landroid/widget/ListPopupWindow$ForwardingListener;)V
    .registers 2

    .prologue
    .line 1470
    iput-object p1, p0, Landroid/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;->this$0:Landroid/widget/ListPopupWindow$ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListPopupWindow$ForwardingListener;Landroid/widget/ListPopupWindow$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/ListPopupWindow$ForwardingListener;
    .param p2, "x1"    # Landroid/widget/ListPopupWindow$1;

    .prologue
    .line 1470
    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;-><init>(Landroid/widget/ListPopupWindow$ForwardingListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1473
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;->this$0:Landroid/widget/ListPopupWindow$ForwardingListener;

    # invokes: Landroid/widget/ListPopupWindow$ForwardingListener;->onLongPress()V
    invoke-static {v0}, Landroid/widget/ListPopupWindow$ForwardingListener;->access$1000(Landroid/widget/ListPopupWindow$ForwardingListener;)V

    .line 1474
    return-void
.end method
