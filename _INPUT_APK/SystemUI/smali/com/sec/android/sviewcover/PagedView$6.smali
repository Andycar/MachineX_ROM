.class Lcom/sec/android/sviewcover/PagedView$6;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/PagedView;->endReordering()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/PagedView;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/PagedView;)V
    .locals 0

    .prologue
    .line 2295
    iput-object p1, p0, Lcom/sec/android/sviewcover/PagedView$6;->this$0:Lcom/sec/android/sviewcover/PagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView$6;->this$0:Lcom/sec/android/sviewcover/PagedView;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/PagedView;->onEndReordering()V

    .line 2299
    return-void
.end method
