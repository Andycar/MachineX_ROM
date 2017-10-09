.class Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneWindowListener;
.super Ljava/lang/Object;
.source "SubPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SubPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubPhoneWindowListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SubPhoneWindow;)V
    .registers 2

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 364
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 368
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 380
    const/4 v0, 0x0

    .line 382
    :goto_8
    return v0

    :pswitch_9
    const/4 v0, 0x1

    goto :goto_8

    .line 368
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method
