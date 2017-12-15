.class final Landroid/view/View$PerformClick;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerformClick"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 20923
    iput-object p1, p0, Landroid/view/View$PerformClick;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/view/View$1;

    .prologue
    .line 20923
    invoke-direct {p0, p1}, Landroid/view/View$PerformClick;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 20926
    iget-object v0, p0, Landroid/view/View$PerformClick;->this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 20927
    return-void
.end method
