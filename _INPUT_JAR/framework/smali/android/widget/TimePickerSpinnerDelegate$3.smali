.class Landroid/widget/TimePickerSpinnerDelegate$3;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderAmPm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerSpinnerDelegate;)V
    .registers 2

    .prologue
    .line 279
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$3;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 282
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$3;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # invokes: Landroid/widget/TimePickerSpinnerDelegate;->tryVibrate()V
    invoke-static {v1}, Landroid/widget/TimePickerSpinnerDelegate;->access$100(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 283
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$3;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;
    invoke-static {v1}, Landroid/widget/TimePickerSpinnerDelegate;->access$200(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/RadialTimePickerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getAmOrPm()I

    move-result v0

    .line 284
    .local v0, "amOrPm":I
    if-nez v0, :cond_21

    .line 285
    const/4 v0, 0x1

    .line 289
    :cond_12
    :goto_12
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$3;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # invokes: Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmDisplay(I)V
    invoke-static {v1, v0}, Landroid/widget/TimePickerSpinnerDelegate;->access$300(Landroid/widget/TimePickerSpinnerDelegate;I)V

    .line 290
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$3;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;
    invoke-static {v1}, Landroid/widget/TimePickerSpinnerDelegate;->access$200(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/RadialTimePickerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)V

    .line 291
    return-void

    .line 286
    :cond_21
    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 287
    const/4 v0, 0x0

    goto :goto_12
.end method
