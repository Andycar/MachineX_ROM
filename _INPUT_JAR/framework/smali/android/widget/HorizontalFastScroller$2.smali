.class Landroid/widget/HorizontalFastScroller$2;
.super Ljava/lang/Object;
.source "HorizontalFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HorizontalFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/HorizontalFastScroller;


# direct methods
.method constructor <init>(Landroid/widget/HorizontalFastScroller;)V
    .registers 2

    .prologue
    .line 234
    iput-object p1, p0, Landroid/widget/HorizontalFastScroller$2;->this$0:Landroid/widget/HorizontalFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller$2;->this$0:Landroid/widget/HorizontalFastScroller;

    const/4 v1, 0x0

    # invokes: Landroid/widget/HorizontalFastScroller;->setState(I)V
    invoke-static {v0, v1}, Landroid/widget/HorizontalFastScroller;->access$600(Landroid/widget/HorizontalFastScroller;I)V

    .line 238
    return-void
.end method
