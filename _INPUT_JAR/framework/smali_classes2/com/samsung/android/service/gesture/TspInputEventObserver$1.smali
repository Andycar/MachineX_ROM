.class Lcom/samsung/android/service/gesture/TspInputEventObserver$1;
.super Ljava/lang/Object;
.source "TspInputEventObserver.java"

# interfaces
.implements Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/service/gesture/TspInputEventObserver;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/service/gesture/TspInputEventObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/service/gesture/TspInputEventObserver;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/service/gesture/TspInputEventObserver$1;->this$0:Lcom/samsung/android/service/gesture/TspInputEventObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/service/gesture/TspInputEventObserver$1;->this$0:Lcom/samsung/android/service/gesture/TspInputEventObserver;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/service/gesture/TspInputEventObserver;->mConnected:Z
    invoke-static {v0, v1}, Lcom/samsung/android/service/gesture/TspInputEventObserver;->access$002(Lcom/samsung/android/service/gesture/TspInputEventObserver;Z)Z

    .line 50
    return-void
.end method

.method public onServiceDisconnected()V
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/service/gesture/TspInputEventObserver$1;->this$0:Lcom/samsung/android/service/gesture/TspInputEventObserver;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/service/gesture/TspInputEventObserver;->mConnected:Z
    invoke-static {v0, v1}, Lcom/samsung/android/service/gesture/TspInputEventObserver;->access$002(Lcom/samsung/android/service/gesture/TspInputEventObserver;Z)Z

    .line 45
    return-void
.end method
