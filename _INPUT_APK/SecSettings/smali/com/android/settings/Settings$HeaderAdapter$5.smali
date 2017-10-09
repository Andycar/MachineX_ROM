.class Lcom/android/settings/Settings$HeaderAdapter$5;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Settings$HeaderAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/Settings$HeaderAdapter;)V
    .locals 0

    .prologue
    .line 5172
    iput-object p1, p0, Lcom/android/settings/Settings$HeaderAdapter$5;->this$0:Lcom/android/settings/Settings$HeaderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 5176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter$5;->this$0:Lcom/android/settings/Settings$HeaderAdapter;

    invoke-static {v0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->access$400(Lcom/android/settings/Settings$HeaderAdapter;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5177
    monitor-exit p0

    return-void

    .line 5176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
