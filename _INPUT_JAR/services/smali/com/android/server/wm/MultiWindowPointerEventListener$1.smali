.class Lcom/android/server/wm/MultiWindowPointerEventListener$1;
.super Ljava/lang/Object;
.source "MultiWindowPointerEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MultiWindowPointerEventListener;->dismissGuide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MultiWindowPointerEventListener;)V
    .registers 2

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$1;->this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$1;->this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    # getter for: Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;
    invoke-static {v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->access$000(Lcom/android/server/wm/MultiWindowPointerEventListener;)Lcom/samsung/android/multiwindow/ui/GuideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    .line 248
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$1;->this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    # setter for: Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I
    invoke-static {v0, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->access$102(Lcom/android/server/wm/MultiWindowPointerEventListener;I)I

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$1;->this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    # setter for: Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z
    invoke-static {v0, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->access$202(Lcom/android/server/wm/MultiWindowPointerEventListener;Z)Z

    .line 250
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$1;->this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    # setter for: Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z
    invoke-static {v0, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->access$302(Lcom/android/server/wm/MultiWindowPointerEventListener;Z)Z

    .line 251
    return-void
.end method
