.class Landroid/widget/TimePickerClockDelegate$5;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePickerClockDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerClockDelegate;)V
    .registers 2

    .prologue
    .line 244
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$5;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 251
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 248
    :pswitch_9
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$5;->this$0:Landroid/widget/TimePickerClockDelegate;

    # invokes: Landroid/widget/TimePickerClockDelegate;->updateInputState()V
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->access$300(Landroid/widget/TimePickerClockDelegate;)V

    goto :goto_7

    .line 246
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
