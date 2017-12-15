.class Landroid/widget/TimePickerClockDelegate$3;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 207
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 210
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mIsAm:Z
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->access$000(Landroid/widget/TimePickerClockDelegate;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_e
    # setter for: Landroid/widget/TimePickerClockDelegate;->mIsAm:Z
    invoke-static {v1, v0}, Landroid/widget/TimePickerClockDelegate;->access$002(Landroid/widget/TimePickerClockDelegate;Z)Z

    .line 211
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    # invokes: Landroid/widget/TimePickerClockDelegate;->updateAmPmControl()V
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->access$100(Landroid/widget/TimePickerClockDelegate;)V

    .line 212
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    # invokes: Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->access$200(Landroid/widget/TimePickerClockDelegate;)V

    .line 213
    return-void

    .line 210
    :cond_1c
    const/4 v0, 0x0

    goto :goto_e
.end method
