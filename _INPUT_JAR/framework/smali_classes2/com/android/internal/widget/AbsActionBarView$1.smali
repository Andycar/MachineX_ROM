.class Lcom/android/internal/widget/AbsActionBarView$1;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/AbsActionBarView;->postShowOverflowMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/AbsActionBarView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/AbsActionBarView;)V
    .registers 2

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView$1;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView$1;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/AbsActionBarView;->showOverflowMenu()Z

    .line 213
    return-void
.end method
