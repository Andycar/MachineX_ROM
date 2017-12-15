.class Landroid/widget/TimePickerClockDelegate$1;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


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
    .line 126
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .registers 7
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v2, 0xc

    const/16 v1, 0xb

    .line 131
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_27

    .line 132
    if-ne p2, v1, :cond_10

    if-eq p3, v2, :cond_14

    :cond_10
    if-ne p2, v2, :cond_27

    if-ne p3, v1, :cond_27

    .line 134
    :cond_14
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mIsAm:Z
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->access$000(Landroid/widget/TimePickerClockDelegate;)Z

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    :goto_1f
    # setter for: Landroid/widget/TimePickerClockDelegate;->mIsAm:Z
    invoke-static {v1, v0}, Landroid/widget/TimePickerClockDelegate;->access$002(Landroid/widget/TimePickerClockDelegate;Z)Z

    .line 135
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    # invokes: Landroid/widget/TimePickerClockDelegate;->updateAmPmControl()V
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->access$100(Landroid/widget/TimePickerClockDelegate;)V

    .line 138
    :cond_27
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    # invokes: Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->access$200(Landroid/widget/TimePickerClockDelegate;)V

    .line 139
    return-void

    .line 134
    :cond_2d
    const/4 v0, 0x0

    goto :goto_1f
.end method
