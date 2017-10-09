.class Lcom/android/settings/PenDetachmentOption$2;
.super Ljava/lang/Object;
.source "PenDetachmentOption.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PenDetachmentOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenDetachmentOption;


# direct methods
.method constructor <init>(Lcom/android/settings/PenDetachmentOption;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/PenDetachmentOption$2;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/PenDetachmentOption$2;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-static {v0}, Lcom/android/settings/PenDetachmentOption;->access$300(Lcom/android/settings/PenDetachmentOption;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 152
    return v1

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/PenDetachmentOption$2;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-static {v0}, Lcom/android/settings/PenDetachmentOption;->access$200(Lcom/android/settings/PenDetachmentOption;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/settings/PenDetachmentOption$2;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-static {v0}, Lcom/android/settings/PenDetachmentOption;->access$200(Lcom/android/settings/PenDetachmentOption;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
