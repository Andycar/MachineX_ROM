.class Landroid/widget/TimePickerClockDelegate$TwKeyListener;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwKeyListener"
.end annotation


# instance fields
.field private mNext:I

.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method public constructor <init>(Landroid/widget/TimePickerClockDelegate;I)V
    .registers 3
    .param p2, "next_id"    # I

    .prologue
    .line 941
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$TwKeyListener;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 942
    iput p2, p0, Landroid/widget/TimePickerClockDelegate$TwKeyListener;->mNext:I

    .line 943
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 946
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$TwKeyListener;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->TW_DEBUG:Z
    invoke-static {v3}, Landroid/widget/TimePickerClockDelegate;->access$1100(Landroid/widget/TimePickerClockDelegate;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "Picker"

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_13
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_1a

    .line 960
    :cond_19
    :goto_19
    return v1

    .line 949
    :cond_1a
    sparse-switch p2, :sswitch_data_32

    goto :goto_19

    .line 951
    :sswitch_1e
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$TwKeyListener;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v3, v3, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 952
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_19

    .end local v0    # "config":Landroid/content/res/Configuration;
    :sswitch_2f
    move v1, v2

    .line 958
    goto :goto_19

    .line 949
    nop

    :sswitch_data_32
    .sparse-switch
        0x17 -> :sswitch_1e
        0x3d -> :sswitch_2f
        0x42 -> :sswitch_2f
    .end sparse-switch
.end method
