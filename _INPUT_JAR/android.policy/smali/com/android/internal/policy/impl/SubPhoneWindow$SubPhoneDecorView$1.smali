.class Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView$1;
.super Ljava/lang/Object;
.source "SubPhoneWindow.java"

# interfaces
.implements Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->initResizeHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;)V
    .registers 2

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView$1;->this$1:Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResizeFinish(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 297
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->appWidth:I

    if-eq v1, v2, :cond_21

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->appHeight:I

    if-ne v1, v2, :cond_45

    .line 299
    :cond_21
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView$1;->this$1:Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SubPhoneWindow;->access$000(Lcom/android/internal/policy/impl/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 300
    .local v0, "tempStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 301
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView$1;->this$1:Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SubPhoneWindow;->access$800(Lcom/android/internal/policy/impl/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView$1;->this$1:Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/SubPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SubPhoneWindow;->access$700(Lcom/android/internal/policy/impl/SubPhoneWindow;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 305
    .end local v0    # "tempStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_44
    return-void

    .line 303
    :cond_45
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView$1;->this$1:Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SubPhoneWindow;->access$800(Lcom/android/internal/policy/impl/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView$1;->this$1:Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/SubPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SubPhoneWindow;->access$700(Lcom/android/internal/policy/impl/SubPhoneWindow;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    goto :goto_44
.end method
