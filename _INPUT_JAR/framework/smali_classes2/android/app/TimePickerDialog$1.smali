.class Landroid/app/TimePickerDialog$1;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/widget/TimePicker$ValidationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/TimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/TimePickerDialog;


# direct methods
.method constructor <init>(Landroid/app/TimePickerDialog;)V
    .registers 2

    .prologue
    .line 245
    iput-object p1, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValidationChanged(Z)V
    .registers 5
    .param p1, "valid"    # Z

    .prologue
    .line 248
    iget-object v1, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/TimePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 249
    .local v0, "positive":Landroid/widget/Button;
    if-eqz v0, :cond_c

    .line 250
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 252
    :cond_c
    return-void
.end method
